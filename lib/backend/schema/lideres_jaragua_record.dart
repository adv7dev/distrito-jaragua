import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'lideres_jaragua_record.g.dart';

abstract class LideresJaraguaRecord
    implements Built<LideresJaraguaRecord, LideresJaraguaRecordBuilder> {
  static Serializer<LideresJaraguaRecord> get serializer =>
      _$lideresJaraguaRecordSerializer;

  @nullable
  String get nome;

  @nullable
  String get cargo;

  @nullable
  String get img;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(LideresJaraguaRecordBuilder builder) => builder
    ..nome = ''
    ..cargo = ''
    ..img = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lideres_jaragua');

  static Stream<LideresJaraguaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<LideresJaraguaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  LideresJaraguaRecord._();
  factory LideresJaraguaRecord(
          [void Function(LideresJaraguaRecordBuilder) updates]) =
      _$LideresJaraguaRecord;

  static LideresJaraguaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createLideresJaraguaRecordData({
  String nome,
  String cargo,
  String img,
}) =>
    serializers.toFirestore(
        LideresJaraguaRecord.serializer,
        LideresJaraguaRecord((l) => l
          ..nome = nome
          ..cargo = cargo
          ..img = img));
