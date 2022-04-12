// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aurora_sabatina_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuroraSabatinaRecord> _$auroraSabatinaRecordSerializer =
    new _$AuroraSabatinaRecordSerializer();

class _$AuroraSabatinaRecordSerializer
    implements StructuredSerializer<AuroraSabatinaRecord> {
  @override
  final Iterable<Type> types = const [
    AuroraSabatinaRecord,
    _$AuroraSabatinaRecord
  ];
  @override
  final String wireName = 'AuroraSabatinaRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AuroraSabatinaRecord object,
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
  AuroraSabatinaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuroraSabatinaRecordBuilder();

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

class _$AuroraSabatinaRecord extends AuroraSabatinaRecord {
  @override
  final String nome;
  @override
  final DateTime data;
  @override
  final bool ativo;
  @override
  final DocumentReference<Object> reference;

  factory _$AuroraSabatinaRecord(
          [void Function(AuroraSabatinaRecordBuilder) updates]) =>
      (new AuroraSabatinaRecordBuilder()..update(updates)).build();

  _$AuroraSabatinaRecord._({this.nome, this.data, this.ativo, this.reference})
      : super._();

  @override
  AuroraSabatinaRecord rebuild(
          void Function(AuroraSabatinaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuroraSabatinaRecordBuilder toBuilder() =>
      new AuroraSabatinaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuroraSabatinaRecord &&
        nome == other.nome &&
        data == other.data &&
        ativo == other.ativo &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, nome.hashCode), data.hashCode), ativo.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuroraSabatinaRecord')
          ..add('nome', nome)
          ..add('data', data)
          ..add('ativo', ativo)
          ..add('reference', reference))
        .toString();
  }
}

class AuroraSabatinaRecordBuilder
    implements Builder<AuroraSabatinaRecord, AuroraSabatinaRecordBuilder> {
  _$AuroraSabatinaRecord _$v;

  String _nome;
  String get nome => _$this._nome;
  set nome(String nome) => _$this._nome = nome;

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

  AuroraSabatinaRecordBuilder() {
    AuroraSabatinaRecord._initializeBuilder(this);
  }

  AuroraSabatinaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _data = $v.data;
      _ativo = $v.ativo;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuroraSabatinaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuroraSabatinaRecord;
  }

  @override
  void update(void Function(AuroraSabatinaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuroraSabatinaRecord build() {
    final _$result = _$v ??
        new _$AuroraSabatinaRecord._(
            nome: nome, data: data, ativo: ativo, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
