// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationGroup extends NotificationGroup {
  @override
  final String groupKey;
  @override
  final int mostRecentNotificationId;
  @override
  final int notificationsCount;
  @override
  final BuiltList<String> sampleAccountIds;
  @override
  final NotificationTypeEnum type;
  @override
  final RelationshipSeveranceEvent? event;
  @override
  final DateTime? latestPageNotificationAt;
  @override
  final AccountWarning? moderationWarning;
  @override
  final String? pageMaxId;
  @override
  final String? pageMinId;
  @override
  final Report? report;
  @override
  final String? statusId;

  factory _$NotificationGroup(
          [void Function(NotificationGroupBuilder)? updates]) =>
      (NotificationGroupBuilder()..update(updates))._build();

  _$NotificationGroup._(
      {required this.groupKey,
      required this.mostRecentNotificationId,
      required this.notificationsCount,
      required this.sampleAccountIds,
      required this.type,
      this.event,
      this.latestPageNotificationAt,
      this.moderationWarning,
      this.pageMaxId,
      this.pageMinId,
      this.report,
      this.statusId})
      : super._();
  @override
  NotificationGroup rebuild(void Function(NotificationGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationGroupBuilder toBuilder() =>
      NotificationGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationGroup &&
        groupKey == other.groupKey &&
        mostRecentNotificationId == other.mostRecentNotificationId &&
        notificationsCount == other.notificationsCount &&
        sampleAccountIds == other.sampleAccountIds &&
        type == other.type &&
        event == other.event &&
        latestPageNotificationAt == other.latestPageNotificationAt &&
        moderationWarning == other.moderationWarning &&
        pageMaxId == other.pageMaxId &&
        pageMinId == other.pageMinId &&
        report == other.report &&
        statusId == other.statusId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupKey.hashCode);
    _$hash = $jc(_$hash, mostRecentNotificationId.hashCode);
    _$hash = $jc(_$hash, notificationsCount.hashCode);
    _$hash = $jc(_$hash, sampleAccountIds.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, latestPageNotificationAt.hashCode);
    _$hash = $jc(_$hash, moderationWarning.hashCode);
    _$hash = $jc(_$hash, pageMaxId.hashCode);
    _$hash = $jc(_$hash, pageMinId.hashCode);
    _$hash = $jc(_$hash, report.hashCode);
    _$hash = $jc(_$hash, statusId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationGroup')
          ..add('groupKey', groupKey)
          ..add('mostRecentNotificationId', mostRecentNotificationId)
          ..add('notificationsCount', notificationsCount)
          ..add('sampleAccountIds', sampleAccountIds)
          ..add('type', type)
          ..add('event', event)
          ..add('latestPageNotificationAt', latestPageNotificationAt)
          ..add('moderationWarning', moderationWarning)
          ..add('pageMaxId', pageMaxId)
          ..add('pageMinId', pageMinId)
          ..add('report', report)
          ..add('statusId', statusId))
        .toString();
  }
}

