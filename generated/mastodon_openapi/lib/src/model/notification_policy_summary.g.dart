// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_policy_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationPolicySummary extends NotificationPolicySummary {
  @override
  final int pendingNotificationsCount;
  @override
  final int pendingRequestsCount;

  factory _$NotificationPolicySummary(
          [void Function(NotificationPolicySummaryBuilder)? updates]) =>
      (NotificationPolicySummaryBuilder()..update(updates))._build();

  _$NotificationPolicySummary._(
      {required this.pendingNotificationsCount,
      required this.pendingRequestsCount})
      : super._();
  @override
  NotificationPolicySummary rebuild(
          void Function(NotificationPolicySummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationPolicySummaryBuilder toBuilder() =>
      NotificationPolicySummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationPolicySummary &&
        pendingNotificationsCount == other.pendingNotificationsCount &&
        pendingRequestsCount == other.pendingRequestsCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pendingNotificationsCount.hashCode);
    _$hash = $jc(_$hash, pendingRequestsCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationPolicySummary')
          ..add('pendingNotificationsCount', pendingNotificationsCount)
          ..add('pendingRequestsCount', pendingRequestsCount))
        .toString();
  }
}

class NotificationPolicySummaryBuilder
    implements
        Builder<NotificationPolicySummary, NotificationPolicySummaryBuilder> {
  _$NotificationPolicySummary? _$v;

  int? _pendingNotificationsCount;
  int? get pendingNotificationsCount => _$this._pendingNotificationsCount;
  set pendingNotificationsCount(int? pendingNotificationsCount) =>
      _$this._pendingNotificationsCount = pendingNotificationsCount;

  int? _pendingRequestsCount;
  int? get pendingRequestsCount => _$this._pendingRequestsCount;
  set pendingRequestsCount(int? pendingRequestsCount) =>
      _$this._pendingRequestsCount = pendingRequestsCount;

  NotificationPolicySummaryBuilder() {
    NotificationPolicySummary._defaults(this);
  }

  NotificationPolicySummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pendingNotificationsCount = $v.pendingNotificationsCount;
      _pendingRequestsCount = $v.pendingRequestsCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationPolicySummary other) {
    _$v = other as _$NotificationPolicySummary;
  }

  @override
  void update(void Function(NotificationPolicySummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationPolicySummary build() => _build();

  _$NotificationPolicySummary _build() {
    final _$result = _$v ??
        _$NotificationPolicySummary._(
          pendingNotificationsCount: BuiltValueNullFieldError.checkNotNull(
              pendingNotificationsCount,
              r'NotificationPolicySummary',
              'pendingNotificationsCount'),
          pendingRequestsCount: BuiltValueNullFieldError.checkNotNull(
              pendingRequestsCount,
              r'NotificationPolicySummary',
              'pendingRequestsCount'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
