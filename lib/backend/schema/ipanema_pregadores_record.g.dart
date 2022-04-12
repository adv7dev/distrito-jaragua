// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipanema_pregadores_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IpanemaPregadoresRecord> _$ipanemaPregadoresRecordSerializer =
    new _$IpanemaPregadoresRecordSerializer();

class _$IpanemaPregadoresRecordSerializer
    implements StructuredSerializer<IpanemaPregadoresRecord> {
  @override
  final Iterable<Type> types = const [
    IpanemaPregadoresRecord,
    _$IpanemaPregadoresRecord
  ];
  @override
  final String wireName = 'IpanemaPregadoresRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, IpanemaPregadoresRecord object,
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
  IpanemaPregadoresRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IpanemaPregadoresRecordBuilder();

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
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'whatsapp':
          result.whatsapp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'igreja':
          result.igreja = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$IpanemaPregadoresRecord extends IpanemaPregadoresRecord {
  @override
  final String nome;
  @override
  final String img;
  @override
  final DateTime data;
  @override
  final String whatsapp;
  @override
  final String igreja;
  @override
  final bool ativo;
  @override
  final DocumentReference<Object> reference;

  factory _$IpanemaPregadoresRecord(
          [void Function(IpanemaPregadoresRecordBuilder) updates]) =>
      (new IpanemaPregadoresRecordBuilder()..update(updates)).build();

  _$IpanemaPregadoresRecord._(
      {this.nome,
      this.img,
      this.data,
      this.whatsapp,
      this.igreja,
      this.ativo,
      this.reference})
      : super._();

  @override
  IpanemaPregadoresRecord rebuild(
          void Function(IpanemaPregadoresRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpanemaPregadoresRecordBuilder toBuilder() =>
      new IpanemaPregadoresRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpanemaPregadoresRecord &&
        nome == other.nome &&
        img == other.img &&
        data == other.data &&
        whatsapp == other.whatsapp &&
        igreja == other.igreja &&
        ativo == other.ativo &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, nome.hashCode), img.hashCode),
                        data.hashCode),
                    whatsapp.hashCode),
                igreja.hashCode),
            ativo.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IpanemaPregadoresRecord')
          ..add('nome', nome)
          ..add('img', img)
          ..add('data', data)
          ..add('whatsapp', whatsapp)
          ..add('igreja', igreja)
          ..add('ativo', ativo)
          ..add('reference', reference))
        .toString();
  }
}

class IpanemaPregadoresRecordBuilder
    implements
        Builder<IpanemaPregadoresRecord, IpanemaPregadoresRecordBuilder> {
  _$IpanemaPregadoresRecord _$v;

  String _nome;
  String get nome => _$this._nome;
  set nome(String nome) => _$this._nome = nome;

  String _img;
  String get img => _$this._img;
  set img(String img) => _$this._img = img;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  String _whatsapp;
  String get whatsapp => _$this._whatsapp;
  set whatsapp(String whatsapp) => _$this._whatsapp = whatsapp;

  String _igreja;
  String get igreja => _$this._igreja;
  set igreja(String igreja) => _$this._igreja = igreja;

  bool _ativo;
  bool get ativo => _$this._ativo;
  set ativo(bool ativo) => _$this._ativo = ativo;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  IpanemaPregadoresRecordBuilder() {
    IpanemaPregadoresRecord._initializeBuilder(this);
  }

  IpanemaPregadoresRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _img = $v.img;
      _data = $v.data;
      _whatsapp = $v.whatsapp;
      _igreja = $v.igreja;
      _ativo = $v.ativo;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpanemaPregadoresRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpanemaPregadoresRecord;
  }

  @override
  void update(void Function(IpanemaPregadoresRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IpanemaPregadoresRecord build() {
    final _$result = _$v ??
        new _$IpanemaPregadoresRecord._(
            nome: nome,
            img: img,
            data: data,
            whatsapp: whatsapp,
            igreja: igreja,
            ativo: ativo,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
