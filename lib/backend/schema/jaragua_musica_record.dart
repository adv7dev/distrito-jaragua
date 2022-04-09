import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'jaragua_musica_record.g.dart';

abstract class JaraguaMusicaRecord
    implements Built<JaraguaMusicaRecord, JaraguaMusicaRecordBuilder> {
  static Serializer<JaraguaMusicaRecord> get serializer =>
      _$jaraguaMusicaRecordSerializer;

  @nullable
  String get nome;

  @nullable
  DateTime get data;

  @nullable
  bool get ativo;

  @nullable
  String get img;

  @nullable
  String get igreja;

  @nullable
  String get whatsapp;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(JaraguaMusicaRecordBuilder builder) => builder
    ..nome = ''
    ..ativo = false
    ..img = ''
    ..igreja = ''
    ..whatsapp = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jaragua_musica');

  static Stream<JaraguaMusicaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<JaraguaMusicaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  JaraguaMusicaRecord._();
  factory JaraguaMusicaRecord(
          [void Function(JaraguaMusicaRecordBuilder) updates]) =
      _$JaraguaMusicaRecord;

  static JaraguaMusicaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createJaraguaMusicaRecordData({
  String nome,
  DateTime data,
  bool ativo,
  String img,
  String igreja,
  String whatsapp,
}) =>
    serializers.toFirestore(
        JaraguaMusicaRecord.serializer,
        JaraguaMusicaRecord((j) => j
          ..nome = nome
          ..data = data
          ..ativo = ativo
          ..img = img
          ..igreja = igreja
          ..whatsapp = whatsapp));
