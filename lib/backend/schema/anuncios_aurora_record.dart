import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'anuncios_aurora_record.g.dart';

abstract class AnunciosAuroraRecord
    implements Built<AnunciosAuroraRecord, AnunciosAuroraRecordBuilder> {
  static Serializer<AnunciosAuroraRecord> get serializer =>
      _$anunciosAuroraRecordSerializer;

  @nullable
  String get titulo;

  @nullable
  String get descricao;

  @nullable
  DateTime get data;

  @nullable
  String get local;

  @nullable
  String get horario;

  @nullable
  bool get ativo;

  @nullable
  String get img;

  @nullable
  String get video;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AnunciosAuroraRecordBuilder builder) => builder
    ..titulo = ''
    ..descricao = ''
    ..local = ''
    ..horario = ''
    ..ativo = false
    ..img = ''
    ..video = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anuncios_aurora');

  static Stream<AnunciosAuroraRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AnunciosAuroraRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AnunciosAuroraRecord._();
  factory AnunciosAuroraRecord(
          [void Function(AnunciosAuroraRecordBuilder) updates]) =
      _$AnunciosAuroraRecord;

  static AnunciosAuroraRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAnunciosAuroraRecordData({
  String titulo,
  String descricao,
  DateTime data,
  String local,
  String horario,
  bool ativo,
  String img,
  String video,
}) =>
    serializers.toFirestore(
        AnunciosAuroraRecord.serializer,
        AnunciosAuroraRecord((a) => a
          ..titulo = titulo
          ..descricao = descricao
          ..data = data
          ..local = local
          ..horario = horario
          ..ativo = ativo
          ..img = img
          ..video = video));
