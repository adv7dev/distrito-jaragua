import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'aurora_sabatina_record.g.dart';

abstract class AuroraSabatinaRecord
    implements Built<AuroraSabatinaRecord, AuroraSabatinaRecordBuilder> {
  static Serializer<AuroraSabatinaRecord> get serializer =>
      _$auroraSabatinaRecordSerializer;

  @nullable
  String get nome;

  @nullable
  DateTime get data;

  @nullable
  bool get ativo;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AuroraSabatinaRecordBuilder builder) => builder
    ..nome = ''
    ..ativo = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('aurora_sabatina');

  static Stream<AuroraSabatinaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AuroraSabatinaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AuroraSabatinaRecord._();
  factory AuroraSabatinaRecord(
          [void Function(AuroraSabatinaRecordBuilder) updates]) =
      _$AuroraSabatinaRecord;

  static AuroraSabatinaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAuroraSabatinaRecordData({
  String nome,
  DateTime data,
  bool ativo,
}) =>
    serializers.toFirestore(
        AuroraSabatinaRecord.serializer,
        AuroraSabatinaRecord((a) => a
          ..nome = nome
          ..data = data
          ..ativo = ativo));
