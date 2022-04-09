import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'panamericano_musica_record.g.dart';

abstract class PanamericanoMusicaRecord
    implements
        Built<PanamericanoMusicaRecord, PanamericanoMusicaRecordBuilder> {
  static Serializer<PanamericanoMusicaRecord> get serializer =>
      _$panamericanoMusicaRecordSerializer;

  @nullable
  String get nome;

  @nullable
  String get igreja;

  @nullable
  String get whatsapp;

  @nullable
  String get img;

  @nullable
  DateTime get data;

  @nullable
  bool get ativo;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PanamericanoMusicaRecordBuilder builder) =>
      builder
        ..nome = ''
        ..igreja = ''
        ..whatsapp = ''
        ..img = ''
        ..ativo = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('panamericano_musica');

  static Stream<PanamericanoMusicaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PanamericanoMusicaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  PanamericanoMusicaRecord._();
  factory PanamericanoMusicaRecord(
          [void Function(PanamericanoMusicaRecordBuilder) updates]) =
      _$PanamericanoMusicaRecord;

  static PanamericanoMusicaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPanamericanoMusicaRecordData({
  String nome,
  String igreja,
  String whatsapp,
  String img,
  DateTime data,
  bool ativo,
}) =>
    serializers.toFirestore(
        PanamericanoMusicaRecord.serializer,
        PanamericanoMusicaRecord((p) => p
          ..nome = nome
          ..igreja = igreja
          ..whatsapp = whatsapp
          ..img = img
          ..data = data
          ..ativo = ativo));