class NotificationGroupBuilder
    implements Builder<NotificationGroup, NotificationGroupBuilder> {
  _$NotificationGroup? _$v;

  String? _groupKey;
  String? get groupKey => _$this._groupKey;
  set groupKey(String? groupKey) => _$this._groupKey = groupKey;

  int? _mostRecentNotificationId;
  int? get mostRecentNotificationId => _$this._mostRecentNotificationId;
  set mostRecentNotificationId(int? mostRecentNotificationId) =>
      _$this._mostRecentNotificationId = mostRecentNotificationId;

  int? _notificationsCount;
  int? get notificationsCount => _$this._notificationsCount;
  set notificationsCount(int? notificationsCount) =>
      _$this._notificationsCount = notificationsCount;

  ListBuilder<String>? _sampleAccountIds;
  ListBuilder<String> get sampleAccountIds =>
      _$this._sampleAccountIds ??= ListBuilder<String>();
  set sampleAccountIds(ListBuilder<String>? sampleAccountIds) =>
      _$this._sampleAccountIds = sampleAccountIds;

  NotificationTypeEnum? _type;
  NotificationTypeEnum? get type => _$this._type;
  set type(NotificationTypeEnum? type) => _$this._type = type;

  RelationshipSeveranceEventBuilder? _event;
  RelationshipSeveranceEventBuilder get event =>
      _$this._event ??= RelationshipSeveranceEventBuilder();
  set event(RelationshipSeveranceEventBuilder? event) => _$this._event = event;

  DateTime? _latestPageNotificationAt;
  DateTime? get latestPageNotificationAt => _$this._latestPageNotificationAt;
  set latestPageNotificationAt(DateTime? latestPageNotificationAt) =>
      _$this._latestPageNotificationAt = latestPageNotificationAt;

  AccountWarningBuilder? _moderationWarning;
  AccountWarningBuilder get moderationWarning =>
      _$this._moderationWarning ??= AccountWarningBuilder();
  set moderationWarning(AccountWarningBuilder? moderationWarning) =>
      _$this._moderationWarning = moderationWarning;

  String? _pageMaxId;
  String? get pageMaxId => _$this._pageMaxId;
  set pageMaxId(String? pageMaxId) => _$this._pageMaxId = pageMaxId;

  String? _pageMinId;
  String? get pageMinId => _$this._pageMinId;
  set pageMinId(String? pageMinId) => _$this._pageMinId = pageMinId;

  ReportBuilder? _report;
  ReportBuilder get report => _$this._report ??= ReportBuilder();
  set report(ReportBuilder? report) => _$this._report = report;

  String? _statusId;
  String? get statusId => _$this._statusId;
  set statusId(String? statusId) => _$this._statusId = statusId;

  NotificationGroupBuilder() {
    NotificationGroup._defaults(this);
  }

  NotificationGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupKey = $v.groupKey;
      _mostRecentNotificationId = $v.mostRecentNotificationId;
      _notificationsCount = $v.notificationsCount;
      _sampleAccountIds = $v.sampleAccountIds.toBuilder();
      _type = $v.type;
      _event = $v.event?.toBuilder();
      _latestPageNotificationAt = $v.latestPageNotificationAt;
      _moderationWarning = $v.moderationWarning?.toBuilder();
      _pageMaxId = $v.pageMaxId;
      _pageMinId = $v.pageMinId;
      _report = $v.report?.toBuilder();
      _statusId = $v.statusId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationGroup other) {
    _$v = other as _$NotificationGroup;
  }

  @override
  void update(void Function(NotificationGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationGroup build() => _build();

  _$NotificationGroup _build() {
    _$NotificationGroup _$result;
    try {
      _$result = _$v ??
          _$NotificationGroup._(
            groupKey: BuiltValueNullFieldError.checkNotNull(
                groupKey, r'NotificationGroup', 'groupKey'),
            mostRecentNotificationId: BuiltValueNullFieldError.checkNotNull(
                mostRecentNotificationId,
                r'NotificationGroup',
                'mostRecentNotificationId'),
            notificationsCount: BuiltValueNullFieldError.checkNotNull(
                notificationsCount, r'NotificationGroup', 'notificationsCount'),
            sampleAccountIds: sampleAccountIds.build(),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'NotificationGroup', 'type'),
            event: _event?.build(),
            latestPageNotificationAt: latestPageNotificationAt,
            moderationWarning: _moderationWarning?.build(),
            pageMaxId: pageMaxId,
            pageMinId: pageMinId,
            report: _report?.build(),
            statusId: statusId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sampleAccountIds';
        sampleAccountIds.build();

        _$failedField = 'event';
        _event?.build();

        _$failedField = 'moderationWarning';
        _moderationWarning?.build();

        _$failedField = 'report';
        _report?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NotificationGroup', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
