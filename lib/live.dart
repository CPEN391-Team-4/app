import 'dart:ffi';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:local_auth/local_auth.dart';
import 'package:my_app/protobuf/TrustPeople.pb.dart';
import 'protobuf/TrustPeople.pb.dart';
import 'protobuf/TrustPeople.pbgrpc.dart';
import 'package:my_app/protobuf/video.pb.dart';
import 'protobuf/video.pb.dart';
import 'protobuf/video.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'connect.dart';
import 'package:local_auth/error_codes.dart' as auth_error;

class Live extends StatefulWidget {
  @override
  _LiveState createState() => new _LiveState();
}

class _LiveState extends State<Live> {
  File _imgFile = new File('../assets/profile.png');
  bool _inCall = false;
  bool _lockInCall = false;
  bool _unlockInCall = false;
  var stub;
  var channel;
  bool livestate = false;

  var imgAsBytes = null;



  // Widget that sends an alert to the user with content
  // string1 and string 2
  Future<void> _alert(context, string1, string2) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(string1),
                Text(string2),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> connectEnd() async {
    await channel.shutdown();
  }

  // Function that makes the GRPC call 
  // to unlock the door when user presses
  // the unlock button
  Future<Void> normalUnlock() async {
    print("enter normal unlock call");
    final ret = await connectStart(20);
    stub = ret[0];
    channel = ret[1];
    final request = LockDoorReq()..locked = false;
    try {
      var res = await stub.lockDoor(request);
      if (res.success == true) {
      } else {
        _alert(context, "Unlock Door request did not send success",
            "Please try again");
      }
    } catch (e) {
      // _alert(context, "An error occured", "Please try again");
      print(e);
      connectEnd();
    }
    connectEnd();
  }

  // Function that makes the GRPC call 
  // to lock the door when user presses
  // the lock button
  Future<Void> normalLock() async {
    print("enter normal lock call");
    final ret = await connectStart(500);
    stub = ret[0];
    channel = ret[1];
    final request = LockDoorReq()..locked = true;
    try {
      var res = await stub.lockDoor(request);
      if (res.success == true) {
      } else {
        _alert(context, "Lock Door request did not send success",
            "Please try again");
      }
    } catch (e) {
      // _alert(context, "An error occured", "Please try again");
      print(e);
      connectEnd();
    }
    connectEnd();
  }

  // Function that uses the local auth library
  // to do a 2 step verification before the user
  // is able to lock or unlock the door. If the phone
  // does not have a passcode set up then the user
  // is still able to lock and unlock the door
  // but they get an alert that asks them
  // to set up a passcode for added security
  void _door(context, unlock) async {
    var local_auth = LocalAuthentication();
    bool didAuthenticate = false;
    try {
      didAuthenticate = await local_auth.authenticate(
        localizedReason: 'Please authenticate',
      );
    } on PlatformException catch (e) {
      didAuthenticate = true;
      _alert(context, "You do not have a passcode set up.",
          " For added security please set a passcode");
    }
    if (didAuthenticate == false) {
      return _alert(context, "Authentication Failed", "Please try again");
    }
    if (unlock == true) {
      normalUnlock();
    } else {
      normalLock();
    }
    return;
  }

  // Widget that displays the lock button
  Widget _lockButton(context) {
    if (_lockInCall == false) {
      return TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.lightGreen)),
        onPressed: () {
          _door(context, false);
        },
        child: Text("Lock Door"),
      );
    } else {
      return TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.lightGreen)),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.all(2.7),
          child: Center(
            child: Text("Lock Door"),
          ),
        ),
      );
    }
  }

  // Widget that displays the lock button
  Widget _unLockButton(context) {
    if (_unlockInCall == false) {
      return TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.lightGreen)),
        onPressed: () {
          _door(context, true);
        },
        child: Text("Unlock Door"),
      );
    } else {
      return TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.lightGreen)),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.all(2.7),
          child: Center(
            child: Text("Unlock Door"),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Live View"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _width * 0.25),
              child: Container(
                width: 10.0,
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightGreen)),
                  onPressed: (() {
                    LiveStream();
                  }),
                  child: livestate
                      ? Text("Stop Live Stream")
                      : Text("Live Stream"),
                ),
              ),
            ),
            SizedBox(height: 10),
            setImage(_imgFile),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _width * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _unLockButton(context),
                  SizedBox(width: 20),
                  _lockButton(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void LiveStream() {
    setState(() => livestate = !livestate);
    if (livestate) {
      getLiveStream();
    } else {
      endLiveStream();
    }
  }

// send an end stream signal to the server to notify the de1 to stop sending stream to server
  Future<void> endLiveStream() async {
    print("end stream");
    final ret = await connectStartvideo();
    var stub;
    var channel;
    stub = ret[0];
    channel = ret[1];
    final endrequest = EndPullVideoStreamReq()..id = "default";
    try {
      final res = await stub.endPullVideoStream(endrequest);
    } catch (e) {
      print(e);
    }
    //connectEnd();
    await channel.shutdown();
  }

//this function get the live stream frames from the server
  Future<void> getLiveStream() async {
    setState(() {
      _imgFile = null;
    });
    var stub;
    var channel;
    final ret = await connectStartvideo();
    stub = ret[0];
    channel = ret[1];

    final streamRequest = PullVideoStreamReq()
      ..id = "default"
      ..mainUser = "admin";
    var framenumber = 0;
    try {
      await for (var streamResponse in stub.pullVideoStream(streamRequest)) {
        print(streamResponse.closed);
        if (streamResponse.closed == true) {
          connectEnd();
          break;
        }
        var imageBytes = BytesBuilder();
        imageBytes.add(streamResponse.video.frame.chunk);
        print(streamResponse.video.frame.number);

        imageCache.clear();
        setState(() {
          imgAsBytes = imageBytes.toBytes();
        });

        framenumber += 1;
        await Future.delayed(Duration(milliseconds: 100));
      }
    } catch (e) {
      await channel.shutdown();
      print(e);
    }

    print(framenumber);
    await channel.shutdown();
  }

  Widget setImage(File file) {
    if (imgAsBytes != null) {
      return new Image(image: MemoryImage(imgAsBytes), gaplessPlayback: true);
    }

    if (file == null) {
      return new Container(
          width: 250.0,
          height: 250.0,
          alignment: Alignment.center,
          decoration: new BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/profile.png'))));
    } else {
      return new Container(
          width: 250.0,
          height: 250.0,
          alignment: Alignment.center,
          child: Image.file(file));
    }
  }
}
