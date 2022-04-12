import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get userName;

  @nullable
  String get bio;

  @nullable
  bool get isFollowed;

  @nullable
  @BuiltValueField(wireName: 'adm_jaragua')
  bool get admJaragua;

  @nullable
  @BuiltValueField(wireName: 'adm_ipanema')
  bool get admIpanema;

  @nullable
  @BuiltValueField(wireName: 'adm_panamericano')
  bool get admPanamericano;

  @nullable
  @BuiltValueField(wireName: 'adm_aurora')
  bool get admAurora;

  @nullable
  String get capa;

  @nullable
  @BuiltValueField(wireName: 'adm_geral')
  bool get admGeral;

  @nullable
  DocumentReference get postUser;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..displayName = ''
    ..email = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..userName = ''
    ..bio = ''
    ..isFollowed = false
    ..admJaragua = false
    ..admIpanema = false
    ..admPanamericano = false
    ..admAurora = false
    ..capa = ''
    ..admGeral = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String displayName,
  String email,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  String userName,
  String bio,
  bool isFollowed,
  bool admJaragua,
  bool admIpanema,
  bool admPanamericano,
  bool admAurora,
  String capa,
  bool admGeral,
  DocumentReference postUser,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..displayName = displayName
          ..email = email
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..userName = userName
          ..bio = bio
          ..isFollowed = isFollowed
          ..admJaragua = admJaragua
          ..admIpanema = admIpanema
          ..admPanamericano = admPanamericano
          ..admAurora = admAurora
          ..capa = capa
          ..admGeral = admGeral
          ..postUser = postUser));
