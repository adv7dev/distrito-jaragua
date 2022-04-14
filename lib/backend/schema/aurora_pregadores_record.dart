import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'aurora_pregadores_record.g.dart';

abstract class AuroraPregadoresRecord
    implements Built<AuroraPregadoresRecord, AuroraPregadoresRecordBuilder> {
  static Serializer<AuroraPregadoresRecord> get serializer =>
      _$auroraPregadoresRecordSerializer;

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
  BuiltList<DocumentReference> get usarios;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AuroraPregadoresRecordBuilder builder) =>
      builder
        ..nome = ''
        ..img = ''
        ..igreja = ''
        ..whatsapp = ''
        ..ativo = false
        ..usarios = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('aurora_pregadores');

  static Stream<AuroraPregadoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AuroraPregadoresRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AuroraPregadoresRecord._();
  factory AuroraPregadoresRecord(
          [void Function(AuroraPregadoresRecordBuilder) updates]) =
      _$AuroraPregadoresRecord;

  static AuroraPregadoresRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAuroraPregadoresRecordData({
  String nome,
  DateTime data,
  String img,
  String igreja,
  String whatsapp,
  bool ativo,
}) =>
    serializers.toFirestore(
        AuroraPregadoresRecord.serializer,
        AuroraPregadoresRecord((a) => a
          ..nome = nome
          ..data = data
          ..img = img
          ..igreja = igreja
          ..whatsapp = whatsapp
          ..ativo = ativo
          ..usarios = null));

