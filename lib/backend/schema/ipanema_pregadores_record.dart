import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ipanema_pregadores_record.g.dart';

abstract class IpanemaPregadoresRecord
    implements Built<IpanemaPregadoresRecord, IpanemaPregadoresRecordBuilder> {
  static Serializer<IpanemaPregadoresRecord> get serializer =>
      _$ipanemaPregadoresRecordSerializer;

  @nullable
  String get nome;

  @nullable
  String get img;

  @nullable
  DateTime get data;

  @nullable
  String get whatsapp;

  @nullable
  String get igreja;

  @nullable
  bool get ativo;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(IpanemaPregadoresRecordBuilder builder) =>
      builder
        ..nome = ''
        ..img = ''
        ..whatsapp = ''
        ..igreja = ''
        ..ativo = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ipanema_pregadores');

  static Stream<IpanemaPregadoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<IpanemaPregadoresRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  IpanemaPregadoresRecord._();
  factory IpanemaPregadoresRecord(
          [void Function(IpanemaPregadoresRecordBuilder) updates]) =
      _$IpanemaPregadoresRecord;

  static IpanemaPregadoresRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createIpanemaPregadoresRecordData({
  String nome,
  String img,
  DateTime data,
  String whatsapp,
  String igreja,
  bool ativo,
}) =>
    serializers.toFirestore(
        IpanemaPregadoresRecord.serializer,
        IpanemaPregadoresRecord((i) => i
          ..nome = nome
          ..img = img
          ..data = data
          ..whatsapp = whatsapp
          ..igreja = igreja
          ..ativo = ativo));
