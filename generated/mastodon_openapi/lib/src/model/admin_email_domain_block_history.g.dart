// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_email_domain_block_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminEmailDomainBlockHistory extends AdminEmailDomainBlockHistory {
  @override
  final String accounts;
  @override
  final String day;
  @override
  final String uses;

  factory _$AdminEmailDomainBlockHistory(
          [void Function(AdminEmailDomainBlockHistoryBuilder)? updates]) =>
      (AdminEmailDomainBlockHistoryBuilder()..update(updates))._build();

  _$AdminEmailDomainBlockHistory._(
      {required this.accounts, required this.day, required this.uses})
      : super._();
  @override
  AdminEmailDomainBlockHistory rebuild(
          void Function(AdminEmailDomainBlockHistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminEmailDomainBlockHistoryBuilder toBuilder() =>
      AdminEmailDomainBlockHistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminEmailDomainBlockHistory &&
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
    return (newBuiltValueToStringHelper(r'AdminEmailDomainBlockHistory')
          ..add('accounts', accounts)
          ..add('day', day)
          ..add('uses', uses))
        .toString();
  }
}

class AdminEmailDomainBlockHistoryBuilder
    implements
        Builder<AdminEmailDomainBlockHistory,
            AdminEmailDomainBlockHistoryBuilder> {
  _$AdminEmailDomainBlockHistory? _$v;

  String? _accounts;
  String? get accounts => _$this._accounts;
  set accounts(String? accounts) => _$this._accounts = accounts;

  String? _day;
  String? get day => _$this._day;
  set day(String? day) => _$this._day = day;

  String? _uses;
  String? get uses => _$this._uses;
  set uses(String? uses) => _$this._uses = uses;

  AdminEmailDomainBlockHistoryBuilder() {
    AdminEmailDomainBlockHistory._defaults(this);
  }

  AdminEmailDomainBlockHistoryBuilder get _$this {
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
  void replace(AdminEmailDomainBlockHistory other) {
    _$v = other as _$AdminEmailDomainBlockHistory;
  }

  @override
  void update(void Function(AdminEmailDomainBlockHistoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminEmailDomainBlockHistory build() => _build();

  _$AdminEmailDomainBlockHistory _build() {
    final _$result = _$v ??
        _$AdminEmailDomainBlockHistory._(
          accounts: BuiltValueNullFieldError.checkNotNull(
              accounts, r'AdminEmailDomainBlockHistory', 'accounts'),
          day: BuiltValueNullFieldError.checkNotNull(
              day, r'AdminEmailDomainBlockHistory', 'day'),
          uses: BuiltValueNullFieldError.checkNotNull(
              uses, r'AdminEmailDomainBlockHistory', 'uses'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
