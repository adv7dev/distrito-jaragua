import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'panamericano_pregadores_record.g.dart';

abstract class PanamericanoPregadoresRecord
    implements
        Built<PanamericanoPregadoresRecord,
            PanamericanoPregadoresRecordBuilder> {
  static Serializer<PanamericanoPregadoresRecord> get serializer =>
      _$panamericanoPregadoresRecordSerializer;

  @nullable
  String get nome;

  @nullable
  bool get ativo;

  @nullable
  DateTime get data;

  @nullable
  String get igreja;

  @nullable
  String get whatsapp;

  @nullable
  String get img;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PanamericanoPregadoresRecordBuilder builder) =>
      builder
        ..nome = ''
        ..ativo = false
        ..igreja = ''
        ..whatsapp = ''
        ..img = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('panamericano_pregadores');

  static Stream<PanamericanoPregadoresRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PanamericanoPregadoresRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  PanamericanoPregadoresRecord._();
  factory PanamericanoPregadoresRecord(
          [void Function(PanamericanoPregadoresRecordBuilder) updates]) =
      _$PanamericanoPregadoresRecord;

  static PanamericanoPregadoresRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPanamericanoPregadoresRecordData({
  String nome,
  bool ativo,
  DateTime data,
  String igreja,
  String whatsapp,
  String img,
}) =>
    serializers.toFirestore(
        PanamericanoPregadoresRecord.serializer,
        PanamericanoPregadoresRecord((p) => p
          ..nome = nome
          ..ativo = ativo
          ..data = data
          ..igreja = igreja
          ..whatsapp = whatsapp
          ..img = img));
