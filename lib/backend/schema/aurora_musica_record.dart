import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'aurora_musica_record.g.dart';

abstract class AuroraMusicaRecord
    implements Built<AuroraMusicaRecord, AuroraMusicaRecordBuilder> {
  static Serializer<AuroraMusicaRecord> get serializer =>
      _$auroraMusicaRecordSerializer;

  @nullable
  String get nome;

  @nullable
  DateTime get data;

  @nullable
  String get img;

  @nullable
  String get igreja;

  @nullable
  String get whatsapp;

  @nullable
  bool get ativo;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AuroraMusicaRecordBuilder builder) => builder
    ..nome = ''
    ..img = ''
    ..igreja = ''
    ..whatsapp = ''
    ..ativo = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('aurora_musica');

  static Stream<AuroraMusicaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AuroraMusicaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AuroraMusicaRecord._();
  factory AuroraMusicaRecord(
          [void Function(AuroraMusicaRecordBuilder) updates]) =
      _$AuroraMusicaRecord;

  static AuroraMusicaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAuroraMusicaRecordData({
  String nome,
  DateTime data,
  String img,
  String igreja,
  String whatsapp,
  bool ativo,
}) =>
    serializers.toFirestore(
        AuroraMusicaRecord.serializer,
        AuroraMusicaRecord((a) => a
          ..nome = nome
          ..data = data
          ..img = img
          ..igreja = igreja
          ..whatsapp = whatsapp
          ..ativo = ativo));
