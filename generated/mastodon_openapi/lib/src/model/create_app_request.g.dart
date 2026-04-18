// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_app_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateAppRequest extends CreateAppRequest {
  @override
  final String clientName;
  @override
  final BuiltList<String> redirectUris;
  @override
  final String? scopes;
  @override
  final String? website;

  factory _$CreateAppRequest(
          [void Function(CreateAppRequestBuilder)? updates]) =>
      (CreateAppRequestBuilder()..update(updates))._build();

  _$CreateAppRequest._(
      {required this.clientName,
      required this.redirectUris,
      this.scopes,
      this.website})
      : super._();
  @override
  CreateAppRequest rebuild(void Function(CreateAppRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateAppRequestBuilder toBuilder() =>
      CreateAppRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAppRequest &&
        clientName == other.clientName &&
        redirectUris == other.redirectUris &&
        scopes == other.scopes &&
        website == other.website;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientName.hashCode);
    _$hash = $jc(_$hash, redirectUris.hashCode);
    _$hash = $jc(_$hash, scopes.hashCode);
    _$hash = $jc(_$hash, website.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateAppRequest')
          ..add('clientName', clientName)
          ..add('redirectUris', redirectUris)
          ..add('scopes', scopes)
          ..add('website', website))
        .toString();
  }
}

class CreateAppRequestBuilder
    implements Builder<CreateAppRequest, CreateAppRequestBuilder> {
  _$CreateAppRequest? _$v;

  String? _clientName;
  String? get clientName => _$this._clientName;
  set clientName(String? clientName) => _$this._clientName = clientName;

  ListBuilder<String>? _redirectUris;
  ListBuilder<String> get redirectUris =>
      _$this._redirectUris ??= ListBuilder<String>();
  set redirectUris(ListBuilder<String>? redirectUris) =>
      _$this._redirectUris = redirectUris;

  String? _scopes;
  String? get scopes => _$this._scopes;
  set scopes(String? scopes) => _$this._scopes = scopes;

  String? _website;
  String? get website => _$this._website;
  set website(String? website) => _$this._website = website;

  CreateAppRequestBuilder() {
    CreateAppRequest._defaults(this);
  }

  CreateAppRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientName = $v.clientName;
      _redirectUris = $v.redirectUris.toBuilder();
      _scopes = $v.scopes;
      _website = $v.website;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAppRequest other) {
    _$v = other as _$CreateAppRequest;
  }

  @override
  void update(void Function(CreateAppRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateAppRequest build() => _build();

  _$CreateAppRequest _build() {
    _$CreateAppRequest _$result;
    try {
      _$result = _$v ??
          _$CreateAppRequest._(
            clientName: BuiltValueNullFieldError.checkNotNull(
                clientName, r'CreateAppRequest', 'clientName'),
            redirectUris: redirectUris.build(),
            scopes: scopes,
            website: website,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'redirectUris';
        redirectUris.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateAppRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
