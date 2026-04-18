// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Notification extends Notification {
  @override
  final Account account;
  @override
  final DateTime createdAt;
  @override
  final String id;
  @override
  final NotificationTypeEnum type;
  @override
  final RelationshipSeveranceEvent? event;
  @override
  final String? groupKey;
  @override
  final AccountWarning? moderationWarning;
  @override
  final Report? report;
  @override
  final Status? status;

  factory _$Notification([void Function(NotificationBuilder)? updates]) =>
      (NotificationBuilder()..update(updates))._build();

  _$Notification._(
      {required this.account,
      required this.createdAt,
      required this.id,
      required this.type,
      this.event,
      this.groupKey,
      this.moderationWarning,
      this.report,
      this.status})
      : super._();
  @override
  Notification rebuild(void Function(NotificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationBuilder toBuilder() => NotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Notification &&
        account == other.account &&
        createdAt == other.createdAt &&
        id == other.id &&
        type == other.type &&
        event == other.event &&
        groupKey == other.groupKey &&
        moderationWarning == other.moderationWarning &&
        report == other.report &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, groupKey.hashCode);
    _$hash = $jc(_$hash, moderationWarning.hashCode);
    _$hash = $jc(_$hash, report.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Notification')
          ..add('account', account)
          ..add('createdAt', createdAt)
          ..add('id', id)
          ..add('type', type)
          ..add('event', event)
          ..add('groupKey', groupKey)
          ..add('moderationWarning', moderationWarning)
          ..add('report', report)
          ..add('status', status))
        .toString();
  }
}

class NotificationBuilder
    implements Builder<Notification, NotificationBuilder> {
  _$Notification? _$v;

  AccountBuilder? _account;
  AccountBuilder get account => _$this._account ??= AccountBuilder();
  set account(AccountBuilder? account) => _$this._account = account;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  NotificationTypeEnum? _type;
  NotificationTypeEnum? get type => _$this._type;
  set type(NotificationTypeEnum? type) => _$this._type = type;

  RelationshipSeveranceEventBuilder? _event;
  RelationshipSeveranceEventBuilder get event =>
      _$this._event ??= RelationshipSeveranceEventBuilder();
  set event(RelationshipSeveranceEventBuilder? event) => _$this._event = event;

  String? _groupKey;
  String? get groupKey => _$this._groupKey;
  set groupKey(String? groupKey) => _$this._groupKey = groupKey;

  AccountWarningBuilder? _moderationWarning;
  AccountWarningBuilder get moderationWarning =>
      _$this._moderationWarning ??= AccountWarningBuilder();
  set moderationWarning(AccountWarningBuilder? moderationWarning) =>
      _$this._moderationWarning = moderationWarning;

  ReportBuilder? _report;
  ReportBuilder get report => _$this._report ??= ReportBuilder();
  set report(ReportBuilder? report) => _$this._report = report;

  StatusBuilder? _status;
  StatusBuilder get status => _$this._status ??= StatusBuilder();
  set status(StatusBuilder? status) => _$this._status = status;

  NotificationBuilder() {
    Notification._defaults(this);
  }

  NotificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account.toBuilder();
      _createdAt = $v.createdAt;
      _id = $v.id;
      _type = $v.type;
      _event = $v.event?.toBuilder();
      _groupKey = $v.groupKey;
      _moderationWarning = $v.moderationWarning?.toBuilder();
      _report = $v.report?.toBuilder();
      _status = $v.status?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Notification other) {
    _$v = other as _$Notification;
  }

  @override
  void update(void Function(NotificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Notification build() => _build();

  _$Notification _build() {
    _$Notification _$result;
    try {
      _$result = _$v ??
          _$Notification._(
            account: account.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Notification', 'createdAt'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Notification', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'Notification', 'type'),
            event: _event?.build(),
            groupKey: groupKey,
            moderationWarning: _moderationWarning?.build(),
            report: _report?.build(),
            status: _status?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'account';
        account.build();

        _$failedField = 'event';
        _event?.build();

        _$failedField = 'moderationWarning';
        _moderationWarning?.build();
        _$failedField = 'report';
        _report?.build();
        _$failedField = 'status';
        _status?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Notification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
