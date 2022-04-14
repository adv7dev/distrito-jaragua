// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kits_musical_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<KitsMusicalRecord> _$kitsMusicalRecordSerializer =
    new _$KitsMusicalRecordSerializer();

class _$KitsMusicalRecordSerializer
    implements StructuredSerializer<KitsMusicalRecord> {
  @override
  final Iterable<Type> types = const [KitsMusicalRecord, _$KitsMusicalRecord];
  @override
  final String wireName = 'KitsMusicalRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, KitsMusicalRecord object,
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
    value = object.banda;
    if (value != null) {
      result
        ..add('banda')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.urlCantada;
    if (value != null) {
      result
        ..add('url_cantada')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.urlPlayback;
    if (value != null) {
      result
        ..add('url_playback')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.urlSoprano;
    if (value != null) {
      result
        ..add('url_soprano')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.urlContralto;
    if (value != null) {
      result
        ..add('url_contralto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.urlBarito;
    if (value != null) {
      result
        ..add('url_barito')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.urlTenor;
    if (value != null) {
      result
        ..add('url_tenor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.urlBaixo;
    if (value != null) {
      result
        ..add('url_baixo')
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
  KitsMusicalRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new KitsMusicalRecordBuilder();

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
        case 'banda':
          result.banda = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url_cantada':
          result.urlCantada = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url_playback':
          result.urlPlayback = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url_soprano':
          result.urlSoprano = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url_contralto':
          result.urlContralto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url_barito':
          result.urlBarito = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url_tenor':
          result.urlTenor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url_baixo':
          result.urlBaixo = serializers.deserialize(value,
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

class _$KitsMusicalRecord extends KitsMusicalRecord {
  @override
  final String nome;
  @override
  final String banda;
  @override
  final String urlCantada;
  @override
  final String urlPlayback;
  @override
  final String urlSoprano;
  @override
  final String urlContralto;
  @override
  final String urlBarito;
  @override
  final String urlTenor;
  @override
  final String urlBaixo;
  @override
  final DocumentReference<Object> reference;

  factory _$KitsMusicalRecord(
          [void Function(KitsMusicalRecordBuilder) updates]) =>
      (new KitsMusicalRecordBuilder()..update(updates)).build();

  _$KitsMusicalRecord._(
      {this.nome,
      this.banda,
      this.urlCantada,
      this.urlPlayback,
      this.urlSoprano,
      this.urlContralto,
      this.urlBarito,
      this.urlTenor,
      this.urlBaixo,
      this.reference})
      : super._();

  @override
  KitsMusicalRecord rebuild(void Function(KitsMusicalRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KitsMusicalRecordBuilder toBuilder() =>
      new KitsMusicalRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KitsMusicalRecord &&
        nome == other.nome &&
        banda == other.banda &&
        urlCantada == other.urlCantada &&
        urlPlayback == other.urlPlayback &&
        urlSoprano == other.urlSoprano &&
        urlContralto == other.urlContralto &&
        urlBarito == other.urlBarito &&
        urlTenor == other.urlTenor &&
        urlBaixo == other.urlBaixo &&
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
                                $jc($jc($jc(0, nome.hashCode), banda.hashCode),
                                    urlCantada.hashCode),
                                urlPlayback.hashCode),
                            urlSoprano.hashCode),
                        urlContralto.hashCode),
                    urlBarito.hashCode),
                urlTenor.hashCode),
            urlBaixo.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('KitsMusicalRecord')
          ..add('nome', nome)
          ..add('banda', banda)
          ..add('urlCantada', urlCantada)
          ..add('urlPlayback', urlPlayback)
          ..add('urlSoprano', urlSoprano)
          ..add('urlContralto', urlContralto)
          ..add('urlBarito', urlBarito)
          ..add('urlTenor', urlTenor)
          ..add('urlBaixo', urlBaixo)
          ..add('reference', reference))
        .toString();
  }
}

class KitsMusicalRecordBuilder
    implements Builder<KitsMusicalRecord, KitsMusicalRecordBuilder> {
  _$KitsMusicalRecord _$v;

  String _nome;
  String get nome => _$this._nome;
  set nome(String nome) => _$this._nome = nome;

  String _banda;
  String get banda => _$this._banda;
  set banda(String banda) => _$this._banda = banda;

  String _urlCantada;
  String get urlCantada => _$this._urlCantada;
  set urlCantada(String urlCantada) => _$this._urlCantada = urlCantada;

  String _urlPlayback;
  String get urlPlayback => _$this._urlPlayback;
  set urlPlayback(String urlPlayback) => _$this._urlPlayback = urlPlayback;

  String _urlSoprano;
  String get urlSoprano => _$this._urlSoprano;
  set urlSoprano(String urlSoprano) => _$this._urlSoprano = urlSoprano;

  String _urlContralto;
  String get urlContralto => _$this._urlContralto;
  set urlContralto(String urlContralto) => _$this._urlContralto = urlContralto;

  String _urlBarito;
  String get urlBarito => _$this._urlBarito;
  set urlBarito(String urlBarito) => _$this._urlBarito = urlBarito;

  String _urlTenor;
  String get urlTenor => _$this._urlTenor;
  set urlTenor(String urlTenor) => _$this._urlTenor = urlTenor;

  String _urlBaixo;
  String get urlBaixo => _$this._urlBaixo;
  set urlBaixo(String urlBaixo) => _$this._urlBaixo = urlBaixo;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  KitsMusicalRecordBuilder() {
    KitsMusicalRecord._initializeBuilder(this);
  }

  KitsMusicalRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _banda = $v.banda;
      _urlCantada = $v.urlCantada;
      _urlPlayback = $v.urlPlayback;
      _urlSoprano = $v.urlSoprano;
      _urlContralto = $v.urlContralto;
      _urlBarito = $v.urlBarito;
      _urlTenor = $v.urlTenor;
      _urlBaixo = $v.urlBaixo;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KitsMusicalRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KitsMusicalRecord;
  }

  @override
  void update(void Function(KitsMusicalRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$KitsMusicalRecord build() {
    final _$result = _$v ??
        new _$KitsMusicalRecord._(
            nome: nome,
            banda: banda,
            urlCantada: urlCantada,
            urlPlayback: urlPlayback,
            urlSoprano: urlSoprano,
            urlContralto: urlContralto,
            urlBarito: urlBarito,
            urlTenor: urlTenor,
            urlBaixo: urlBaixo,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
