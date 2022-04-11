import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'lideres_ipanema_record.g.dart';

abstract class LideresIpanemaRecord
    implements Built<LideresIpanemaRecord, LideresIpanemaRecordBuilder> {
  static Serializer<LideresIpanemaRecord> get serializer =>
      _$lideresIpanemaRecordSerializer;

  @nullable
  String get nome;

  @nullable
  String get cargo;

  @nullable
  String get img;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(LideresIpanemaRecordBuilder builder) => builder
    ..nome = ''
    ..cargo = ''
    ..img = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lideres_ipanema');

  static Stream<LideresIpanemaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<LideresIpanemaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  LideresIpanemaRecord._();
  factory LideresIpanemaRecord(
          [void Function(LideresIpanemaRecordBuilder) updates]) =
      _$LideresIpanemaRecord;

  static LideresIpanemaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createLideresIpanemaRecordData({
  String nome,
  String cargo,
  String img,
}) =>
    serializers.toFirestore(
        LideresIpanemaRecord.serializer,
        LideresIpanemaRecord((l) => l
          ..nome = nome
          ..cargo = cargo
          ..img = img));
