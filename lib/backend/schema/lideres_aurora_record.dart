import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'lideres_aurora_record.g.dart';

abstract class LideresAuroraRecord
    implements Built<LideresAuroraRecord, LideresAuroraRecordBuilder> {
  static Serializer<LideresAuroraRecord> get serializer =>
      _$lideresAuroraRecordSerializer;

  @nullable
  String get nome;

  @nullable
  String get cargo;

  @nullable
  String get img;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(LideresAuroraRecordBuilder builder) => builder
    ..nome = ''
    ..cargo = ''
    ..img = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lideres_aurora');

  static Stream<LideresAuroraRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<LideresAuroraRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  LideresAuroraRecord._();
  factory LideresAuroraRecord(
          [void Function(LideresAuroraRecordBuilder) updates]) =
      _$LideresAuroraRecord;

  static LideresAuroraRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createLideresAuroraRecordData({
  String nome,
  String cargo,
  String img,
}) =>
    serializers.toFirestore(
        LideresAuroraRecord.serializer,
        LideresAuroraRecord((l) => l
          ..nome = nome
          ..cargo = cargo
          ..img = img));
