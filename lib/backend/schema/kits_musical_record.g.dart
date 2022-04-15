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
    value = object.cantada;
    if (value != null) {
      result
        ..add('cantada')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.playback;
    if (value != null) {
      result
        ..add('playback')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tenor;
    if (value != null) {
      result
        ..add('tenor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contralto;
    if (value != null) {
      result
        ..add('contralto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.soprano;
    if (value != null) {
      result
        ..add('soprano')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.baixo;
    if (value != null) {
      result
        ..add('baixo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.barito;
    if (value != null) {
      result
        ..add('barito')
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
    value = object.letras;
    if (value != null) {
      result
        ..add('letras')
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
        case 'cantada':
          result.cantada = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'playback':
          result.playback = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tenor':
          result.tenor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contralto':
          result.contralto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'soprano':
          result.soprano = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'baixo':
          result.baixo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'barito':
          result.barito = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'letras':
          result.letras = serializers.deserialize(value,
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
  final String cantada;
  @override
  final String playback;
  @override
  final String tenor;
  @override
  final String contralto;
  @override
  final String soprano;
  @override
  final String baixo;
  @override
  final String barito;
  @override
  final DateTime data;
  @override
  final String letras;
  @override
  final DocumentReference<Object> reference;

  factory _$KitsMusicalRecord(
          [void Function(KitsMusicalRecordBuilder) updates]) =>
      (new KitsMusicalRecordBuilder()..update(updates)).build();

  _$KitsMusicalRecord._(
      {this.nome,
      this.banda,
      this.cantada,
      this.playback,
      this.tenor,
      this.contralto,
      this.soprano,
      this.baixo,
      this.barito,
      this.data,
      this.letras,
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
        cantada == other.cantada &&
        playback == other.playback &&
        tenor == other.tenor &&
        contralto == other.contralto &&
        soprano == other.soprano &&
        baixo == other.baixo &&
        barito == other.barito &&
        data == other.data &&
        letras == other.letras &&
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, nome.hashCode),
                                                banda.hashCode),
                                            cantada.hashCode),
                                        playback.hashCode),
                                    tenor.hashCode),
                                contralto.hashCode),
                            soprano.hashCode),
                        baixo.hashCode),
                    barito.hashCode),
                data.hashCode),
            letras.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('KitsMusicalRecord')
          ..add('nome', nome)
          ..add('banda', banda)
          ..add('cantada', cantada)
          ..add('playback', playback)
          ..add('tenor', tenor)
          ..add('contralto', contralto)
          ..add('soprano', soprano)
          ..add('baixo', baixo)
          ..add('barito', barito)
          ..add('data', data)
          ..add('letras', letras)
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

  String _cantada;
  String get cantada => _$this._cantada;
  set cantada(String cantada) => _$this._cantada = cantada;

  String _playback;
  String get playback => _$this._playback;
  set playback(String playback) => _$this._playback = playback;

  String _tenor;
  String get tenor => _$this._tenor;
  set tenor(String tenor) => _$this._tenor = tenor;

  String _contralto;
  String get contralto => _$this._contralto;
  set contralto(String contralto) => _$this._contralto = contralto;

  String _soprano;
  String get soprano => _$this._soprano;
  set soprano(String soprano) => _$this._soprano = soprano;

  String _baixo;
  String get baixo => _$this._baixo;
  set baixo(String baixo) => _$this._baixo = baixo;

  String _barito;
  String get barito => _$this._barito;
  set barito(String barito) => _$this._barito = barito;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  String _letras;
  String get letras => _$this._letras;
  set letras(String letras) => _$this._letras = letras;

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
      _cantada = $v.cantada;
      _playback = $v.playback;
      _tenor = $v.tenor;
      _contralto = $v.contralto;
      _soprano = $v.soprano;
      _baixo = $v.baixo;
      _barito = $v.barito;
      _data = $v.data;
      _letras = $v.letras;
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
            cantada: cantada,
            playback: playback,
            tenor: tenor,
            contralto: contralto,
            soprano: soprano,
            baixo: baixo,
            barito: barito,
            data: data,
            letras: letras,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
