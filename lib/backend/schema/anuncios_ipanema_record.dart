import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'anuncios_ipanema_record.g.dart';

abstract class AnunciosIpanemaRecord
    implements Built<AnunciosIpanemaRecord, AnunciosIpanemaRecordBuilder> {
  static Serializer<AnunciosIpanemaRecord> get serializer =>
      _$anunciosIpanemaRecordSerializer;

  @nullable
  String get titulo;

  @nullable
  String get descricao;

  @nullable
  DateTime get data;

  @nullable
  String get img;

  @nullable
  String get local;

  @nullable
  bool get ativo;

  @nullable
  String get video;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AnunciosIpanemaRecordBuilder builder) =>
      builder
        ..titulo = ''
        ..descricao = ''
        ..img = ''
        ..local = ''
        ..ativo = false
        ..video = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anuncios_ipanema');

  static Stream<AnunciosIpanemaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AnunciosIpanemaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AnunciosIpanemaRecord._();
  factory AnunciosIpanemaRecord(
          [void Function(AnunciosIpanemaRecordBuilder) updates]) =
      _$AnunciosIpanemaRecord;

  static AnunciosIpanemaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAnunciosIpanemaRecordData({
  String titulo,
  String descricao,
  DateTime data,
  String img,
  String local,
  bool ativo,
  String video,
}) =>
    serializers.toFirestore(
        AnunciosIpanemaRecord.serializer,
        AnunciosIpanemaRecord((a) => a
          ..titulo = titulo
          ..descricao = descricao
          ..data = data
          ..img = img
          ..local = local
          ..ativo = ativo
          ..video = video));
