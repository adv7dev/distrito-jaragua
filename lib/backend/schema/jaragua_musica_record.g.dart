// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jaragua_musica_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JaraguaMusicaRecord> _$jaraguaMusicaRecordSerializer =
    new _$JaraguaMusicaRecordSerializer();

class _$JaraguaMusicaRecordSerializer
    implements StructuredSerializer<JaraguaMusicaRecord> {
  @override
  final Iterable<Type> types = const [
    JaraguaMusicaRecord,
    _$JaraguaMusicaRecord
  ];
  @override
  final String wireName = 'JaraguaMusicaRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, JaraguaMusicaRecord object,
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
  JaraguaMusicaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JaraguaMusicaRecordBuilder();

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
        case 'igreja':
          result.igreja = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'whatsapp':
          result.whatsapp = serializers.deserialize(value,
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

class _$JaraguaMusicaRecord extends JaraguaMusicaRecord {
  @override
  final String nome;
  @override
  final DateTime data;
  @override
  final bool ativo;
  @override
  final String img;
  @override
  final String igreja;
  @override
  final String whatsapp;
  @override
  final DocumentReference<Object> reference;

  factory _$JaraguaMusicaRecord(
          [void Function(JaraguaMusicaRecordBuilder) updates]) =>
      (new JaraguaMusicaRecordBuilder()..update(updates)).build();

  _$JaraguaMusicaRecord._(
      {this.nome,
      this.data,
      this.ativo,
      this.img,
      this.igreja,
      this.whatsapp,
      this.reference})
      : super._();

  @override
  JaraguaMusicaRecord rebuild(
          void Function(JaraguaMusicaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JaraguaMusicaRecordBuilder toBuilder() =>
      new JaraguaMusicaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JaraguaMusicaRecord &&
        nome == other.nome &&
        data == other.data &&
        ativo == other.ativo &&
        img == other.img &&
        igreja == other.igreja &&
        whatsapp == other.whatsapp &&
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
                igreja.hashCode),
            whatsapp.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JaraguaMusicaRecord')
          ..add('nome', nome)
          ..add('data', data)
          ..add('ativo', ativo)
          ..add('img', img)
          ..add('igreja', igreja)
          ..add('whatsapp', whatsapp)
          ..add('reference', reference))
        .toString();
  }
}

class JaraguaMusicaRecordBuilder
    implements Builder<JaraguaMusicaRecord, JaraguaMusicaRecordBuilder> {
  _$JaraguaMusicaRecord _$v;

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

  String _igreja;
  String get igreja => _$this._igreja;
  set igreja(String igreja) => _$this._igreja = igreja;

  String _whatsapp;
  String get whatsapp => _$this._whatsapp;
  set whatsapp(String whatsapp) => _$this._whatsapp = whatsapp;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  JaraguaMusicaRecordBuilder() {
    JaraguaMusicaRecord._initializeBuilder(this);
  }

  JaraguaMusicaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _data = $v.data;
      _ativo = $v.ativo;
      _img = $v.img;
      _igreja = $v.igreja;
      _whatsapp = $v.whatsapp;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JaraguaMusicaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JaraguaMusicaRecord;
  }

  @override
  void update(void Function(JaraguaMusicaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JaraguaMusicaRecord build() {
    final _$result = _$v ??
        new _$JaraguaMusicaRecord._(
            nome: nome,
            data: data,
            ativo: ativo,
            img: img,
            igreja: igreja,
            whatsapp: whatsapp,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
