// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Application extends Application {
  @override
  final String id;
  @override
  final String name;
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

  factory _$Application([void Function(ApplicationBuilder)? updates]) =>
      (ApplicationBuilder()..update(updates))._build();

  _$Application._(
      {required this.id,
      required this.name,
      this.redirectUri,
      this.redirectUris,
      this.scopes,
      this.vapidKey,
      this.website})
      : super._();
  @override
  Application rebuild(void Function(ApplicationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationBuilder toBuilder() => ApplicationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Application &&
        id == other.id &&
        name == other.name &&
        redirectUri == other.redirectUri &&
        redirectUris == other.redirectUris &&
        scopes == other.scopes &&
        vapidKey == other.vapidKey &&
        website == other.website;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
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
    return (newBuiltValueToStringHelper(r'Application')
          ..add('id', id)
          ..add('name', name)
          ..add('redirectUri', redirectUri)
          ..add('redirectUris', redirectUris)
          ..add('scopes', scopes)
          ..add('vapidKey', vapidKey)
          ..add('website', website))
        .toString();
  }
}

class ApplicationBuilder implements Builder<Application, ApplicationBuilder> {
  _$Application? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

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

  ApplicationBuilder() {
    Application._defaults(this);
  }

  ApplicationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
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
  void replace(Application other) {
    _$v = other as _$Application;
  }

  @override
  void update(void Function(ApplicationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Application build() => _build();

  _$Application _build() {
    _$Application _$result;
    try {
      _$result = _$v ??
          _$Application._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Application', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'Application', 'name'),
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
            r'Application', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
