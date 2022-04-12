// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panamericano_pregadores_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PanamericanoPregadoresRecord>
    _$panamericanoPregadoresRecordSerializer =
    new _$PanamericanoPregadoresRecordSerializer();

class _$PanamericanoPregadoresRecordSerializer
    implements StructuredSerializer<PanamericanoPregadoresRecord> {
  @override
  final Iterable<Type> types = const [
    PanamericanoPregadoresRecord,
    _$PanamericanoPregadoresRecord
  ];
  @override
  final String wireName = 'PanamericanoPregadoresRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PanamericanoPregadoresRecord object,
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
    value = object.ativo;
    if (value != null) {
      result
        ..add('ativo')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  PanamericanoPregadoresRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PanamericanoPregadoresRecordBuilder();

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
        case 'ativo':
          result.ativo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$PanamericanoPregadoresRecord extends PanamericanoPregadoresRecord {
  @override
  final String nome;
  @override
  final bool ativo;
  @override
  final DateTime data;
  @override
  final String igreja;
  @override
  final String whatsapp;
  @override
  final String img;
  @override
  final DocumentReference<Object> reference;

  factory _$PanamericanoPregadoresRecord(
          [void Function(PanamericanoPregadoresRecordBuilder) updates]) =>
      (new PanamericanoPregadoresRecordBuilder()..update(updates)).build();

  _$PanamericanoPregadoresRecord._(
      {this.nome,
      this.ativo,
      this.data,
      this.igreja,
      this.whatsapp,
      this.img,
      this.reference})
      : super._();

  @override
  PanamericanoPregadoresRecord rebuild(
          void Function(PanamericanoPregadoresRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PanamericanoPregadoresRecordBuilder toBuilder() =>
      new PanamericanoPregadoresRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PanamericanoPregadoresRecord &&
        nome == other.nome &&
        ativo == other.ativo &&
        data == other.data &&
        igreja == other.igreja &&
        whatsapp == other.whatsapp &&
        img == other.img &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, nome.hashCode), ativo.hashCode),
                        data.hashCode),
                    igreja.hashCode),
                whatsapp.hashCode),
            img.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PanamericanoPregadoresRecord')
          ..add('nome', nome)
          ..add('ativo', ativo)
          ..add('data', data)
          ..add('igreja', igreja)
          ..add('whatsapp', whatsapp)
          ..add('img', img)
          ..add('reference', reference))
        .toString();
  }
}

class PanamericanoPregadoresRecordBuilder
    implements
        Builder<PanamericanoPregadoresRecord,
            PanamericanoPregadoresRecordBuilder> {
  _$PanamericanoPregadoresRecord _$v;

  String _nome;
  String get nome => _$this._nome;
  set nome(String nome) => _$this._nome = nome;

  bool _ativo;
  bool get ativo => _$this._ativo;
  set ativo(bool ativo) => _$this._ativo = ativo;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  String _igreja;
  String get igreja => _$this._igreja;
  set igreja(String igreja) => _$this._igreja = igreja;

  String _whatsapp;
  String get whatsapp => _$this._whatsapp;
  set whatsapp(String whatsapp) => _$this._whatsapp = whatsapp;

  String _img;
  String get img => _$this._img;
  set img(String img) => _$this._img = img;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PanamericanoPregadoresRecordBuilder() {
    PanamericanoPregadoresRecord._initializeBuilder(this);
  }

  PanamericanoPregadoresRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _ativo = $v.ativo;
      _data = $v.data;
      _igreja = $v.igreja;
      _whatsapp = $v.whatsapp;
      _img = $v.img;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PanamericanoPregadoresRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PanamericanoPregadoresRecord;
  }

  @override
  void update(void Function(PanamericanoPregadoresRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PanamericanoPregadoresRecord build() {
    final _$result = _$v ??
        new _$PanamericanoPregadoresRecord._(
            nome: nome,
            ativo: ativo,
            data: data,
            igreja: igreja,
            whatsapp: whatsapp,
            img: img,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
