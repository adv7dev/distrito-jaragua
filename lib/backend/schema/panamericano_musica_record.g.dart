// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panamericano_musica_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PanamericanoMusicaRecord> _$panamericanoMusicaRecordSerializer =
    new _$PanamericanoMusicaRecordSerializer();

class _$PanamericanoMusicaRecordSerializer
    implements StructuredSerializer<PanamericanoMusicaRecord> {
  @override
  final Iterable<Type> types = const [
    PanamericanoMusicaRecord,
    _$PanamericanoMusicaRecord
  ];
  @override
  final String wireName = 'PanamericanoMusicaRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PanamericanoMusicaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.igreja;
    if (value != null) {
      result
        ..add('igreja')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.whatsapp;
    if (value != null) {
      result
        ..add('whatsapp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.img;
    if (value != null) {
      result
        ..add('img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ativo;
    if (value != null) {
      result
        ..add('ativo')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  PanamericanoMusicaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PanamericanoMusicaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'igreja':
          result.igreja = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'whatsapp':
          result.whatsapp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'ativo':
          result.ativo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$PanamericanoMusicaRecord extends PanamericanoMusicaRecord {
  @override
  final String nome;
  @override
  final String igreja;
  @override
  final String whatsapp;
  @override
  final String img;
  @override
  final DateTime data;
  @override
  final bool ativo;
  @override
  final DocumentReference<Object> reference;

  factory _$PanamericanoMusicaRecord(
          [void Function(PanamericanoMusicaRecordBuilder) updates]) =>
      (new PanamericanoMusicaRecordBuilder()..update(updates)).build();

  _$PanamericanoMusicaRecord._(
      {this.nome,
      this.igreja,
      this.whatsapp,
      this.img,
      this.data,
      this.ativo,
      this.reference})
      : super._();

  @override
  PanamericanoMusicaRecord rebuild(
          void Function(PanamericanoMusicaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PanamericanoMusicaRecordBuilder toBuilder() =>
      new PanamericanoMusicaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PanamericanoMusicaRecord &&
        nome == other.nome &&
        igreja == other.igreja &&
        whatsapp == other.whatsapp &&
        img == other.img &&
        data == other.data &&
        ativo == other.ativo &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, nome.hashCode), igreja.hashCode),
                        whatsapp.hashCode),
                    img.hashCode),
                data.hashCode),
            ativo.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PanamericanoMusicaRecord')
          ..add('nome', nome)
          ..add('igreja', igreja)
          ..add('whatsapp', whatsapp)
          ..add('img', img)
          ..add('data', data)
          ..add('ativo', ativo)
          ..add('reference', reference))
        .toString();
  }
}

class PanamericanoMusicaRecordBuilder
    implements
        Builder<PanamericanoMusicaRecord, PanamericanoMusicaRecordBuilder> {
  _$PanamericanoMusicaRecord _$v;

  String _nome;
  String get nome => _$this._nome;
  set nome(String nome) => _$this._nome = nome;

  String _igreja;
  String get igreja => _$this._igreja;
  set igreja(String igreja) => _$this._igreja = igreja;

  String _whatsapp;
  String get whatsapp => _$this._whatsapp;
  set whatsapp(String whatsapp) => _$this._whatsapp = whatsapp;

  String _img;
  String get img => _$this._img;
  set img(String img) => _$this._img = img;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  bool _ativo;
  bool get ativo => _$this._ativo;
  set ativo(bool ativo) => _$this._ativo = ativo;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PanamericanoMusicaRecordBuilder() {
    PanamericanoMusicaRecord._initializeBuilder(this);
  }

  PanamericanoMusicaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _igreja = $v.igreja;
      _whatsapp = $v.whatsapp;
      _img = $v.img;
      _data = $v.data;
      _ativo = $v.ativo;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PanamericanoMusicaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PanamericanoMusicaRecord;
  }

  @override
  void update(void Function(PanamericanoMusicaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PanamericanoMusicaRecord build() {
    final _$result = _$v ??
        new _$PanamericanoMusicaRecord._(
            nome: nome,
            igreja: igreja,
            whatsapp: whatsapp,
            img: img,
            data: data,
            ativo: ativo,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
