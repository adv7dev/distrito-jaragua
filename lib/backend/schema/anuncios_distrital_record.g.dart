// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anuncios_distrital_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AnunciosDistritalRecord> _$anunciosDistritalRecordSerializer =
    new _$AnunciosDistritalRecordSerializer();

class _$AnunciosDistritalRecordSerializer
    implements StructuredSerializer<AnunciosDistritalRecord> {
  @override
  final Iterable<Type> types = const [
    AnunciosDistritalRecord,
    _$AnunciosDistritalRecord
  ];
  @override
  final String wireName = 'AnunciosDistritalRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AnunciosDistritalRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
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
    value = object.local;
    if (value != null) {
      result
        ..add('local')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.titulo;
    if (value != null) {
      result
        ..add('titulo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descricao;
    if (value != null) {
      result
        ..add('descricao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.horario;
    if (value != null) {
      result
        ..add('horario')
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
  AnunciosDistritalRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnunciosDistritalRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'local':
          result.local = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'descricao':
          result.descricao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'horario':
          result.horario = serializers.deserialize(value,
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

class _$AnunciosDistritalRecord extends AnunciosDistritalRecord {
  @override
  final DateTime data;
  @override
  final String img;
  @override
  final String local;
  @override
  final String titulo;
  @override
  final String descricao;
  @override
  final String horario;
  @override
  final bool ativo;
  @override
  final DocumentReference<Object> reference;

  factory _$AnunciosDistritalRecord(
          [void Function(AnunciosDistritalRecordBuilder) updates]) =>
      (new AnunciosDistritalRecordBuilder()..update(updates)).build();

  _$AnunciosDistritalRecord._(
      {this.data,
      this.img,
      this.local,
      this.titulo,
      this.descricao,
      this.horario,
      this.ativo,
      this.reference})
      : super._();

  @override
  AnunciosDistritalRecord rebuild(
          void Function(AnunciosDistritalRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnunciosDistritalRecordBuilder toBuilder() =>
      new AnunciosDistritalRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnunciosDistritalRecord &&
        data == other.data &&
        img == other.img &&
        local == other.local &&
        titulo == other.titulo &&
        descricao == other.descricao &&
        horario == other.horario &&
        ativo == other.ativo &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, data.hashCode), img.hashCode),
                            local.hashCode),
                        titulo.hashCode),
                    descricao.hashCode),
                horario.hashCode),
            ativo.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AnunciosDistritalRecord')
          ..add('data', data)
          ..add('img', img)
          ..add('local', local)
          ..add('titulo', titulo)
          ..add('descricao', descricao)
          ..add('horario', horario)
          ..add('ativo', ativo)
          ..add('reference', reference))
        .toString();
  }
}

class AnunciosDistritalRecordBuilder
    implements
        Builder<AnunciosDistritalRecord, AnunciosDistritalRecordBuilder> {
  _$AnunciosDistritalRecord _$v;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  String _img;
  String get img => _$this._img;
  set img(String img) => _$this._img = img;

  String _local;
  String get local => _$this._local;
  set local(String local) => _$this._local = local;

  String _titulo;
  String get titulo => _$this._titulo;
  set titulo(String titulo) => _$this._titulo = titulo;

  String _descricao;
  String get descricao => _$this._descricao;
  set descricao(String descricao) => _$this._descricao = descricao;

  String _horario;
  String get horario => _$this._horario;
  set horario(String horario) => _$this._horario = horario;

  bool _ativo;
  bool get ativo => _$this._ativo;
  set ativo(bool ativo) => _$this._ativo = ativo;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AnunciosDistritalRecordBuilder() {
    AnunciosDistritalRecord._initializeBuilder(this);
  }

  AnunciosDistritalRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _img = $v.img;
      _local = $v.local;
      _titulo = $v.titulo;
      _descricao = $v.descricao;
      _horario = $v.horario;
      _ativo = $v.ativo;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnunciosDistritalRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnunciosDistritalRecord;
  }

  @override
  void update(void Function(AnunciosDistritalRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AnunciosDistritalRecord build() {
    final _$result = _$v ??
        new _$AnunciosDistritalRecord._(
            data: data,
            img: img,
            local: local,
            titulo: titulo,
            descricao: descricao,
            horario: horario,
            ativo: ativo,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
