// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationRequest extends NotificationRequest {
  @override
  final Account account;
  @override
  final DateTime createdAt;
  @override
  final String id;
  @override
  final String notificationsCount;
  @override
  final DateTime updatedAt;
  @override
  final Status? lastStatus;

  factory _$NotificationRequest(
          [void Function(NotificationRequestBuilder)? updates]) =>
      (NotificationRequestBuilder()..update(updates))._build();

  _$NotificationRequest._(
      {required this.account,
      required this.createdAt,
      required this.id,
      required this.notificationsCount,
      required this.updatedAt,
      this.lastStatus})
      : super._();
  @override
  NotificationRequest rebuild(
          void Function(NotificationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationRequestBuilder toBuilder() =>
      NotificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationRequest &&
        account == other.account &&
        createdAt == other.createdAt &&
        id == other.id &&
        notificationsCount == other.notificationsCount &&
        updatedAt == other.updatedAt &&
        lastStatus == other.lastStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, notificationsCount.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, lastStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationRequest')
          ..add('account', account)
          ..add('createdAt', createdAt)
          ..add('id', id)
          ..add('notificationsCount', notificationsCount)
          ..add('updatedAt', updatedAt)
          ..add('lastStatus', lastStatus))
        .toString();
  }
}

class NotificationRequestBuilder
    implements Builder<NotificationRequest, NotificationRequestBuilder> {
  _$NotificationRequest? _$v;

  AccountBuilder? _account;
  AccountBuilder get account => _$this._account ??= AccountBuilder();
  set account(AccountBuilder? account) => _$this._account = account;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _notificationsCount;
  String? get notificationsCount => _$this._notificationsCount;
  set notificationsCount(String? notificationsCount) =>
      _$this._notificationsCount = notificationsCount;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  StatusBuilder? _lastStatus;
  StatusBuilder get lastStatus => _$this._lastStatus ??= StatusBuilder();
  set lastStatus(StatusBuilder? lastStatus) => _$this._lastStatus = lastStatus;

  NotificationRequestBuilder() {
    NotificationRequest._defaults(this);
  }

  NotificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account.toBuilder();
      _createdAt = $v.createdAt;
      _id = $v.id;
      _notificationsCount = $v.notificationsCount;
      _updatedAt = $v.updatedAt;
      _lastStatus = $v.lastStatus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationRequest other) {
    _$v = other as _$NotificationRequest;
  }

  @override
  void update(void Function(NotificationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationRequest build() => _build();

  _$NotificationRequest _build() {
    _$NotificationRequest _$result;
    try {
      _$result = _$v ??
          _$NotificationRequest._(
            account: account.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'NotificationRequest', 'createdAt'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'NotificationRequest', 'id'),
            notificationsCount: BuiltValueNullFieldError.checkNotNull(
                notificationsCount,
                r'NotificationRequest',
                'notificationsCount'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'NotificationRequest', 'updatedAt'),
            lastStatus: _lastStatus?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'account';
        account.build();

        _$failedField = 'lastStatus';
        _lastStatus?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NotificationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
