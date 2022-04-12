// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'escala_pastoral_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EscalaPastoralRecord> _$escalaPastoralRecordSerializer =
    new _$EscalaPastoralRecordSerializer();

class _$EscalaPastoralRecordSerializer
    implements StructuredSerializer<EscalaPastoralRecord> {
  @override
  final Iterable<Type> types = const [
    EscalaPastoralRecord,
    _$EscalaPastoralRecord
  ];
  @override
  final String wireName = 'EscalaPastoralRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, EscalaPastoralRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.igreja;
    if (value != null) {
      result
        ..add('igreja')
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
  EscalaPastoralRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EscalaPastoralRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'igreja':
          result.igreja = serializers.deserialize(value,
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

class _$EscalaPastoralRecord extends EscalaPastoralRecord {
  @override
  final String igreja;
  @override
  final DateTime data;
  @override
  final bool ativo;
  @override
  final DocumentReference<Object> reference;

  factory _$EscalaPastoralRecord(
          [void Function(EscalaPastoralRecordBuilder) updates]) =>
      (new EscalaPastoralRecordBuilder()..update(updates)).build();

  _$EscalaPastoralRecord._({this.igreja, this.data, this.ativo, this.reference})
      : super._();

  @override
  EscalaPastoralRecord rebuild(
          void Function(EscalaPastoralRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EscalaPastoralRecordBuilder toBuilder() =>
      new EscalaPastoralRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EscalaPastoralRecord &&
        igreja == other.igreja &&
        data == other.data &&
        ativo == other.ativo &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, igreja.hashCode), data.hashCode), ativo.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EscalaPastoralRecord')
          ..add('igreja', igreja)
          ..add('data', data)
          ..add('ativo', ativo)
          ..add('reference', reference))
        .toString();
  }
}

class EscalaPastoralRecordBuilder
    implements Builder<EscalaPastoralRecord, EscalaPastoralRecordBuilder> {
  _$EscalaPastoralRecord _$v;

  String _igreja;
  String get igreja => _$this._igreja;
  set igreja(String igreja) => _$this._igreja = igreja;

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

  EscalaPastoralRecordBuilder() {
    EscalaPastoralRecord._initializeBuilder(this);
  }

  EscalaPastoralRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _igreja = $v.igreja;
      _data = $v.data;
      _ativo = $v.ativo;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EscalaPastoralRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EscalaPastoralRecord;
  }

  @override
  void update(void Function(EscalaPastoralRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EscalaPastoralRecord build() {
    final _$result = _$v ??
        new _$EscalaPastoralRecord._(
            igreja: igreja, data: data, ativo: ativo, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
