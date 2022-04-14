// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aurora_pregadores_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuroraPregadoresRecord> _$auroraPregadoresRecordSerializer =
    new _$AuroraPregadoresRecordSerializer();

class _$AuroraPregadoresRecordSerializer
    implements StructuredSerializer<AuroraPregadoresRecord> {
  @override
  final Iterable<Type> types = const [
    AuroraPregadoresRecord,
    _$AuroraPregadoresRecord
  ];
  @override
  final String wireName = 'AuroraPregadoresRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AuroraPregadoresRecord object,
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
    value = object.ativo;
    if (value != null) {
      result
        ..add('ativo')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.usarios;
    if (value != null) {
      result
        ..add('usarios')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
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
  AuroraPregadoresRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuroraPregadoresRecordBuilder();

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
        case 'igreja':
          result.igreja = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'whatsapp':
          result.whatsapp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ativo':
          result.ativo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'usarios':
          result.usarios.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
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

class _$AuroraPregadoresRecord extends AuroraPregadoresRecord {
  @override
  final String nome;
  @override
  final DateTime data;
  @override
  final String img;
  @override
  final String igreja;
  @override
  final String whatsapp;
  @override
  final bool ativo;
  @override
  final BuiltList<DocumentReference<Object>> usarios;
  @override
  final DocumentReference<Object> reference;

  factory _$AuroraPregadoresRecord(
          [void Function(AuroraPregadoresRecordBuilder) updates]) =>
      (new AuroraPregadoresRecordBuilder()..update(updates)).build();

  _$AuroraPregadoresRecord._(
      {this.nome,
      this.data,
      this.img,
      this.igreja,
      this.whatsapp,
      this.ativo,
      this.usarios,
      this.reference})
      : super._();

  @override
  AuroraPregadoresRecord rebuild(
          void Function(AuroraPregadoresRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuroraPregadoresRecordBuilder toBuilder() =>
      new AuroraPregadoresRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuroraPregadoresRecord &&
        nome == other.nome &&
        data == other.data &&
        img == other.img &&
        igreja == other.igreja &&
        whatsapp == other.whatsapp &&
        ativo == other.ativo &&
        usarios == other.usarios &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, nome.hashCode), data.hashCode),
                            img.hashCode),
                        igreja.hashCode),
                    whatsapp.hashCode),
                ativo.hashCode),
            usarios.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuroraPregadoresRecord')
          ..add('nome', nome)
          ..add('data', data)
          ..add('img', img)
          ..add('igreja', igreja)
          ..add('whatsapp', whatsapp)
          ..add('ativo', ativo)
          ..add('usarios', usarios)
          ..add('reference', reference))
        .toString();
  }
}

class AuroraPregadoresRecordBuilder
    implements Builder<AuroraPregadoresRecord, AuroraPregadoresRecordBuilder> {
  _$AuroraPregadoresRecord _$v;

  String _nome;
  String get nome => _$this._nome;
  set nome(String nome) => _$this._nome = nome;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  String _img;
  String get img => _$this._img;
  set img(String img) => _$this._img = img;

  String _igreja;
  String get igreja => _$this._igreja;
  set igreja(String igreja) => _$this._igreja = igreja;

  String _whatsapp;
  String get whatsapp => _$this._whatsapp;
  set whatsapp(String whatsapp) => _$this._whatsapp = whatsapp;

  bool _ativo;
  bool get ativo => _$this._ativo;
  set ativo(bool ativo) => _$this._ativo = ativo;

  ListBuilder<DocumentReference<Object>> _usarios;
  ListBuilder<DocumentReference<Object>> get usarios =>
      _$this._usarios ??= new ListBuilder<DocumentReference<Object>>();
  set usarios(ListBuilder<DocumentReference<Object>> usarios) =>
      _$this._usarios = usarios;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AuroraPregadoresRecordBuilder() {
    AuroraPregadoresRecord._initializeBuilder(this);
  }

  AuroraPregadoresRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _data = $v.data;
      _img = $v.img;
      _igreja = $v.igreja;
      _whatsapp = $v.whatsapp;
      _ativo = $v.ativo;
      _usarios = $v.usarios?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuroraPregadoresRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuroraPregadoresRecord;
  }

  @override
  void update(void Function(AuroraPregadoresRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuroraPregadoresRecord build() {
    _$AuroraPregadoresRecord _$result;
    try {
      _$result = _$v ??
          new _$AuroraPregadoresRecord._(
              nome: nome,
              data: data,
              img: img,
              igreja: igreja,
              whatsapp: whatsapp,
              ativo: ativo,
              usarios: _usarios?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'usarios';
        _usarios?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuroraPregadoresRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
