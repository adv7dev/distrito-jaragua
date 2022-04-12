// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jaragua_sonoplastia_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JaraguaSonoplastiaRecord> _$jaraguaSonoplastiaRecordSerializer =
    new _$JaraguaSonoplastiaRecordSerializer();

class _$JaraguaSonoplastiaRecordSerializer
    implements StructuredSerializer<JaraguaSonoplastiaRecord> {
  @override
  final Iterable<Type> types = const [
    JaraguaSonoplastiaRecord,
    _$JaraguaSonoplastiaRecord
  ];
  @override
  final String wireName = 'JaraguaSonoplastiaRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, JaraguaSonoplastiaRecord object,
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
    value = object.img;
    if (value != null) {
      result
        ..add('img')
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
  JaraguaSonoplastiaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JaraguaSonoplastiaRecordBuilder();

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
        case 'img':
          result.img = serializers.deserialize(value,
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

class _$JaraguaSonoplastiaRecord extends JaraguaSonoplastiaRecord {
  @override
  final String nome;
  @override
  final DateTime data;
  @override
  final String img;
  @override
  final bool ativo;
  @override
  final DocumentReference<Object> reference;

  factory _$JaraguaSonoplastiaRecord(
          [void Function(JaraguaSonoplastiaRecordBuilder) updates]) =>
      (new JaraguaSonoplastiaRecordBuilder()..update(updates)).build();

  _$JaraguaSonoplastiaRecord._(
      {this.nome, this.data, this.img, this.ativo, this.reference})
      : super._();

  @override
  JaraguaSonoplastiaRecord rebuild(
          void Function(JaraguaSonoplastiaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JaraguaSonoplastiaRecordBuilder toBuilder() =>
      new JaraguaSonoplastiaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JaraguaSonoplastiaRecord &&
        nome == other.nome &&
        data == other.data &&
        img == other.img &&
        ativo == other.ativo &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, nome.hashCode), data.hashCode), img.hashCode),
            ativo.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JaraguaSonoplastiaRecord')
          ..add('nome', nome)
          ..add('data', data)
          ..add('img', img)
          ..add('ativo', ativo)
          ..add('reference', reference))
        .toString();
  }
}

class JaraguaSonoplastiaRecordBuilder
    implements
        Builder<JaraguaSonoplastiaRecord, JaraguaSonoplastiaRecordBuilder> {
  _$JaraguaSonoplastiaRecord _$v;

  String _nome;
  String get nome => _$this._nome;
  set nome(String nome) => _$this._nome = nome;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  String _img;
  String get img => _$this._img;
  set img(String img) => _$this._img = img;

  bool _ativo;
  bool get ativo => _$this._ativo;
  set ativo(bool ativo) => _$this._ativo = ativo;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  JaraguaSonoplastiaRecordBuilder() {
    JaraguaSonoplastiaRecord._initializeBuilder(this);
  }

  JaraguaSonoplastiaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _data = $v.data;
      _img = $v.img;
      _ativo = $v.ativo;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JaraguaSonoplastiaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JaraguaSonoplastiaRecord;
  }

  @override
  void update(void Function(JaraguaSonoplastiaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JaraguaSonoplastiaRecord build() {
    final _$result = _$v ??
        new _$JaraguaSonoplastiaRecord._(
            nome: nome,
            data: data,
            img: img,
            ativo: ativo,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
