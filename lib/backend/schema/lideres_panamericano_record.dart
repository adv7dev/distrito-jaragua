import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'lideres_panamericano_record.g.dart';

abstract class LideresPanamericanoRecord
    implements
        Built<LideresPanamericanoRecord, LideresPanamericanoRecordBuilder> {
  static Serializer<LideresPanamericanoRecord> get serializer =>
      _$lideresPanamericanoRecordSerializer;

  @nullable
  String get nome;

  @nullable
  String get cargo;

  @nullable
  String get img;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(LideresPanamericanoRecordBuilder builder) =>
      builder
        ..nome = ''
        ..cargo = ''
        ..img = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lideres_panamericano');

  static Stream<LideresPanamericanoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<LideresPanamericanoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  LideresPanamericanoRecord._();
  factory LideresPanamericanoRecord(
          [void Function(LideresPanamericanoRecordBuilder) updates]) =
      _$LideresPanamericanoRecord;

  static LideresPanamericanoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createLideresPanamericanoRecordData({
  String nome,
  String cargo,
  String img,
}) =>
    serializers.toFirestore(
        LideresPanamericanoRecord.serializer,
        LideresPanamericanoRecord((l) => l
          ..nome = nome
          ..cargo = cargo
          ..img = img));
