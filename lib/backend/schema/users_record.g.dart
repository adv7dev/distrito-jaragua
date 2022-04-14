// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isFollowed;
    if (value != null) {
      result
        ..add('isFollowed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.admJaragua;
    if (value != null) {
      result
        ..add('adm_jaragua')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.admIpanema;
    if (value != null) {
      result
        ..add('adm_ipanema')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.admPanamericano;
    if (value != null) {
      result
        ..add('adm_panamericano')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.admAurora;
    if (value != null) {
      result
        ..add('adm_aurora')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.capa;
    if (value != null) {
      result
        ..add('capa')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.admGeral;
    if (value != null) {
      result
        ..add('adm_geral')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.postUser;
    if (value != null) {
      result
        ..add('postUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.usuarios;
    if (value != null) {
      result
        ..add('usuarios')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    return result;
  }

  @override
  UsersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isFollowed':
          result.isFollowed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'adm_jaragua':
          result.admJaragua = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'adm_ipanema':
          result.admIpanema = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'adm_panamericano':
          result.admPanamericano = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'adm_aurora':
          result.admAurora = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'capa':
          result.capa = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adm_geral':
          result.admGeral = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'postUser':
          result.postUser = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'usuarios':
          result.usuarios.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$UsersRecord extends UsersRecord {
  @override
  final String displayName;
  @override
  final String email;
  @override
  final String photoUrl;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final String userName;
  @override
  final String bio;
  @override
  final bool isFollowed;
  @override
  final bool admJaragua;
  @override
  final bool admIpanema;
  @override
  final bool admPanamericano;
  @override
  final bool admAurora;
  @override
  final String capa;
  @override
  final bool admGeral;
  @override
  final DocumentReference<Object> postUser;
  @override
  final DocumentReference<Object> reference;
  @override
  final BuiltList<DocumentReference<Object>> usuarios;

  factory _$UsersRecord([void Function(UsersRecordBuilder) updates]) =>
      (new UsersRecordBuilder()..update(updates)).build();

  _$UsersRecord._(
      {this.displayName,
      this.email,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.userName,
      this.bio,
      this.isFollowed,
      this.admJaragua,
      this.admIpanema,
      this.admPanamericano,
      this.admAurora,
      this.capa,
      this.admGeral,
      this.postUser,
      this.reference,
      this.usuarios})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        displayName == other.displayName &&
        email == other.email &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        userName == other.userName &&
        bio == other.bio &&
        isFollowed == other.isFollowed &&
        admJaragua == other.admJaragua &&
        admIpanema == other.admIpanema &&
        admPanamericano == other.admPanamericano &&
        admAurora == other.admAurora &&
        capa == other.capa &&
        admGeral == other.admGeral &&
        postUser == other.postUser &&
        reference == other.reference &&
        usuarios == other.usuarios;
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            displayName
                                                                                .hashCode),
                                                                        email
                                                                            .hashCode),
                                                                    photoUrl
                                                                        .hashCode),
                                                                uid.hashCode),
                                                            createdTime
                                                                .hashCode),
                                                        phoneNumber.hashCode),
                                                    userName.hashCode),
                                                bio.hashCode),
                                            isFollowed.hashCode),
                                        admJaragua.hashCode),
                                    admIpanema.hashCode),
                                admPanamericano.hashCode),
                            admAurora.hashCode),
                        capa.hashCode),
                    admGeral.hashCode),
                postUser.hashCode),
            reference.hashCode),
        usuarios.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersRecord')
          ..add('displayName', displayName)
          ..add('email', email)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('userName', userName)
          ..add('bio', bio)
          ..add('isFollowed', isFollowed)
          ..add('admJaragua', admJaragua)
          ..add('admIpanema', admIpanema)
          ..add('admPanamericano', admPanamericano)
          ..add('admAurora', admAurora)
          ..add('capa', capa)
          ..add('admGeral', admGeral)
          ..add('postUser', postUser)
          ..add('reference', reference)
          ..add('usuarios', usuarios))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord _$v;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  String _bio;
  String get bio => _$this._bio;
  set bio(String bio) => _$this._bio = bio;

  bool _isFollowed;
  bool get isFollowed => _$this._isFollowed;
  set isFollowed(bool isFollowed) => _$this._isFollowed = isFollowed;

  bool _admJaragua;
  bool get admJaragua => _$this._admJaragua;
  set admJaragua(bool admJaragua) => _$this._admJaragua = admJaragua;

  bool _admIpanema;
  bool get admIpanema => _$this._admIpanema;
  set admIpanema(bool admIpanema) => _$this._admIpanema = admIpanema;

  bool _admPanamericano;
  bool get admPanamericano => _$this._admPanamericano;
  set admPanamericano(bool admPanamericano) =>
      _$this._admPanamericano = admPanamericano;

  bool _admAurora;
  bool get admAurora => _$this._admAurora;
  set admAurora(bool admAurora) => _$this._admAurora = admAurora;

  String _capa;
  String get capa => _$this._capa;
  set capa(String capa) => _$this._capa = capa;

  bool _admGeral;
  bool get admGeral => _$this._admGeral;
  set admGeral(bool admGeral) => _$this._admGeral = admGeral;

  DocumentReference<Object> _postUser;
  DocumentReference<Object> get postUser => _$this._postUser;
  set postUser(DocumentReference<Object> postUser) =>
      _$this._postUser = postUser;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ListBuilder<DocumentReference<Object>> _usuarios;
  ListBuilder<DocumentReference<Object>> get usuarios =>
      _$this._usuarios ??= new ListBuilder<DocumentReference<Object>>();
  set usuarios(ListBuilder<DocumentReference<Object>> usuarios) =>
      _$this._usuarios = usuarios;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _email = $v.email;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _userName = $v.userName;
      _bio = $v.bio;
      _isFollowed = $v.isFollowed;
      _admJaragua = $v.admJaragua;
      _admIpanema = $v.admIpanema;
      _admPanamericano = $v.admPanamericano;
      _admAurora = $v.admAurora;
      _capa = $v.capa;
      _admGeral = $v.admGeral;
      _postUser = $v.postUser;
      _reference = $v.reference;
      _usuarios = $v.usuarios?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersRecord build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              displayName: displayName,
              email: email,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              userName: userName,
              bio: bio,
              isFollowed: isFollowed,
              admJaragua: admJaragua,
              admIpanema: admIpanema,
              admPanamericano: admPanamericano,
              admAurora: admAurora,
              capa: capa,
              admGeral: admGeral,
              postUser: postUser,
              reference: reference,
              usuarios: _usuarios?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'usuarios';
        _usuarios?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
