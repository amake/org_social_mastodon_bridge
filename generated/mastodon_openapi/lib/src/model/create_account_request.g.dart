// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateAccountRequest extends CreateAccountRequest {
  @override
  final bool agreement;
  @override
  final String email;
  @override
  final String locale;
  @override
  final String password;
  @override
  final String username;
  @override
  final Date? dateOfBirth;
  @override
  final String? reason;

  factory _$CreateAccountRequest(
          [void Function(CreateAccountRequestBuilder)? updates]) =>
      (CreateAccountRequestBuilder()..update(updates))._build();

  _$CreateAccountRequest._(
      {required this.agreement,
      required this.email,
      required this.locale,
      required this.password,
      required this.username,
      this.dateOfBirth,
      this.reason})
      : super._();
  @override
  CreateAccountRequest rebuild(
          void Function(CreateAccountRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateAccountRequestBuilder toBuilder() =>
      CreateAccountRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAccountRequest &&
        agreement == other.agreement &&
        email == other.email &&
        locale == other.locale &&
        password == other.password &&
        username == other.username &&
        dateOfBirth == other.dateOfBirth &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, agreement.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateAccountRequest')
          ..add('agreement', agreement)
          ..add('email', email)
          ..add('locale', locale)
          ..add('password', password)
          ..add('username', username)
          ..add('dateOfBirth', dateOfBirth)
          ..add('reason', reason))
        .toString();
  }
}

class CreateAccountRequestBuilder
    implements Builder<CreateAccountRequest, CreateAccountRequestBuilder> {
  _$CreateAccountRequest? _$v;

  bool? _agreement;
  bool? get agreement => _$this._agreement;
  set agreement(bool? agreement) => _$this._agreement = agreement;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  Date? _dateOfBirth;
  Date? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(Date? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  CreateAccountRequestBuilder() {
    CreateAccountRequest._defaults(this);
  }

  CreateAccountRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _agreement = $v.agreement;
      _email = $v.email;
      _locale = $v.locale;
      _password = $v.password;
      _username = $v.username;
      _dateOfBirth = $v.dateOfBirth;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAccountRequest other) {
    _$v = other as _$CreateAccountRequest;
  }

  @override
  void update(void Function(CreateAccountRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateAccountRequest build() => _build();

  _$CreateAccountRequest _build() {
    final _$result = _$v ??
        _$CreateAccountRequest._(
          agreement: BuiltValueNullFieldError.checkNotNull(
              agreement, r'CreateAccountRequest', 'agreement'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'CreateAccountRequest', 'email'),
          locale: BuiltValueNullFieldError.checkNotNull(
              locale, r'CreateAccountRequest', 'locale'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'CreateAccountRequest', 'password'),
          username: BuiltValueNullFieldError.checkNotNull(
              username, r'CreateAccountRequest', 'username'),
          dateOfBirth: dateOfBirth,
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
