// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipanema_sonoplastia_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IpanemaSonoplastiaRecord> _$ipanemaSonoplastiaRecordSerializer =
    new _$IpanemaSonoplastiaRecordSerializer();

class _$IpanemaSonoplastiaRecordSerializer
    implements StructuredSerializer<IpanemaSonoplastiaRecord> {
  @override
  final Iterable<Type> types = const [
    IpanemaSonoplastiaRecord,
    _$IpanemaSonoplastiaRecord
  ];
  @override
  final String wireName = 'IpanemaSonoplastiaRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, IpanemaSonoplastiaRecord object,
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
  IpanemaSonoplastiaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IpanemaSonoplastiaRecordBuilder();

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

class _$IpanemaSonoplastiaRecord extends IpanemaSonoplastiaRecord {
  @override
  final String nome;
  @override
  final DateTime data;
  @override
  final bool ativo;
  @override
  final String img;
  @override
  final DocumentReference<Object> reference;

  factory _$IpanemaSonoplastiaRecord(
          [void Function(IpanemaSonoplastiaRecordBuilder) updates]) =>
      (new IpanemaSonoplastiaRecordBuilder()..update(updates)).build();

  _$IpanemaSonoplastiaRecord._(
      {this.nome, this.data, this.ativo, this.img, this.reference})
      : super._();

  @override
  IpanemaSonoplastiaRecord rebuild(
          void Function(IpanemaSonoplastiaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpanemaSonoplastiaRecordBuilder toBuilder() =>
      new IpanemaSonoplastiaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpanemaSonoplastiaRecord &&
        nome == other.nome &&
        data == other.data &&
        ativo == other.ativo &&
        img == other.img &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, nome.hashCode), data.hashCode), ativo.hashCode),
            img.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IpanemaSonoplastiaRecord')
          ..add('nome', nome)
          ..add('data', data)
          ..add('ativo', ativo)
          ..add('img', img)
          ..add('reference', reference))
        .toString();
  }
}

class IpanemaSonoplastiaRecordBuilder
    implements
        Builder<IpanemaSonoplastiaRecord, IpanemaSonoplastiaRecordBuilder> {
  _$IpanemaSonoplastiaRecord _$v;

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

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  IpanemaSonoplastiaRecordBuilder() {
    IpanemaSonoplastiaRecord._initializeBuilder(this);
  }

  IpanemaSonoplastiaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _data = $v.data;
      _ativo = $v.ativo;
      _img = $v.img;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpanemaSonoplastiaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpanemaSonoplastiaRecord;
  }

  @override
  void update(void Function(IpanemaSonoplastiaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IpanemaSonoplastiaRecord build() {
    final _$result = _$v ??
        new _$IpanemaSonoplastiaRecord._(
            nome: nome,
            data: data,
            ativo: ativo,
            img: img,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
