// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_oauth_token_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostOauthTokenRequest extends PostOauthTokenRequest {
  @override
  final String clientId;
  @override
  final String clientSecret;
  @override
  final String code;
  @override
  final String grantType;
  @override
  final String redirectUri;
  @override
  final String? codeVerifier;
  @override
  final String? scope;

  factory _$PostOauthTokenRequest(
          [void Function(PostOauthTokenRequestBuilder)? updates]) =>
      (PostOauthTokenRequestBuilder()..update(updates))._build();

  _$PostOauthTokenRequest._(
      {required this.clientId,
      required this.clientSecret,
      required this.code,
      required this.grantType,
      required this.redirectUri,
      this.codeVerifier,
      this.scope})
      : super._();
  @override
  PostOauthTokenRequest rebuild(
          void Function(PostOauthTokenRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostOauthTokenRequestBuilder toBuilder() =>
      PostOauthTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostOauthTokenRequest &&
        clientId == other.clientId &&
        clientSecret == other.clientSecret &&
        code == other.code &&
        grantType == other.grantType &&
        redirectUri == other.redirectUri &&
        codeVerifier == other.codeVerifier &&
        scope == other.scope;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientSecret.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, grantType.hashCode);
    _$hash = $jc(_$hash, redirectUri.hashCode);
    _$hash = $jc(_$hash, codeVerifier.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostOauthTokenRequest')
          ..add('clientId', clientId)
          ..add('clientSecret', clientSecret)
          ..add('code', code)
          ..add('grantType', grantType)
          ..add('redirectUri', redirectUri)
          ..add('codeVerifier', codeVerifier)
          ..add('scope', scope))
        .toString();
  }
}

class PostOauthTokenRequestBuilder
    implements Builder<PostOauthTokenRequest, PostOauthTokenRequestBuilder> {
  _$PostOauthTokenRequest? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _grantType;
  String? get grantType => _$this._grantType;
  set grantType(String? grantType) => _$this._grantType = grantType;

  String? _redirectUri;
  String? get redirectUri => _$this._redirectUri;
  set redirectUri(String? redirectUri) => _$this._redirectUri = redirectUri;

  String? _codeVerifier;
  String? get codeVerifier => _$this._codeVerifier;
  set codeVerifier(String? codeVerifier) => _$this._codeVerifier = codeVerifier;

  String? _scope;
  String? get scope => _$this._scope;
  set scope(String? scope) => _$this._scope = scope;

  PostOauthTokenRequestBuilder() {
    PostOauthTokenRequest._defaults(this);
  }

  PostOauthTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _clientSecret = $v.clientSecret;
      _code = $v.code;
      _grantType = $v.grantType;
      _redirectUri = $v.redirectUri;
      _codeVerifier = $v.codeVerifier;
      _scope = $v.scope;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostOauthTokenRequest other) {
    _$v = other as _$PostOauthTokenRequest;
  }

  @override
  void update(void Function(PostOauthTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostOauthTokenRequest build() => _build();

  _$PostOauthTokenRequest _build() {
    final _$result = _$v ??
        _$PostOauthTokenRequest._(
          clientId: BuiltValueNullFieldError.checkNotNull(
              clientId, r'PostOauthTokenRequest', 'clientId'),
          clientSecret: BuiltValueNullFieldError.checkNotNull(
              clientSecret, r'PostOauthTokenRequest', 'clientSecret'),
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'PostOauthTokenRequest', 'code'),
          grantType: BuiltValueNullFieldError.checkNotNull(
              grantType, r'PostOauthTokenRequest', 'grantType'),
          redirectUri: BuiltValueNullFieldError.checkNotNull(
              redirectUri, r'PostOauthTokenRequest', 'redirectUri'),
          codeVerifier: codeVerifier,
          scope: scope,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
