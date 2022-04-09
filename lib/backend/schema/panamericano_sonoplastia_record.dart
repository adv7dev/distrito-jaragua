import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'panamericano_sonoplastia_record.g.dart';

abstract class PanamericanoSonoplastiaRecord
    implements
        Built<PanamericanoSonoplastiaRecord,
            PanamericanoSonoplastiaRecordBuilder> {
  static Serializer<PanamericanoSonoplastiaRecord> get serializer =>
      _$panamericanoSonoplastiaRecordSerializer;

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

  static void _initializeBuilder(
          PanamericanoSonoplastiaRecordBuilder builder) =>
      builder
        ..nome = ''
        ..img = ''
        ..ativo = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('panamericano_sonoplastia');

  static Stream<PanamericanoSonoplastiaRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PanamericanoSonoplastiaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  PanamericanoSonoplastiaRecord._();
  factory PanamericanoSonoplastiaRecord(
          [void Function(PanamericanoSonoplastiaRecordBuilder) updates]) =
      _$PanamericanoSonoplastiaRecord;

  static PanamericanoSonoplastiaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPanamericanoSonoplastiaRecordData({
  String nome,
  DateTime data,
  String img,
  bool ativo,
}) =>
    serializers.toFirestore(
        PanamericanoSonoplastiaRecord.serializer,
        PanamericanoSonoplastiaRecord((p) => p
          ..nome = nome
          ..data = data
          ..img = img
          ..ativo = ativo));
