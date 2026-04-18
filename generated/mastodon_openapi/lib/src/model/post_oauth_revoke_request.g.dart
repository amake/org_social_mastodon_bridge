// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_oauth_revoke_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostOauthRevokeRequest extends PostOauthRevokeRequest {
  @override
  final String clientId;
  @override
  final String clientSecret;
  @override
  final String token;

  factory _$PostOauthRevokeRequest(
          [void Function(PostOauthRevokeRequestBuilder)? updates]) =>
      (PostOauthRevokeRequestBuilder()..update(updates))._build();

  _$PostOauthRevokeRequest._(
      {required this.clientId, required this.clientSecret, required this.token})
      : super._();
  @override
  PostOauthRevokeRequest rebuild(
          void Function(PostOauthRevokeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostOauthRevokeRequestBuilder toBuilder() =>
      PostOauthRevokeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostOauthRevokeRequest &&
        clientId == other.clientId &&
        clientSecret == other.clientSecret &&
        token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientSecret.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostOauthRevokeRequest')
          ..add('clientId', clientId)
          ..add('clientSecret', clientSecret)
          ..add('token', token))
        .toString();
  }
}

class PostOauthRevokeRequestBuilder
    implements Builder<PostOauthRevokeRequest, PostOauthRevokeRequestBuilder> {
  _$PostOauthRevokeRequest? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  PostOauthRevokeRequestBuilder() {
    PostOauthRevokeRequest._defaults(this);
  }

  PostOauthRevokeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _clientSecret = $v.clientSecret;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostOauthRevokeRequest other) {
    _$v = other as _$PostOauthRevokeRequest;
  }

  @override
  void update(void Function(PostOauthRevokeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostOauthRevokeRequest build() => _build();

  _$PostOauthRevokeRequest _build() {
    final _$result = _$v ??
        _$PostOauthRevokeRequest._(
          clientId: BuiltValueNullFieldError.checkNotNull(
              clientId, r'PostOauthRevokeRequest', 'clientId'),
          clientSecret: BuiltValueNullFieldError.checkNotNull(
              clientSecret, r'PostOauthRevokeRequest', 'clientSecret'),
          token: BuiltValueNullFieldError.checkNotNull(
              token, r'PostOauthRevokeRequest', 'token'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
