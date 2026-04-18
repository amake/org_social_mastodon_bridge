// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_notification_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1NotificationPolicy extends V1NotificationPolicy {
  @override
  final bool filterNewAccounts;
  @override
  final bool filterNotFollowers;
  @override
  final bool filterNotFollowing;
  @override
  final bool filterPrivateMentions;
  @override
  final NotificationPolicySummary summary;

  factory _$V1NotificationPolicy(
          [void Function(V1NotificationPolicyBuilder)? updates]) =>
      (V1NotificationPolicyBuilder()..update(updates))._build();

  _$V1NotificationPolicy._(
      {required this.filterNewAccounts,
      required this.filterNotFollowers,
      required this.filterNotFollowing,
      required this.filterPrivateMentions,
      required this.summary})
      : super._();
  @override
  V1NotificationPolicy rebuild(
          void Function(V1NotificationPolicyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1NotificationPolicyBuilder toBuilder() =>
      V1NotificationPolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1NotificationPolicy &&
        filterNewAccounts == other.filterNewAccounts &&
        filterNotFollowers == other.filterNotFollowers &&
        filterNotFollowing == other.filterNotFollowing &&
        filterPrivateMentions == other.filterPrivateMentions &&
        summary == other.summary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filterNewAccounts.hashCode);
    _$hash = $jc(_$hash, filterNotFollowers.hashCode);
    _$hash = $jc(_$hash, filterNotFollowing.hashCode);
    _$hash = $jc(_$hash, filterPrivateMentions.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1NotificationPolicy')
          ..add('filterNewAccounts', filterNewAccounts)
          ..add('filterNotFollowers', filterNotFollowers)
          ..add('filterNotFollowing', filterNotFollowing)
          ..add('filterPrivateMentions', filterPrivateMentions)
          ..add('summary', summary))
        .toString();
  }
}

class V1NotificationPolicyBuilder
    implements Builder<V1NotificationPolicy, V1NotificationPolicyBuilder> {
  _$V1NotificationPolicy? _$v;

  bool? _filterNewAccounts;
  bool? get filterNewAccounts => _$this._filterNewAccounts;
  set filterNewAccounts(bool? filterNewAccounts) =>
      _$this._filterNewAccounts = filterNewAccounts;

  bool? _filterNotFollowers;
  bool? get filterNotFollowers => _$this._filterNotFollowers;
  set filterNotFollowers(bool? filterNotFollowers) =>
      _$this._filterNotFollowers = filterNotFollowers;

  bool? _filterNotFollowing;
  bool? get filterNotFollowing => _$this._filterNotFollowing;
  set filterNotFollowing(bool? filterNotFollowing) =>
      _$this._filterNotFollowing = filterNotFollowing;

  bool? _filterPrivateMentions;
  bool? get filterPrivateMentions => _$this._filterPrivateMentions;
  set filterPrivateMentions(bool? filterPrivateMentions) =>
      _$this._filterPrivateMentions = filterPrivateMentions;

  NotificationPolicySummaryBuilder? _summary;
  NotificationPolicySummaryBuilder get summary =>
      _$this._summary ??= NotificationPolicySummaryBuilder();
  set summary(NotificationPolicySummaryBuilder? summary) =>
      _$this._summary = summary;

  V1NotificationPolicyBuilder() {
    V1NotificationPolicy._defaults(this);
  }

  V1NotificationPolicyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filterNewAccounts = $v.filterNewAccounts;
      _filterNotFollowers = $v.filterNotFollowers;
      _filterNotFollowing = $v.filterNotFollowing;
      _filterPrivateMentions = $v.filterPrivateMentions;
      _summary = $v.summary.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1NotificationPolicy other) {
    _$v = other as _$V1NotificationPolicy;
  }

  @override
  void update(void Function(V1NotificationPolicyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1NotificationPolicy build() => _build();

  _$V1NotificationPolicy _build() {
    _$V1NotificationPolicy _$result;
    try {
      _$result = _$v ??
          _$V1NotificationPolicy._(
            filterNewAccounts: BuiltValueNullFieldError.checkNotNull(
                filterNewAccounts,
                r'V1NotificationPolicy',
                'filterNewAccounts'),
            filterNotFollowers: BuiltValueNullFieldError.checkNotNull(
                filterNotFollowers,
                r'V1NotificationPolicy',
                'filterNotFollowers'),
            filterNotFollowing: BuiltValueNullFieldError.checkNotNull(
                filterNotFollowing,
                r'V1NotificationPolicy',
                'filterNotFollowing'),
            filterPrivateMentions: BuiltValueNullFieldError.checkNotNull(
                filterPrivateMentions,
                r'V1NotificationPolicy',
                'filterPrivateMentions'),
            summary: summary.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'summary';
        summary.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'V1NotificationPolicy', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
