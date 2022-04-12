import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'anuncios_jaragua_record.g.dart';

abstract class AnunciosJaraguaRecord
    implements Built<AnunciosJaraguaRecord, AnunciosJaraguaRecordBuilder> {
  static Serializer<AnunciosJaraguaRecord> get serializer =>
      _$anunciosJaraguaRecordSerializer;

  @nullable
  String get titulo;

  @nullable
  String get descricao;

  @nullable
  DateTime get data;

  @nullable
  String get img;

  @nullable
  bool get ativo;

  @nullable
  String get local;

  @nullable
  String get horario;

  @nullable
  String get video;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AnunciosJaraguaRecordBuilder builder) =>
      builder
        ..titulo = ''
        ..descricao = ''
        ..img = ''
        ..ativo = false
        ..local = ''
        ..horario = ''
        ..video = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anuncios_jaragua');

  static Stream<AnunciosJaraguaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AnunciosJaraguaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AnunciosJaraguaRecord._();
  factory AnunciosJaraguaRecord(
          [void Function(AnunciosJaraguaRecordBuilder) updates]) =
      _$AnunciosJaraguaRecord;

  static AnunciosJaraguaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAnunciosJaraguaRecordData({
  String titulo,
  String descricao,
  DateTime data,
  String img,
  bool ativo,
  String local,
  String horario,
  String video,
}) =>
    serializers.toFirestore(
        AnunciosJaraguaRecord.serializer,
        AnunciosJaraguaRecord((a) => a
          ..titulo = titulo
          ..descricao = descricao
          ..data = data
          ..img = img
          ..ativo = ativo
          ..local = local
          ..local = horario
          ..video = video));
