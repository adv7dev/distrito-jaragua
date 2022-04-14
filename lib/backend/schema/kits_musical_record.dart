import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'kits_musical_record.g.dart';

abstract class KitsMusicalRecord
    implements Built<KitsMusicalRecord, KitsMusicalRecordBuilder> {
  static Serializer<KitsMusicalRecord> get serializer =>
      _$kitsMusicalRecordSerializer;

  @nullable
  String get nome;

  @nullable
  String get banda;

  @nullable
  @BuiltValueField(wireName: 'url_cantada')
  String get urlCantada;

  @nullable
  @BuiltValueField(wireName: 'url_playback')
  String get urlPlayback;

  @nullable
  @BuiltValueField(wireName: 'url_soprano')
  String get urlSoprano;

  @nullable
  @BuiltValueField(wireName: 'url_contralto')
  String get urlContralto;

  @nullable
  @BuiltValueField(wireName: 'url_barito')
  String get urlBarito;

  @nullable
  @BuiltValueField(wireName: 'url_tenor')
  String get urlTenor;

  @nullable
  @BuiltValueField(wireName: 'url_baixo')
  String get urlBaixo;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(KitsMusicalRecordBuilder builder) => builder
    ..nome = ''
    ..banda = ''
    ..urlCantada = ''
    ..urlPlayback = ''
    ..urlSoprano = ''
    ..urlContralto = ''
    ..urlBarito = ''
    ..urlTenor = ''
    ..urlBaixo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('kits_musical');

  static Stream<KitsMusicalRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<KitsMusicalRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  KitsMusicalRecord._();
  factory KitsMusicalRecord([void Function(KitsMusicalRecordBuilder) updates]) =
  _$KitsMusicalRecord;

  static KitsMusicalRecord getDocumentFromData(
      Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createKitsMusicalRecordData({
  String nome,
  String banda,
  String urlCantada,
  String urlPlayback,
  String urlSoprano,
  String urlContralto,
  String urlBarito,
  String urlTenor,
  String urlBaixo,
}) =>
    serializers.toFirestore(
        KitsMusicalRecord.serializer,
        KitsMusicalRecord((k) => k
          ..nome = nome
          ..banda = banda
          ..urlCantada = urlCantada
          ..urlPlayback = urlPlayback
          ..urlSoprano = urlSoprano
          ..urlContralto = urlContralto
          ..urlBarito = urlBarito
          ..urlTenor = urlTenor
          ..urlBaixo = urlBaixo));
