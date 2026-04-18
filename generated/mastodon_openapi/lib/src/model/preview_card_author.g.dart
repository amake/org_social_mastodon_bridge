// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preview_card_author.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreviewCardAuthor extends PreviewCardAuthor {
  @override
  final String name;
  @override
  final String url;
  @override
  final Account? account;

  factory _$PreviewCardAuthor(
          [void Function(PreviewCardAuthorBuilder)? updates]) =>
      (PreviewCardAuthorBuilder()..update(updates))._build();

  _$PreviewCardAuthor._({required this.name, required this.url, this.account})
      : super._();
  @override
  PreviewCardAuthor rebuild(void Function(PreviewCardAuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreviewCardAuthorBuilder toBuilder() =>
      PreviewCardAuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreviewCardAuthor &&
        name == other.name &&
        url == other.url &&
        account == other.account;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreviewCardAuthor')
          ..add('name', name)
          ..add('url', url)
          ..add('account', account))
        .toString();
  }
}

class PreviewCardAuthorBuilder
    implements Builder<PreviewCardAuthor, PreviewCardAuthorBuilder> {
  _$PreviewCardAuthor? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  AccountBuilder? _account;
  AccountBuilder get account => _$this._account ??= AccountBuilder();
  set account(AccountBuilder? account) => _$this._account = account;

  PreviewCardAuthorBuilder() {
    PreviewCardAuthor._defaults(this);
  }

  PreviewCardAuthorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _url = $v.url;
      _account = $v.account?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreviewCardAuthor other) {
    _$v = other as _$PreviewCardAuthor;
  }

  @override
  void update(void Function(PreviewCardAuthorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreviewCardAuthor build() => _build();

  _$PreviewCardAuthor _build() {
    _$PreviewCardAuthor _$result;
    try {
      _$result = _$v ??
          _$PreviewCardAuthor._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PreviewCardAuthor', 'name'),
            url: BuiltValueNullFieldError.checkNotNull(
                url, r'PreviewCardAuthor', 'url'),
            account: _account?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'account';
        _account?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PreviewCardAuthor', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
