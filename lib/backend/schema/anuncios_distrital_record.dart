import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'anuncios_distrital_record.g.dart';

abstract class AnunciosDistritalRecord
    implements Built<AnunciosDistritalRecord, AnunciosDistritalRecordBuilder> {
  static Serializer<AnunciosDistritalRecord> get serializer =>
      _$anunciosDistritalRecordSerializer;

  @nullable
  DateTime get data;

  @nullable
  String get img;

  @nullable
  String get local;

  @nullable
  String get titulo;

  @nullable
  String get descricao;

  @nullable
  String get horario;

  @nullable
  bool get ativo;


  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AnunciosDistritalRecordBuilder builder) =>
      builder
        ..img = ''
        ..local = ''
        ..titulo = ''
        ..descricao = ''
        ..horario = ''
        ..ativo = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anuncios_distrital');

  static Stream<AnunciosDistritalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AnunciosDistritalRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AnunciosDistritalRecord._();
  factory AnunciosDistritalRecord(
          [void Function(AnunciosDistritalRecordBuilder) updates]) =
      _$AnunciosDistritalRecord;

  static AnunciosDistritalRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAnunciosDistritalRecordData({
  DateTime data,
  String img,
  String local,
  String titulo,
  String descricao,
  String horario,
  bool ativo,
}) =>
    serializers.toFirestore(
        AnunciosDistritalRecord.serializer,
        AnunciosDistritalRecord((a) => a
          ..data = data
          ..img = img
          ..local = local
          ..titulo = titulo
          ..descricao = descricao
          ..horario = horario
          ..ativo = ativo));
