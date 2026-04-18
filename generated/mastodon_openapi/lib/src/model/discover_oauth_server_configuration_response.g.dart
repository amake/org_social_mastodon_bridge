// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_oauth_server_configuration_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DiscoverOauthServerConfigurationResponse
    extends DiscoverOauthServerConfigurationResponse {
  @override
  final String appRegistrationEndpoint;
  @override
  final String authorizationEndpoint;
  @override
  final BuiltList<String> codeChallengeMethodsSupported;
  @override
  final BuiltList<String> grantTypesSupported;
  @override
  final String issuer;
  @override
  final BuiltList<String> responseModesSupported;
  @override
  final BuiltList<String> responseTypesSupported;
  @override
  final String revocationEndpoint;
  @override
  final BuiltList<OAuthScope> scopesSupported;
  @override
  final String serviceDocumentation;
  @override
  final String tokenEndpoint;
  @override
  final BuiltList<String> tokenEndpointAuthMethodsSupported;
  @override
  final String userinfoEndpoint;

  factory _$DiscoverOauthServerConfigurationResponse(
          [void Function(DiscoverOauthServerConfigurationResponseBuilder)?
              updates]) =>
      (DiscoverOauthServerConfigurationResponseBuilder()..update(updates))
          ._build();

  _$DiscoverOauthServerConfigurationResponse._(
      {required this.appRegistrationEndpoint,
      required this.authorizationEndpoint,
      required this.codeChallengeMethodsSupported,
      required this.grantTypesSupported,
      required this.issuer,
      required this.responseModesSupported,
      required this.responseTypesSupported,
      required this.revocationEndpoint,
      required this.scopesSupported,
      required this.serviceDocumentation,
      required this.tokenEndpoint,
      required this.tokenEndpointAuthMethodsSupported,
      required this.userinfoEndpoint})
      : super._();
  @override
  DiscoverOauthServerConfigurationResponse rebuild(
          void Function(DiscoverOauthServerConfigurationResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiscoverOauthServerConfigurationResponseBuilder toBuilder() =>
      DiscoverOauthServerConfigurationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiscoverOauthServerConfigurationResponse &&
        appRegistrationEndpoint == other.appRegistrationEndpoint &&
        authorizationEndpoint == other.authorizationEndpoint &&
        codeChallengeMethodsSupported == other.codeChallengeMethodsSupported &&
        grantTypesSupported == other.grantTypesSupported &&
        issuer == other.issuer &&
        responseModesSupported == other.responseModesSupported &&
        responseTypesSupported == other.responseTypesSupported &&
        revocationEndpoint == other.revocationEndpoint &&
        scopesSupported == other.scopesSupported &&
        serviceDocumentation == other.serviceDocumentation &&
        tokenEndpoint == other.tokenEndpoint &&
        tokenEndpointAuthMethodsSupported ==
            other.tokenEndpointAuthMethodsSupported &&
        userinfoEndpoint == other.userinfoEndpoint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, appRegistrationEndpoint.hashCode);
    _$hash = $jc(_$hash, authorizationEndpoint.hashCode);
    _$hash = $jc(_$hash, codeChallengeMethodsSupported.hashCode);
    _$hash = $jc(_$hash, grantTypesSupported.hashCode);
    _$hash = $jc(_$hash, issuer.hashCode);
    _$hash = $jc(_$hash, responseModesSupported.hashCode);
    _$hash = $jc(_$hash, responseTypesSupported.hashCode);
    _$hash = $jc(_$hash, revocationEndpoint.hashCode);
    _$hash = $jc(_$hash, scopesSupported.hashCode);
    _$hash = $jc(_$hash, serviceDocumentation.hashCode);
    _$hash = $jc(_$hash, tokenEndpoint.hashCode);
    _$hash = $jc(_$hash, tokenEndpointAuthMethodsSupported.hashCode);
    _$hash = $jc(_$hash, userinfoEndpoint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'DiscoverOauthServerConfigurationResponse')
          ..add('appRegistrationEndpoint', appRegistrationEndpoint)
          ..add('authorizationEndpoint', authorizationEndpoint)
          ..add('codeChallengeMethodsSupported', codeChallengeMethodsSupported)
          ..add('grantTypesSupported', grantTypesSupported)
          ..add('issuer', issuer)
          ..add('responseModesSupported', responseModesSupported)
          ..add('responseTypesSupported', responseTypesSupported)
          ..add('revocationEndpoint', revocationEndpoint)
          ..add('scopesSupported', scopesSupported)
          ..add('serviceDocumentation', serviceDocumentation)
          ..add('tokenEndpoint', tokenEndpoint)
          ..add('tokenEndpointAuthMethodsSupported',
              tokenEndpointAuthMethodsSupported)
          ..add('userinfoEndpoint', userinfoEndpoint))
        .toString();
  }
}

