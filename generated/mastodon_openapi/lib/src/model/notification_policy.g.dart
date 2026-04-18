// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationPolicy extends NotificationPolicy {
  @override
  final String forLimitedAccounts;
  @override
  final String forNewAccounts;
  @override
  final String forNotFollowers;
  @override
  final String forNotFollowing;
  @override
  final String forPrivateMentions;
  @override
  final NotificationPolicySummary summary;

  factory _$NotificationPolicy(
          [void Function(NotificationPolicyBuilder)? updates]) =>
      (NotificationPolicyBuilder()..update(updates))._build();

  _$NotificationPolicy._(
      {required this.forLimitedAccounts,
      required this.forNewAccounts,
      required this.forNotFollowers,
      required this.forNotFollowing,
      required this.forPrivateMentions,
      required this.summary})
      : super._();
  @override
  NotificationPolicy rebuild(
          void Function(NotificationPolicyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationPolicyBuilder toBuilder() =>
      NotificationPolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationPolicy &&
        forLimitedAccounts == other.forLimitedAccounts &&
        forNewAccounts == other.forNewAccounts &&
        forNotFollowers == other.forNotFollowers &&
        forNotFollowing == other.forNotFollowing &&
        forPrivateMentions == other.forPrivateMentions &&
        summary == other.summary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, forLimitedAccounts.hashCode);
    _$hash = $jc(_$hash, forNewAccounts.hashCode);
    _$hash = $jc(_$hash, forNotFollowers.hashCode);
    _$hash = $jc(_$hash, forNotFollowing.hashCode);
    _$hash = $jc(_$hash, forPrivateMentions.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationPolicy')
          ..add('forLimitedAccounts', forLimitedAccounts)
          ..add('forNewAccounts', forNewAccounts)
          ..add('forNotFollowers', forNotFollowers)
          ..add('forNotFollowing', forNotFollowing)
          ..add('forPrivateMentions', forPrivateMentions)
          ..add('summary', summary))
        .toString();
  }
}

class NotificationPolicyBuilder
    implements Builder<NotificationPolicy, NotificationPolicyBuilder> {
  _$NotificationPolicy? _$v;

  String? _forLimitedAccounts;
  String? get forLimitedAccounts => _$this._forLimitedAccounts;
  set forLimitedAccounts(String? forLimitedAccounts) =>
      _$this._forLimitedAccounts = forLimitedAccounts;

  String? _forNewAccounts;
  String? get forNewAccounts => _$this._forNewAccounts;
  set forNewAccounts(String? forNewAccounts) =>
      _$this._forNewAccounts = forNewAccounts;

  String? _forNotFollowers;
  String? get forNotFollowers => _$this._forNotFollowers;
  set forNotFollowers(String? forNotFollowers) =>
      _$this._forNotFollowers = forNotFollowers;

  String? _forNotFollowing;
  String? get forNotFollowing => _$this._forNotFollowing;
  set forNotFollowing(String? forNotFollowing) =>
      _$this._forNotFollowing = forNotFollowing;

  String? _forPrivateMentions;
  String? get forPrivateMentions => _$this._forPrivateMentions;
  set forPrivateMentions(String? forPrivateMentions) =>
      _$this._forPrivateMentions = forPrivateMentions;

  NotificationPolicySummaryBuilder? _summary;
  NotificationPolicySummaryBuilder get summary =>
      _$this._summary ??= NotificationPolicySummaryBuilder();
  set summary(NotificationPolicySummaryBuilder? summary) =>
      _$this._summary = summary;

  NotificationPolicyBuilder() {
    NotificationPolicy._defaults(this);
  }

  NotificationPolicyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _forLimitedAccounts = $v.forLimitedAccounts;
      _forNewAccounts = $v.forNewAccounts;
      _forNotFollowers = $v.forNotFollowers;
      _forNotFollowing = $v.forNotFollowing;
      _forPrivateMentions = $v.forPrivateMentions;
      _summary = $v.summary.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationPolicy other) {
    _$v = other as _$NotificationPolicy;
  }

  @override
  void update(void Function(NotificationPolicyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationPolicy build() => _build();

  _$NotificationPolicy _build() {
    _$NotificationPolicy _$result;
    try {
      _$result = _$v ??
          _$NotificationPolicy._(
            forLimitedAccounts: BuiltValueNullFieldError.checkNotNull(
                forLimitedAccounts,
                r'NotificationPolicy',
                'forLimitedAccounts'),
            forNewAccounts: BuiltValueNullFieldError.checkNotNull(
                forNewAccounts, r'NotificationPolicy', 'forNewAccounts'),
            forNotFollowers: BuiltValueNullFieldError.checkNotNull(
                forNotFollowers, r'NotificationPolicy', 'forNotFollowers'),
            forNotFollowing: BuiltValueNullFieldError.checkNotNull(
                forNotFollowing, r'NotificationPolicy', 'forNotFollowing'),
            forPrivateMentions: BuiltValueNullFieldError.checkNotNull(
                forPrivateMentions,
                r'NotificationPolicy',
                'forPrivateMentions'),
            summary: summary.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'summary';
        summary.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NotificationPolicy', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
