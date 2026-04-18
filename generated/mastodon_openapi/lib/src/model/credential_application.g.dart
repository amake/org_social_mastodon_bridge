// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_application.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialApplication extends CredentialApplication {
  @override
  final String clientId;
  @override
  final String clientSecret;
  @override
  final String id;
  @override
  final String name;
  @override
  final int? clientSecretExpiresAt;
  @override
  final String? redirectUri;
  @override
  final BuiltList<String>? redirectUris;
  @override
  final BuiltList<OAuthScope>? scopes;
  @override
  final String? vapidKey;
  @override
  final String? website;

  factory _$CredentialApplication(
          [void Function(CredentialApplicationBuilder)? updates]) =>
      (CredentialApplicationBuilder()..update(updates))._build();

  _$CredentialApplication._(
      {required this.clientId,
      required this.clientSecret,
      required this.id,
      required this.name,
      this.clientSecretExpiresAt,
      this.redirectUri,
      this.redirectUris,
      this.scopes,
      this.vapidKey,
      this.website})
      : super._();
  @override
  CredentialApplication rebuild(
          void Function(CredentialApplicationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialApplicationBuilder toBuilder() =>
      CredentialApplicationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialApplication &&
        clientId == other.clientId &&
        clientSecret == other.clientSecret &&
        id == other.id &&
        name == other.name &&
        clientSecretExpiresAt == other.clientSecretExpiresAt &&
        redirectUri == other.redirectUri &&
        redirectUris == other.redirectUris &&
        scopes == other.scopes &&
        vapidKey == other.vapidKey &&
        website == other.website;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientSecret.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, clientSecretExpiresAt.hashCode);
    _$hash = $jc(_$hash, redirectUri.hashCode);
    _$hash = $jc(_$hash, redirectUris.hashCode);
    _$hash = $jc(_$hash, scopes.hashCode);
    _$hash = $jc(_$hash, vapidKey.hashCode);
    _$hash = $jc(_$hash, website.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CredentialApplication')
          ..add('clientId', clientId)
          ..add('clientSecret', clientSecret)
          ..add('id', id)
          ..add('name', name)
          ..add('clientSecretExpiresAt', clientSecretExpiresAt)
          ..add('redirectUri', redirectUri)
          ..add('redirectUris', redirectUris)
          ..add('scopes', scopes)
          ..add('vapidKey', vapidKey)
          ..add('website', website))
        .toString();
  }
}

class CredentialApplicationBuilder
    implements Builder<CredentialApplication, CredentialApplicationBuilder> {
  _$CredentialApplication? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _clientSecretExpiresAt;
  int? get clientSecretExpiresAt => _$this._clientSecretExpiresAt;
  set clientSecretExpiresAt(int? clientSecretExpiresAt) =>
      _$this._clientSecretExpiresAt = clientSecretExpiresAt;

  String? _redirectUri;
  String? get redirectUri => _$this._redirectUri;
  set redirectUri(String? redirectUri) => _$this._redirectUri = redirectUri;

  ListBuilder<String>? _redirectUris;
  ListBuilder<String> get redirectUris =>
      _$this._redirectUris ??= ListBuilder<String>();
  set redirectUris(ListBuilder<String>? redirectUris) =>
      _$this._redirectUris = redirectUris;

  ListBuilder<OAuthScope>? _scopes;
  ListBuilder<OAuthScope> get scopes =>
      _$this._scopes ??= ListBuilder<OAuthScope>();
  set scopes(ListBuilder<OAuthScope>? scopes) => _$this._scopes = scopes;

  String? _vapidKey;
  String? get vapidKey => _$this._vapidKey;
  set vapidKey(String? vapidKey) => _$this._vapidKey = vapidKey;

  String? _website;
  String? get website => _$this._website;
  set website(String? website) => _$this._website = website;

  CredentialApplicationBuilder() {
    CredentialApplication._defaults(this);
  }

  CredentialApplicationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _clientSecret = $v.clientSecret;
      _id = $v.id;
      _name = $v.name;
      _clientSecretExpiresAt = $v.clientSecretExpiresAt;
      _redirectUri = $v.redirectUri;
      _redirectUris = $v.redirectUris?.toBuilder();
      _scopes = $v.scopes?.toBuilder();
      _vapidKey = $v.vapidKey;
      _website = $v.website;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialApplication other) {
    _$v = other as _$CredentialApplication;
  }

  @override
  void update(void Function(CredentialApplicationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialApplication build() => _build();

  _$CredentialApplication _build() {
    _$CredentialApplication _$result;
    try {
      _$result = _$v ??
          _$CredentialApplication._(
            clientId: BuiltValueNullFieldError.checkNotNull(
                clientId, r'CredentialApplication', 'clientId'),
            clientSecret: BuiltValueNullFieldError.checkNotNull(
                clientSecret, r'CredentialApplication', 'clientSecret'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'CredentialApplication', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CredentialApplication', 'name'),
            clientSecretExpiresAt: clientSecretExpiresAt,
            redirectUri: redirectUri,
            redirectUris: _redirectUris?.build(),
            scopes: _scopes?.build(),
            vapidKey: vapidKey,
            website: website,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'redirectUris';
        _redirectUris?.build();
        _$failedField = 'scopes';
        _scopes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CredentialApplication', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