class DiscoverOauthServerConfigurationResponseBuilder
    implements
        Builder<DiscoverOauthServerConfigurationResponse,
            DiscoverOauthServerConfigurationResponseBuilder> {
  _$DiscoverOauthServerConfigurationResponse? _$v;

  String? _appRegistrationEndpoint;
  String? get appRegistrationEndpoint => _$this._appRegistrationEndpoint;
  set appRegistrationEndpoint(String? appRegistrationEndpoint) =>
      _$this._appRegistrationEndpoint = appRegistrationEndpoint;

  String? _authorizationEndpoint;
  String? get authorizationEndpoint => _$this._authorizationEndpoint;
  set authorizationEndpoint(String? authorizationEndpoint) =>
      _$this._authorizationEndpoint = authorizationEndpoint;

  ListBuilder<String>? _codeChallengeMethodsSupported;
  ListBuilder<String> get codeChallengeMethodsSupported =>
      _$this._codeChallengeMethodsSupported ??= ListBuilder<String>();
  set codeChallengeMethodsSupported(
          ListBuilder<String>? codeChallengeMethodsSupported) =>
      _$this._codeChallengeMethodsSupported = codeChallengeMethodsSupported;

  ListBuilder<String>? _grantTypesSupported;
  ListBuilder<String> get grantTypesSupported =>
      _$this._grantTypesSupported ??= ListBuilder<String>();
  set grantTypesSupported(ListBuilder<String>? grantTypesSupported) =>
      _$this._grantTypesSupported = grantTypesSupported;

  String? _issuer;
  String? get issuer => _$this._issuer;
  set issuer(String? issuer) => _$this._issuer = issuer;

  ListBuilder<String>? _responseModesSupported;
  ListBuilder<String> get responseModesSupported =>
      _$this._responseModesSupported ??= ListBuilder<String>();
  set responseModesSupported(ListBuilder<String>? responseModesSupported) =>
      _$this._responseModesSupported = responseModesSupported;

  ListBuilder<String>? _responseTypesSupported;
  ListBuilder<String> get responseTypesSupported =>
      _$this._responseTypesSupported ??= ListBuilder<String>();
  set responseTypesSupported(ListBuilder<String>? responseTypesSupported) =>
      _$this._responseTypesSupported = responseTypesSupported;

  String? _revocationEndpoint;
  String? get revocationEndpoint => _$this._revocationEndpoint;
  set revocationEndpoint(String? revocationEndpoint) =>
      _$this._revocationEndpoint = revocationEndpoint;

  ListBuilder<OAuthScope>? _scopesSupported;
  ListBuilder<OAuthScope> get scopesSupported =>
      _$this._scopesSupported ??= ListBuilder<OAuthScope>();
  set scopesSupported(ListBuilder<OAuthScope>? scopesSupported) =>
      _$this._scopesSupported = scopesSupported;

  String? _serviceDocumentation;
  String? get serviceDocumentation => _$this._serviceDocumentation;
  set serviceDocumentation(String? serviceDocumentation) =>
      _$this._serviceDocumentation = serviceDocumentation;

  String? _tokenEndpoint;
  String? get tokenEndpoint => _$this._tokenEndpoint;
  set tokenEndpoint(String? tokenEndpoint) =>
      _$this._tokenEndpoint = tokenEndpoint;

  ListBuilder<String>? _tokenEndpointAuthMethodsSupported;
  ListBuilder<String> get tokenEndpointAuthMethodsSupported =>
      _$this._tokenEndpointAuthMethodsSupported ??= ListBuilder<String>();
  set tokenEndpointAuthMethodsSupported(
          ListBuilder<String>? tokenEndpointAuthMethodsSupported) =>
      _$this._tokenEndpointAuthMethodsSupported =
          tokenEndpointAuthMethodsSupported;

  String? _userinfoEndpoint;
  String? get userinfoEndpoint => _$this._userinfoEndpoint;
  set userinfoEndpoint(String? userinfoEndpoint) =>
      _$this._userinfoEndpoint = userinfoEndpoint;

  DiscoverOauthServerConfigurationResponseBuilder() {
    DiscoverOauthServerConfigurationResponse._defaults(this);
  }

  DiscoverOauthServerConfigurationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appRegistrationEndpoint = $v.appRegistrationEndpoint;
      _authorizationEndpoint = $v.authorizationEndpoint;
      _codeChallengeMethodsSupported =
          $v.codeChallengeMethodsSupported.toBuilder();
      _grantTypesSupported = $v.grantTypesSupported.toBuilder();
      _issuer = $v.issuer;
      _responseModesSupported = $v.responseModesSupported.toBuilder();
      _responseTypesSupported = $v.responseTypesSupported.toBuilder();
      _revocationEndpoint = $v.revocationEndpoint;
      _scopesSupported = $v.scopesSupported.toBuilder();
      _serviceDocumentation = $v.serviceDocumentation;
      _tokenEndpoint = $v.tokenEndpoint;
      _tokenEndpointAuthMethodsSupported =
          $v.tokenEndpointAuthMethodsSupported.toBuilder();
      _userinfoEndpoint = $v.userinfoEndpoint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiscoverOauthServerConfigurationResponse other) {
    _$v = other as _$DiscoverOauthServerConfigurationResponse;
  }

  @override
  void update(
      void Function(DiscoverOauthServerConfigurationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DiscoverOauthServerConfigurationResponse build() => _build();

  _$DiscoverOauthServerConfigurationResponse _build() {
    _$DiscoverOauthServerConfigurationResponse _$result;
    try {
      _$result = _$v ??
          _$DiscoverOauthServerConfigurationResponse._(
            appRegistrationEndpoint: BuiltValueNullFieldError.checkNotNull(
                appRegistrationEndpoint,
                r'DiscoverOauthServerConfigurationResponse',
                'appRegistrationEndpoint'),
            authorizationEndpoint: BuiltValueNullFieldError.checkNotNull(
                authorizationEndpoint,
                r'DiscoverOauthServerConfigurationResponse',
                'authorizationEndpoint'),
            codeChallengeMethodsSupported:
                codeChallengeMethodsSupported.build(),
            grantTypesSupported: grantTypesSupported.build(),
            issuer: BuiltValueNullFieldError.checkNotNull(
                issuer, r'DiscoverOauthServerConfigurationResponse', 'issuer'),
            responseModesSupported: responseModesSupported.build(),
            responseTypesSupported: responseTypesSupported.build(),
            revocationEndpoint: BuiltValueNullFieldError.checkNotNull(
                revocationEndpoint,
                r'DiscoverOauthServerConfigurationResponse',
                'revocationEndpoint'),
            scopesSupported: scopesSupported.build(),
            serviceDocumentation: BuiltValueNullFieldError.checkNotNull(
                serviceDocumentation,
                r'DiscoverOauthServerConfigurationResponse',
                'serviceDocumentation'),
            tokenEndpoint: BuiltValueNullFieldError.checkNotNull(tokenEndpoint,
                r'DiscoverOauthServerConfigurationResponse', 'tokenEndpoint'),
            tokenEndpointAuthMethodsSupported:
                tokenEndpointAuthMethodsSupported.build(),
            userinfoEndpoint: BuiltValueNullFieldError.checkNotNull(
                userinfoEndpoint,
                r'DiscoverOauthServerConfigurationResponse',
                'userinfoEndpoint'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'codeChallengeMethodsSupported';
        codeChallengeMethodsSupported.build();
        _$failedField = 'grantTypesSupported';
        grantTypesSupported.build();

        _$failedField = 'responseModesSupported';
        responseModesSupported.build();
        _$failedField = 'responseTypesSupported';
        responseTypesSupported.build();

        _$failedField = 'scopesSupported';
        scopesSupported.build();

        _$failedField = 'tokenEndpointAuthMethodsSupported';
        tokenEndpointAuthMethodsSupported.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DiscoverOauthServerConfigurationResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
