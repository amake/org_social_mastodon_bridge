// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagHistory extends TagHistory {
  @override
  final String accounts;
  @override
  final String day;
  @override
  final String uses;

  factory _$TagHistory([void Function(TagHistoryBuilder)? updates]) =>
      (TagHistoryBuilder()..update(updates))._build();

  _$TagHistory._(
      {required this.accounts, required this.day, required this.uses})
      : super._();
  @override
  TagHistory rebuild(void Function(TagHistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagHistoryBuilder toBuilder() => TagHistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagHistory &&
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
    return (newBuiltValueToStringHelper(r'TagHistory')
          ..add('accounts', accounts)
          ..add('day', day)
          ..add('uses', uses))
        .toString();
  }
}

class TagHistoryBuilder implements Builder<TagHistory, TagHistoryBuilder> {
  _$TagHistory? _$v;

  String? _accounts;
  String? get accounts => _$this._accounts;
  set accounts(String? accounts) => _$this._accounts = accounts;

  String? _day;
  String? get day => _$this._day;
  set day(String? day) => _$this._day = day;

  String? _uses;
  String? get uses => _$this._uses;
  set uses(String? uses) => _$this._uses = uses;

  TagHistoryBuilder() {
    TagHistory._defaults(this);
  }

  TagHistoryBuilder get _$this {
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
  void replace(TagHistory other) {
    _$v = other as _$TagHistory;
  }

  @override
  void update(void Function(TagHistoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagHistory build() => _build();

  _$TagHistory _build() {
    final _$result = _$v ??
        _$TagHistory._(
          accounts: BuiltValueNullFieldError.checkNotNull(
              accounts, r'TagHistory', 'accounts'),
          day: BuiltValueNullFieldError.checkNotNull(day, r'TagHistory', 'day'),
          uses: BuiltValueNullFieldError.checkNotNull(
              uses, r'TagHistory', 'uses'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
