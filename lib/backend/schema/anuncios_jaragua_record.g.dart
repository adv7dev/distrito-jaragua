// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anuncios_jaragua_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AnunciosJaraguaRecord> _$anunciosJaraguaRecordSerializer =
    new _$AnunciosJaraguaRecordSerializer();

class _$AnunciosJaraguaRecordSerializer
    implements StructuredSerializer<AnunciosJaraguaRecord> {
  @override
  final Iterable<Type> types = const [
    AnunciosJaraguaRecord,
    _$AnunciosJaraguaRecord
  ];
  @override
  final String wireName = 'AnunciosJaraguaRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AnunciosJaraguaRecord object,
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
    value = object.video;
    if (value != null) {
      result
        ..add('video')
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
  AnunciosJaraguaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnunciosJaraguaRecordBuilder();

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
        case 'video':
          result.video = serializers.deserialize(value,
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

class _$AnunciosJaraguaRecord extends AnunciosJaraguaRecord {
  @override
  final String titulo;
  @override
  final String descricao;
  @override
  final DateTime data;
  @override
  final String img;
  @override
  final bool ativo;
  @override
  final String local;
  @override
  final String horario;
  @override
  final String video;
  @override
  final DocumentReference<Object> reference;

  factory _$AnunciosJaraguaRecord(
          [void Function(AnunciosJaraguaRecordBuilder) updates]) =>
      (new AnunciosJaraguaRecordBuilder()..update(updates)).build();

  _$AnunciosJaraguaRecord._(
      {this.titulo,
      this.descricao,
      this.data,
      this.img,
      this.ativo,
      this.local,
      this.horario,
      this.video,
      this.reference})
      : super._();

  @override
  AnunciosJaraguaRecord rebuild(
          void Function(AnunciosJaraguaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnunciosJaraguaRecordBuilder toBuilder() =>
      new AnunciosJaraguaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnunciosJaraguaRecord &&
        titulo == other.titulo &&
        descricao == other.descricao &&
        data == other.data &&
        img == other.img &&
        ativo == other.ativo &&
        local == other.local &&
        horario == other.horario &&
        video == other.video &&
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
                        ativo.hashCode),
                    local.hashCode),
                horario.hashCode),
            video.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AnunciosJaraguaRecord')
          ..add('titulo', titulo)
          ..add('descricao', descricao)
          ..add('data', data)
          ..add('img', img)
          ..add('ativo', ativo)
          ..add('local', local)
          ..add('horario', horario)
          ..add('video', video)
          ..add('reference', reference))
        .toString();
  }
}

class AnunciosJaraguaRecordBuilder
    implements Builder<AnunciosJaraguaRecord, AnunciosJaraguaRecordBuilder> {
  _$AnunciosJaraguaRecord _$v;

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

  bool _ativo;
  bool get ativo => _$this._ativo;
  set ativo(bool ativo) => _$this._ativo = ativo;

  String _local;
  String get local => _$this._local;
  set local(String local) => _$this._local = local;

  String _horario;
  String get horario => _$this._horario;
  set horario(String horario) => _$this._horario = horario;

  String _video;
  String get video => _$this._video;
  set video(String video) => _$this._video = video;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AnunciosJaraguaRecordBuilder() {
    AnunciosJaraguaRecord._initializeBuilder(this);
  }

  AnunciosJaraguaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _titulo = $v.titulo;
      _descricao = $v.descricao;
      _data = $v.data;
      _img = $v.img;
      _ativo = $v.ativo;
      _local = $v.local;
      _horario = $v.horario;
      _video = $v.video;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnunciosJaraguaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnunciosJaraguaRecord;
  }

  @override
  void update(void Function(AnunciosJaraguaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AnunciosJaraguaRecord build() {
    final _$result = _$v ??
        new _$AnunciosJaraguaRecord._(
            titulo: titulo,
            descricao: descricao,
            data: data,
            img: img,
            ativo: ativo,
            local: local,
            horario: horario,
            video: video,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
