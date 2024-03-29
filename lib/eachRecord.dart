import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_app/protobuf/TrustPeople.pb.dart';
import 'protobuf/TrustPeople.pb.dart';
import 'protobuf/TrustPeople.pbgrpc.dart';
import 'package:flutter/cupertino.dart';
import 'connect.dart';

class EachrecordScreen extends StatefulWidget {
  //it need to pass in two more arguments in, when the user is alrady there
  // the in = 1, also when click a old user, it will pass in the username

  String userName;
  String statu;
  String accesstime;
  String image_address;
  EachrecordScreen(
      {Key key,
      @required this.userName,
      this.statu,
      this.accesstime,
      this.image_address})
      : super(key: key);
  @override
  _EachRecordState createState() =>
      new _EachRecordState(userName, statu, accesstime, image_address);
}

class _EachRecordState extends State<EachrecordScreen> {
  var stub;
  var channel;
  String userName;
  String statu;
  String accesstime;
  String image_address;
  File _image;
  var imgAsBytes = null;

  _EachRecordState(
      this.userName, this.statu, this.accesstime, this.image_address);

  @override
  void initState() {
      // Automatically get the user image when the page
      // is first built
    getRecordImage(image_address);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(userName),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(children: <Widget>[
              setImage(_image),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text("Name: " + userName),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text("Access Time: " + accesstime),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text("Status: " + statu),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey)),
                child: Text(
                  "Delete Record",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: (() {
                  deleterecord(image_address);
                }),
              ),
            ])));
  }

  Future<void> connectEnd() async {
    await channel.shutdown();
  }

// delete the current records
  Future<Void> deleterecord(image_address) async {
    final ret = await connectStart(20);
    stub = ret[0];
    channel = ret[1];
    //print(image_address);

    final imagelocation = ImageLocation()..address = image_address;
    try {
      var response = await stub.deleteRecords(imagelocation);
    } catch (e) {
      print(e);
      print("Can not get all the records.");
    }
    connectEnd();
  }

// get the record image from the server
  Future<void> getRecordImage(String image_address) async {
    setState(() {
      _image = null;
    });
    print(image_address);
    final ret = await connectStart(25);
    stub = ret[0];
    channel = ret[1];

    var imageBytes = BytesBuilder();

    final imagelocation = ImageLocation()..address = image_address;

    try {
      await for (var returnUser in stub.getHistoryImage(imagelocation)) {
        imageBytes.add(returnUser.image);
      }
      print(imageBytes.toBytes());
      print("get history image");

      imageCache.clear();

      setState(() {
        imgAsBytes = imageBytes.toBytes();
      });
    } catch (e) {
      print(e);
    }
    connectEnd();
  }

//show the record image in the app page
  Widget setImage(File file) {
    if (imgAsBytes != null) {
      return new Container(
          width: 250.0,
          height: 250.0,
          alignment: Alignment.center,
          decoration: new BoxDecoration(
              image: DecorationImage(image: MemoryImage(imgAsBytes))));
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
