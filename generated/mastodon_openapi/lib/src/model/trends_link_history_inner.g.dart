// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trends_link_history_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrendsLinkHistoryInner extends TrendsLinkHistoryInner {
  @override
  final String accounts;
  @override
  final String day;
  @override
  final String uses;

  factory _$TrendsLinkHistoryInner(
          [void Function(TrendsLinkHistoryInnerBuilder)? updates]) =>
      (TrendsLinkHistoryInnerBuilder()..update(updates))._build();

  _$TrendsLinkHistoryInner._(
      {required this.accounts, required this.day, required this.uses})
      : super._();
  @override
  TrendsLinkHistoryInner rebuild(
          void Function(TrendsLinkHistoryInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrendsLinkHistoryInnerBuilder toBuilder() =>
      TrendsLinkHistoryInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrendsLinkHistoryInner &&
        accounts == other.accounts &&
        day == other.day &&
        uses == other.uses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accounts.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, uses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrendsLinkHistoryInner')
          ..add('accounts', accounts)
          ..add('day', day)
          ..add('uses', uses))
        .toString();
  }
}

class TrendsLinkHistoryInnerBuilder
    implements Builder<TrendsLinkHistoryInner, TrendsLinkHistoryInnerBuilder> {
  _$TrendsLinkHistoryInner? _$v;

  String? _accounts;
  String? get accounts => _$this._accounts;
  set accounts(String? accounts) => _$this._accounts = accounts;

  String? _day;
  String? get day => _$this._day;
  set day(String? day) => _$this._day = day;

  String? _uses;
  String? get uses => _$this._uses;
  set uses(String? uses) => _$this._uses = uses;

  TrendsLinkHistoryInnerBuilder() {
    TrendsLinkHistoryInner._defaults(this);
  }

  TrendsLinkHistoryInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accounts = $v.accounts;
      _day = $v.day;
      _uses = $v.uses;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrendsLinkHistoryInner other) {
    _$v = other as _$TrendsLinkHistoryInner;
  }

  @override
  void update(void Function(TrendsLinkHistoryInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrendsLinkHistoryInner build() => _build();

  _$TrendsLinkHistoryInner _build() {
    final _$result = _$v ??
        _$TrendsLinkHistoryInner._(
          accounts: BuiltValueNullFieldError.checkNotNull(
              accounts, r'TrendsLinkHistoryInner', 'accounts'),
          day: BuiltValueNullFieldError.checkNotNull(
              day, r'TrendsLinkHistoryInner', 'day'),
          uses: BuiltValueNullFieldError.checkNotNull(
              uses, r'TrendsLinkHistoryInner', 'uses'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
