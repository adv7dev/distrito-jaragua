import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'kits_musical_record.g.dart';

abstract class KitsMusicalRecord
    implements Built<KitsMusicalRecord, KitsMusicalRecordBuilder> {
  static Serializer<KitsMusicalRecord> get serializer =>
      _$kitsMusicalRecordSerializer;

  @nullable
  String get nome;

  @nullable
  String get banda;

  @nullable
  String get cantada;

  @nullable
  String get playback;

  @nullable
  String get tenor;

  @nullable
  String get contralto;

  @nullable
  String get soprano;

  @nullable
  String get baixo;

  @nullable
  String get barito;

  @nullable
  DateTime get data;

  @nullable
  String get letras;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(KitsMusicalRecordBuilder builder) => builder
    ..nome = ''
    ..banda = ''
    ..cantada = ''
    ..playback = ''
    ..tenor = ''
    ..contralto = ''
    ..soprano = ''
    ..baixo = ''
    ..barito = ''
    ..letras = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('kits_musical');

  static Stream<KitsMusicalRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<KitsMusicalRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  KitsMusicalRecord._();
  factory KitsMusicalRecord([void Function(KitsMusicalRecordBuilder) updates]) =
  _$KitsMusicalRecord;

  static KitsMusicalRecord getDocumentFromData(
      Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createKitsMusicalRecordData({
  String nome,
  String banda,
  String cantada,
  String playback,
  String tenor,
  String contralto,
  String soprano,
  String baixo,
  String barito,
  DateTime data,
  String letras,
}) =>
    serializers.toFirestore(
        KitsMusicalRecord.serializer,
        KitsMusicalRecord((k) => k
          ..nome = nome
          ..banda = banda
          ..cantada = cantada
          ..playback = playback
          ..tenor = tenor
          ..contralto = contralto
          ..soprano = soprano
          ..baixo = baixo
          ..barito = barito
          ..data = data
          ..letras = letras));
