// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Search extends Search {
  @override
  final BuiltList<Account> accounts;
  @override
  final BuiltList<Tag> hashtags;
  @override
  final BuiltList<Status> statuses;

  factory _$Search([void Function(SearchBuilder)? updates]) =>
      (SearchBuilder()..update(updates))._build();

  _$Search._(
      {required this.accounts, required this.hashtags, required this.statuses})
      : super._();
  @override
  Search rebuild(void Function(SearchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchBuilder toBuilder() => SearchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Search &&
        accounts == other.accounts &&
        hashtags == other.hashtags &&
        statuses == other.statuses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accounts.hashCode);
    _$hash = $jc(_$hash, hashtags.hashCode);
    _$hash = $jc(_$hash, statuses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Search')
          ..add('accounts', accounts)
          ..add('hashtags', hashtags)
          ..add('statuses', statuses))
        .toString();
  }
}

class SearchBuilder implements Builder<Search, SearchBuilder> {
  _$Search? _$v;

  ListBuilder<Account>? _accounts;
  ListBuilder<Account> get accounts =>
      _$this._accounts ??= ListBuilder<Account>();
  set accounts(ListBuilder<Account>? accounts) => _$this._accounts = accounts;

  ListBuilder<Tag>? _hashtags;
  ListBuilder<Tag> get hashtags => _$this._hashtags ??= ListBuilder<Tag>();
  set hashtags(ListBuilder<Tag>? hashtags) => _$this._hashtags = hashtags;

  ListBuilder<Status>? _statuses;
  ListBuilder<Status> get statuses =>
      _$this._statuses ??= ListBuilder<Status>();
  set statuses(ListBuilder<Status>? statuses) => _$this._statuses = statuses;

  SearchBuilder() {
    Search._defaults(this);
  }

  SearchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accounts = $v.accounts.toBuilder();
      _hashtags = $v.hashtags.toBuilder();
      _statuses = $v.statuses.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Search other) {
    _$v = other as _$Search;
  }

  @override
  void update(void Function(SearchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Search build() => _build();

  _$Search _build() {
    _$Search _$result;
    try {
      _$result = _$v ??
          _$Search._(
            accounts: accounts.build(),
            hashtags: hashtags.build(),
            statuses: statuses.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accounts';
        accounts.build();
        _$failedField = 'hashtags';
        hashtags.build();
        _$failedField = 'statuses';
        statuses.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Search', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
