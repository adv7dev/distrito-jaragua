import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ipanema_musica_record.g.dart';

abstract class IpanemaMusicaRecord
    implements Built<IpanemaMusicaRecord, IpanemaMusicaRecordBuilder> {
  static Serializer<IpanemaMusicaRecord> get serializer =>
      _$ipanemaMusicaRecordSerializer;

  @nullable
  String get nome;

  @nullable
  DateTime get data;

  @nullable
  bool get ativo;

  @nullable
  String get img;

  @nullable
  String get whatsapp;

  @nullable
  String get igreja;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(IpanemaMusicaRecordBuilder builder) => builder
    ..nome = ''
    ..ativo = false
    ..img = ''
    ..whatsapp = ''
    ..igreja = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ipanema_musica');

  static Stream<IpanemaMusicaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<IpanemaMusicaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  IpanemaMusicaRecord._();
  factory IpanemaMusicaRecord(
          [void Function(IpanemaMusicaRecordBuilder) updates]) =
      _$IpanemaMusicaRecord;

  static IpanemaMusicaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createIpanemaMusicaRecordData({
  String nome,
  DateTime data,
  bool ativo,
  String img,
  String whatsapp,
  String igreja,
}) =>
    serializers.toFirestore(
        IpanemaMusicaRecord.serializer,
        IpanemaMusicaRecord((i) => i
          ..nome = nome
          ..data = data
          ..ativo = ativo
          ..img = img
          ..whatsapp = whatsapp
          ..igreja = igreja));
