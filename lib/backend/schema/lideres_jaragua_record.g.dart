// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lideres_jaragua_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LideresJaraguaRecord> _$lideresJaraguaRecordSerializer =
    new _$LideresJaraguaRecordSerializer();

class _$LideresJaraguaRecordSerializer
    implements StructuredSerializer<LideresJaraguaRecord> {
  @override
  final Iterable<Type> types = const [
    LideresJaraguaRecord,
    _$LideresJaraguaRecord
  ];
  @override
  final String wireName = 'LideresJaraguaRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, LideresJaraguaRecord object,
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
    value = object.cargo;
    if (value != null) {
      result
        ..add('cargo')
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
  LideresJaraguaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LideresJaraguaRecordBuilder();

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
        case 'cargo':
          result.cargo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$LideresJaraguaRecord extends LideresJaraguaRecord {
  @override
  final String nome;
  @override
  final String cargo;
  @override
  final String img;
  @override
  final DocumentReference<Object> reference;

  factory _$LideresJaraguaRecord(
          [void Function(LideresJaraguaRecordBuilder) updates]) =>
      (new LideresJaraguaRecordBuilder()..update(updates)).build();

  _$LideresJaraguaRecord._({this.nome, this.cargo, this.img, this.reference})
      : super._();

  @override
  LideresJaraguaRecord rebuild(
          void Function(LideresJaraguaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LideresJaraguaRecordBuilder toBuilder() =>
      new LideresJaraguaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LideresJaraguaRecord &&
        nome == other.nome &&
        cargo == other.cargo &&
        img == other.img &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, nome.hashCode), cargo.hashCode), img.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LideresJaraguaRecord')
          ..add('nome', nome)
          ..add('cargo', cargo)
          ..add('img', img)
          ..add('reference', reference))
        .toString();
  }
}

class LideresJaraguaRecordBuilder
    implements Builder<LideresJaraguaRecord, LideresJaraguaRecordBuilder> {
  _$LideresJaraguaRecord _$v;

  String _nome;
  String get nome => _$this._nome;
  set nome(String nome) => _$this._nome = nome;

  String _cargo;
  String get cargo => _$this._cargo;
  set cargo(String cargo) => _$this._cargo = cargo;

  String _img;
  String get img => _$this._img;
  set img(String img) => _$this._img = img;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  LideresJaraguaRecordBuilder() {
    LideresJaraguaRecord._initializeBuilder(this);
  }

  LideresJaraguaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _cargo = $v.cargo;
      _img = $v.img;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LideresJaraguaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LideresJaraguaRecord;
  }

  @override
  void update(void Function(LideresJaraguaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LideresJaraguaRecord build() {
    final _$result = _$v ??
        new _$LideresJaraguaRecord._(
            nome: nome, cargo: cargo, img: img, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
