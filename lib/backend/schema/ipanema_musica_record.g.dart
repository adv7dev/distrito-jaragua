// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipanema_musica_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IpanemaMusicaRecord> _$ipanemaMusicaRecordSerializer =
    new _$IpanemaMusicaRecordSerializer();

class _$IpanemaMusicaRecordSerializer
    implements StructuredSerializer<IpanemaMusicaRecord> {
  @override
  final Iterable<Type> types = const [
    IpanemaMusicaRecord,
    _$IpanemaMusicaRecord
  ];
  @override
  final String wireName = 'IpanemaMusicaRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, IpanemaMusicaRecord object,
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
    value = object.img;
    if (value != null) {
      result
        ..add('img')
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
    value = object.igreja;
    if (value != null) {
      result
        ..add('igreja')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  IpanemaMusicaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IpanemaMusicaRecordBuilder();

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
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'ativo':
          result.ativo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'whatsapp':
          result.whatsapp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'igreja':
          result.igreja = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$IpanemaMusicaRecord extends IpanemaMusicaRecord {
  @override
  final String nome;
  @override
  final DateTime data;
  @override
  final bool ativo;
  @override
  final String img;
  @override
  final String whatsapp;
  @override
  final String igreja;
  @override
  final DocumentReference<Object> reference;

  factory _$IpanemaMusicaRecord(
          [void Function(IpanemaMusicaRecordBuilder) updates]) =>
      (new IpanemaMusicaRecordBuilder()..update(updates)).build();

  _$IpanemaMusicaRecord._(
      {this.nome,
      this.data,
      this.ativo,
      this.img,
      this.whatsapp,
      this.igreja,
      this.reference})
      : super._();

  @override
  IpanemaMusicaRecord rebuild(
          void Function(IpanemaMusicaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpanemaMusicaRecordBuilder toBuilder() =>
      new IpanemaMusicaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpanemaMusicaRecord &&
        nome == other.nome &&
        data == other.data &&
        ativo == other.ativo &&
        img == other.img &&
        whatsapp == other.whatsapp &&
        igreja == other.igreja &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, nome.hashCode), data.hashCode),
                        ativo.hashCode),
                    img.hashCode),
                whatsapp.hashCode),
            igreja.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IpanemaMusicaRecord')
          ..add('nome', nome)
          ..add('data', data)
          ..add('ativo', ativo)
          ..add('img', img)
          ..add('whatsapp', whatsapp)
          ..add('igreja', igreja)
          ..add('reference', reference))
        .toString();
  }
}

class IpanemaMusicaRecordBuilder
    implements Builder<IpanemaMusicaRecord, IpanemaMusicaRecordBuilder> {
  _$IpanemaMusicaRecord _$v;

  String _nome;
  String get nome => _$this._nome;
  set nome(String nome) => _$this._nome = nome;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  bool _ativo;
  bool get ativo => _$this._ativo;
  set ativo(bool ativo) => _$this._ativo = ativo;

  String _img;
  String get img => _$this._img;
  set img(String img) => _$this._img = img;

  String _whatsapp;
  String get whatsapp => _$this._whatsapp;
  set whatsapp(String whatsapp) => _$this._whatsapp = whatsapp;

  String _igreja;
  String get igreja => _$this._igreja;
  set igreja(String igreja) => _$this._igreja = igreja;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  IpanemaMusicaRecordBuilder() {
    IpanemaMusicaRecord._initializeBuilder(this);
  }

  IpanemaMusicaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _data = $v.data;
      _ativo = $v.ativo;
      _img = $v.img;
      _whatsapp = $v.whatsapp;
      _igreja = $v.igreja;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpanemaMusicaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpanemaMusicaRecord;
  }

  @override
  void update(void Function(IpanemaMusicaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IpanemaMusicaRecord build() {
    final _$result = _$v ??
        new _$IpanemaMusicaRecord._(
            nome: nome,
            data: data,
            ativo: ativo,
            img: img,
            whatsapp: whatsapp,
            igreja: igreja,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
