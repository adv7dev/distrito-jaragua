import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'aurora_limpeza_record.g.dart';

abstract class AuroraLimpezaRecord
    implements Built<AuroraLimpezaRecord, AuroraLimpezaRecordBuilder> {
  static Serializer<AuroraLimpezaRecord> get serializer =>
      _$auroraLimpezaRecordSerializer;

  @nullable
  String get nome;

  @nullable
  DateTime get data;

  @nullable
  bool get ativo;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AuroraLimpezaRecordBuilder builder) => builder
    ..nome = ''
    ..ativo = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('aurora_limpeza');

  static Stream<AuroraLimpezaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AuroraLimpezaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AuroraLimpezaRecord._();
  factory AuroraLimpezaRecord(
          [void Function(AuroraLimpezaRecordBuilder) updates]) =
      _$AuroraLimpezaRecord;

  static AuroraLimpezaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAuroraLimpezaRecordData({
  String nome,
  DateTime data,
  bool ativo,
}) =>
    serializers.toFirestore(
        AuroraLimpezaRecord.serializer,
        AuroraLimpezaRecord((a) => a
          ..nome = nome
          ..data = data
          ..ativo = ativo));
