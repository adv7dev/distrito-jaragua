// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anuncios_panamericano_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AnunciosPanamericanoRecord> _$anunciosPanamericanoRecordSerializer =
    new _$AnunciosPanamericanoRecordSerializer();

class _$AnunciosPanamericanoRecordSerializer
    implements StructuredSerializer<AnunciosPanamericanoRecord> {
  @override
  final Iterable<Type> types = const [
    AnunciosPanamericanoRecord,
    _$AnunciosPanamericanoRecord
  ];
  @override
  final String wireName = 'AnunciosPanamericanoRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AnunciosPanamericanoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
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
    value = object.video;
    if (value != null) {
      result
        ..add('video')
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
    value = object.local;
    if (value != null) {
      result
        ..add('local')
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
  AnunciosPanamericanoRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnunciosPanamericanoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'descricao':
          result.descricao = serializers.deserialize(value,
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
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ativo':
          result.ativo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'local':
          result.local = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'horario':
          result.horario = serializers.deserialize(value,
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

class _$AnunciosPanamericanoRecord extends AnunciosPanamericanoRecord {
  @override
  final String titulo;
  @override
  final String descricao;
  @override
  final DateTime data;
  @override
  final String img;
  @override
  final String video;
  @override
  final bool ativo;
  @override
  final String local;
  @override
  final String horario;
  @override
  final DocumentReference<Object> reference;

  factory _$AnunciosPanamericanoRecord(
          [void Function(AnunciosPanamericanoRecordBuilder) updates]) =>
      (new AnunciosPanamericanoRecordBuilder()..update(updates)).build();

  _$AnunciosPanamericanoRecord._(
      {this.titulo,
      this.descricao,
      this.data,
      this.img,
      this.video,
      this.ativo,
      this.local,
      this.horario,
      this.reference})
      : super._();

  @override
  AnunciosPanamericanoRecord rebuild(
          void Function(AnunciosPanamericanoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnunciosPanamericanoRecordBuilder toBuilder() =>
      new AnunciosPanamericanoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnunciosPanamericanoRecord &&
        titulo == other.titulo &&
        descricao == other.descricao &&
        data == other.data &&
        img == other.img &&
        video == other.video &&
        ativo == other.ativo &&
        local == other.local &&
        horario == other.horario &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, titulo.hashCode),
                                    descricao.hashCode),
                                data.hashCode),
                            img.hashCode),
                        video.hashCode),
                    ativo.hashCode),
                local.hashCode),
            horario.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AnunciosPanamericanoRecord')
          ..add('titulo', titulo)
          ..add('descricao', descricao)
          ..add('data', data)
          ..add('img', img)
          ..add('video', video)
          ..add('ativo', ativo)
          ..add('local', local)
          ..add('horario', horario)
          ..add('reference', reference))
        .toString();
  }
}

class AnunciosPanamericanoRecordBuilder
    implements
        Builder<AnunciosPanamericanoRecord, AnunciosPanamericanoRecordBuilder> {
  _$AnunciosPanamericanoRecord _$v;

  String _titulo;
  String get titulo => _$this._titulo;
  set titulo(String titulo) => _$this._titulo = titulo;

  String _descricao;
  String get descricao => _$this._descricao;
  set descricao(String descricao) => _$this._descricao = descricao;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  String _img;
  String get img => _$this._img;
  set img(String img) => _$this._img = img;

  String _video;
  String get video => _$this._video;
  set video(String video) => _$this._video = video;

  bool _ativo;
  bool get ativo => _$this._ativo;
  set ativo(bool ativo) => _$this._ativo = ativo;

  String _local;
  String get local => _$this._local;
  set local(String local) => _$this._local = local;

  String _horario;
  String get horario => _$this._horario;
  set horario(String horario) => _$this._horario = horario;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AnunciosPanamericanoRecordBuilder() {
    AnunciosPanamericanoRecord._initializeBuilder(this);
  }

  AnunciosPanamericanoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _titulo = $v.titulo;
      _descricao = $v.descricao;
      _data = $v.data;
      _img = $v.img;
      _video = $v.video;
      _ativo = $v.ativo;
      _local = $v.local;
      _horario = $v.horario;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnunciosPanamericanoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnunciosPanamericanoRecord;
  }

  @override
  void update(void Function(AnunciosPanamericanoRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AnunciosPanamericanoRecord build() {
    final _$result = _$v ??
        new _$AnunciosPanamericanoRecord._(
            titulo: titulo,
            descricao: descricao,
            data: data,
            img: img,
            video: video,
            ativo: ativo,
            local: local,
            horario: horario,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
