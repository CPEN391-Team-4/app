///
//  Generated code. Do not modify.
//  source: route.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'User', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'route'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'restricted')
    ..aOM<Photo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Photo', protoName: 'Photo', subBuilder: Photo.create)
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User({
    $core.String? name,
    $core.bool? restricted,
    Photo? photo,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (restricted != null) {
      _result.restricted = restricted;
    }
    if (photo != null) {
      _result.photo = photo;
    }
    return _result;
  }
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get restricted => $_getBF(1);
  @$pb.TagNumber(2)
  set restricted($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRestricted() => $_has(1);
  @$pb.TagNumber(2)
  void clearRestricted() => clearField(2);

  @$pb.TagNumber(3)
  Photo get photo => $_getN(2);
  @$pb.TagNumber(3)
  set photo(Photo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhoto() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhoto() => clearField(3);
  @$pb.TagNumber(3)
  Photo ensurePhoto() => $_ensure(2);
}

class Photo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Photo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'route'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'image', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileExtension', protoName: 'fileExtension')
    ..hasRequiredFields = false
  ;

  Photo._() : super();
  factory Photo({
    $core.List<$core.int>? image,
    $core.String? fileExtension,
  }) {
    final _result = create();
    if (image != null) {
      _result.image = image;
    }
    if (fileExtension != null) {
      _result.fileExtension = fileExtension;
    }
    return _result;
  }
  factory Photo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Photo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Photo clone() => Photo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Photo copyWith(void Function(Photo) updates) => super.copyWith((message) => updates(message as Photo)) as Photo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Photo create() => Photo._();
  Photo createEmptyInstance() => create();
  static $pb.PbList<Photo> createRepeated() => $pb.PbList<Photo>();
  @$core.pragma('dart2js:noInline')
  static Photo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Photo>(create);
  static Photo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get image => $_getN(0);
  @$pb.TagNumber(1)
  set image($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearImage() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fileExtension => $_getSZ(1);
  @$pb.TagNumber(2)
  set fileExtension($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileExtension() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileExtension() => clearField(2);
}

class UserNames extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserNames', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'route'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'usernames')
    ..hasRequiredFields = false
  ;

  UserNames._() : super();
  factory UserNames({
    $core.Iterable<$core.String>? usernames,
  }) {
    final _result = create();
    if (usernames != null) {
      _result.usernames.addAll(usernames);
    }
    return _result;
  }
  factory UserNames.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserNames.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserNames clone() => UserNames()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserNames copyWith(void Function(UserNames) updates) => super.copyWith((message) => updates(message as UserNames)) as UserNames; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserNames create() => UserNames._();
  UserNames createEmptyInstance() => create();
  static $pb.PbList<UserNames> createRepeated() => $pb.PbList<UserNames>();
  @$core.pragma('dart2js:noInline')
  static UserNames getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserNames>(create);
  static UserNames? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get usernames => $_getList(0);
}

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'route'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

class FaceVerificationReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FaceVerificationReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'route'), createEmptyInstance: create)
    ..aOM<Photo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Photo', protoName: 'Photo', subBuilder: Photo.create)
    ..hasRequiredFields = false
  ;

  FaceVerificationReq._() : super();
  factory FaceVerificationReq({
    Photo? photo,
  }) {
    final _result = create();
    if (photo != null) {
      _result.photo = photo;
    }
    return _result;
  }
  factory FaceVerificationReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FaceVerificationReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FaceVerificationReq clone() => FaceVerificationReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FaceVerificationReq copyWith(void Function(FaceVerificationReq) updates) => super.copyWith((message) => updates(message as FaceVerificationReq)) as FaceVerificationReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FaceVerificationReq create() => FaceVerificationReq._();
  FaceVerificationReq createEmptyInstance() => create();
  static $pb.PbList<FaceVerificationReq> createRepeated() => $pb.PbList<FaceVerificationReq>();
  @$core.pragma('dart2js:noInline')
  static FaceVerificationReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FaceVerificationReq>(create);
  static FaceVerificationReq? _defaultInstance;

  @$pb.TagNumber(1)
  Photo get photo => $_getN(0);
  @$pb.TagNumber(1)
  set photo(Photo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhoto() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoto() => clearField(1);
  @$pb.TagNumber(1)
  Photo ensurePhoto() => $_ensure(0);
}

class FaceVerificationResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FaceVerificationResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'route'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confidence', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  FaceVerificationResp._() : super();
  factory FaceVerificationResp({
    $core.String? user,
    $core.double? confidence,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    if (confidence != null) {
      _result.confidence = confidence;
    }
    return _result;
  }
  factory FaceVerificationResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FaceVerificationResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FaceVerificationResp clone() => FaceVerificationResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FaceVerificationResp copyWith(void Function(FaceVerificationResp) updates) => super.copyWith((message) => updates(message as FaceVerificationResp)) as FaceVerificationResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FaceVerificationResp create() => FaceVerificationResp._();
  FaceVerificationResp createEmptyInstance() => create();
  static $pb.PbList<FaceVerificationResp> createRepeated() => $pb.PbList<FaceVerificationResp>();
  @$core.pragma('dart2js:noInline')
  static FaceVerificationResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FaceVerificationResp>(create);
  static FaceVerificationResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get user => $_getSZ(0);
  @$pb.TagNumber(1)
  set user($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get confidence => $_getN(1);
  @$pb.TagNumber(2)
  set confidence($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConfidence() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfidence() => clearField(2);
}

class HistoryRecord extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HistoryRecord', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'route'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOM<Photo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Photo', protoName: 'Photo', subBuilder: Photo.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time')
    ..hasRequiredFields = false
  ;

  HistoryRecord._() : super();
  factory HistoryRecord({
    $core.String? name,
    $core.String? status,
    Photo? photo,
    $core.String? time,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (status != null) {
      _result.status = status;
    }
    if (photo != null) {
      _result.photo = photo;
    }
    if (time != null) {
      _result.time = time;
    }
    return _result;
  }
  factory HistoryRecord.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryRecord.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HistoryRecord clone() => HistoryRecord()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HistoryRecord copyWith(void Function(HistoryRecord) updates) => super.copyWith((message) => updates(message as HistoryRecord)) as HistoryRecord; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HistoryRecord create() => HistoryRecord._();
  HistoryRecord createEmptyInstance() => create();
  static $pb.PbList<HistoryRecord> createRepeated() => $pb.PbList<HistoryRecord>();
  @$core.pragma('dart2js:noInline')
  static HistoryRecord getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryRecord>(create);
  static HistoryRecord? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  Photo get photo => $_getN(2);
  @$pb.TagNumber(3)
  set photo(Photo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhoto() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhoto() => clearField(3);
  @$pb.TagNumber(3)
  Photo ensurePhoto() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get time => $_getSZ(3);
  @$pb.TagNumber(4)
  set time($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearTime() => clearField(4);
}

class Timestamp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Timestamp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'route'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'starttime')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endtime')
    ..hasRequiredFields = false
  ;

  Timestamp._() : super();
  factory Timestamp({
    $core.String? starttime,
    $core.String? endtime,
  }) {
    final _result = create();
    if (starttime != null) {
      _result.starttime = starttime;
    }
    if (endtime != null) {
      _result.endtime = endtime;
    }
    return _result;
  }
  factory Timestamp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Timestamp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Timestamp clone() => Timestamp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Timestamp copyWith(void Function(Timestamp) updates) => super.copyWith((message) => updates(message as Timestamp)) as Timestamp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Timestamp create() => Timestamp._();
  Timestamp createEmptyInstance() => create();
  static $pb.PbList<Timestamp> createRepeated() => $pb.PbList<Timestamp>();
  @$core.pragma('dart2js:noInline')
  static Timestamp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Timestamp>(create);
  static Timestamp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get starttime => $_getSZ(0);
  @$pb.TagNumber(1)
  set starttime($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStarttime() => $_has(0);
  @$pb.TagNumber(1)
  void clearStarttime() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get endtime => $_getSZ(1);
  @$pb.TagNumber(2)
  set endtime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndtime() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndtime() => clearField(2);
}

class Permission extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Permission', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'route'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'usernames')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userid')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'permit')
    ..hasRequiredFields = false
  ;

  Permission._() : super();
  factory Permission({
    $core.String? usernames,
    $fixnum.Int64? userid,
    $core.bool? permit,
  }) {
    final _result = create();
    if (usernames != null) {
      _result.usernames = usernames;
    }
    if (userid != null) {
      _result.userid = userid;
    }
    if (permit != null) {
      _result.permit = permit;
    }
    return _result;
  }
  factory Permission.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Permission.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Permission clone() => Permission()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Permission copyWith(void Function(Permission) updates) => super.copyWith((message) => updates(message as Permission)) as Permission; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Permission create() => Permission._();
  Permission createEmptyInstance() => create();
  static $pb.PbList<Permission> createRepeated() => $pb.PbList<Permission>();
  @$core.pragma('dart2js:noInline')
  static Permission getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Permission>(create);
  static Permission? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get usernames => $_getSZ(0);
  @$pb.TagNumber(1)
  set usernames($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsernames() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsernames() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userid => $_getI64(1);
  @$pb.TagNumber(2)
  set userid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserid() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get permit => $_getBF(2);
  @$pb.TagNumber(3)
  set permit($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPermit() => $_has(2);
  @$pb.TagNumber(3)
  void clearPermit() => clearField(3);
}

