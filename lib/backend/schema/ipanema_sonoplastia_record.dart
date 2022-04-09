import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ipanema_sonoplastia_record.g.dart';

abstract class IpanemaSonoplastiaRecord
    implements
        Built<IpanemaSonoplastiaRecord, IpanemaSonoplastiaRecordBuilder> {
  static Serializer<IpanemaSonoplastiaRecord> get serializer =>
      _$ipanemaSonoplastiaRecordSerializer;

  @nullable
  String get nome;

  @nullable
  DateTime get data;

  @nullable
  bool get ativo;

  @nullable
  String get img;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(IpanemaSonoplastiaRecordBuilder builder) =>
      builder
        ..nome = ''
        ..ativo = false
        ..img = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ipanema_sonoplastia');

  static Stream<IpanemaSonoplastiaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<IpanemaSonoplastiaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  IpanemaSonoplastiaRecord._();
  factory IpanemaSonoplastiaRecord(
          [void Function(IpanemaSonoplastiaRecordBuilder) updates]) =
      _$IpanemaSonoplastiaRecord;

  static IpanemaSonoplastiaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createIpanemaSonoplastiaRecordData({
  String nome,
  DateTime data,
  bool ativo,
  String img,
}) =>
    serializers.toFirestore(
        IpanemaSonoplastiaRecord.serializer,
        IpanemaSonoplastiaRecord((i) => i
          ..nome = nome
          ..data = data
          ..ativo = ativo
          ..img = img));
