import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'aurora_sonoplastia_record.g.dart';

abstract class AuroraSonoplastiaRecord
    implements Built<AuroraSonoplastiaRecord, AuroraSonoplastiaRecordBuilder> {
  static Serializer<AuroraSonoplastiaRecord> get serializer =>
      _$auroraSonoplastiaRecordSerializer;

  @nullable
  String get nome;

  @nullable
  DateTime get data;

  @nullable
  String get img;

  @nullable
  bool get ativo;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AuroraSonoplastiaRecordBuilder builder) =>
      builder
        ..nome = ''
        ..img = ''
        ..ativo = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('aurora_sonoplastia');

  static Stream<AuroraSonoplastiaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AuroraSonoplastiaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AuroraSonoplastiaRecord._();
  factory AuroraSonoplastiaRecord(
          [void Function(AuroraSonoplastiaRecordBuilder) updates]) =
      _$AuroraSonoplastiaRecord;

  static AuroraSonoplastiaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAuroraSonoplastiaRecordData({
  String nome,
  DateTime data,
  String img,
  bool ativo,
}) =>
    serializers.toFirestore(
        AuroraSonoplastiaRecord.serializer,
        AuroraSonoplastiaRecord((a) => a
          ..nome = nome
          ..data = data
          ..img = img
          ..ativo = ativo));
