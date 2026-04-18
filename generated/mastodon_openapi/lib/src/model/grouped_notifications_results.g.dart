// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grouped_notifications_results.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupedNotificationsResults extends GroupedNotificationsResults {
  @override
  final BuiltList<Account> accounts;
  @override
  final BuiltList<NotificationGroup> notificationGroups;
  @override
  final BuiltList<Status> statuses;
  @override
  final BuiltList<PartialAccountWithAvatar>? partialAccounts;

  factory _$GroupedNotificationsResults(
          [void Function(GroupedNotificationsResultsBuilder)? updates]) =>
      (GroupedNotificationsResultsBuilder()..update(updates))._build();

  _$GroupedNotificationsResults._(
      {required this.accounts,
      required this.notificationGroups,
      required this.statuses,
      this.partialAccounts})
      : super._();
  @override
  GroupedNotificationsResults rebuild(
          void Function(GroupedNotificationsResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupedNotificationsResultsBuilder toBuilder() =>
      GroupedNotificationsResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupedNotificationsResults &&
        accounts == other.accounts &&
        notificationGroups == other.notificationGroups &&
        statuses == other.statuses &&
        partialAccounts == other.partialAccounts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accounts.hashCode);
    _$hash = $jc(_$hash, notificationGroups.hashCode);
    _$hash = $jc(_$hash, statuses.hashCode);
    _$hash = $jc(_$hash, partialAccounts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupedNotificationsResults')
          ..add('accounts', accounts)
          ..add('notificationGroups', notificationGroups)
          ..add('statuses', statuses)
          ..add('partialAccounts', partialAccounts))
        .toString();
  }
}

class GroupedNotificationsResultsBuilder
    implements
        Builder<GroupedNotificationsResults,
            GroupedNotificationsResultsBuilder> {
  _$GroupedNotificationsResults? _$v;

  ListBuilder<Account>? _accounts;
  ListBuilder<Account> get accounts =>
      _$this._accounts ??= ListBuilder<Account>();
  set accounts(ListBuilder<Account>? accounts) => _$this._accounts = accounts;

  ListBuilder<NotificationGroup>? _notificationGroups;
  ListBuilder<NotificationGroup> get notificationGroups =>
      _$this._notificationGroups ??= ListBuilder<NotificationGroup>();
  set notificationGroups(ListBuilder<NotificationGroup>? notificationGroups) =>
      _$this._notificationGroups = notificationGroups;

  ListBuilder<Status>? _statuses;
  ListBuilder<Status> get statuses =>
      _$this._statuses ??= ListBuilder<Status>();
  set statuses(ListBuilder<Status>? statuses) => _$this._statuses = statuses;

  ListBuilder<PartialAccountWithAvatar>? _partialAccounts;
  ListBuilder<PartialAccountWithAvatar> get partialAccounts =>
      _$this._partialAccounts ??= ListBuilder<PartialAccountWithAvatar>();
  set partialAccounts(ListBuilder<PartialAccountWithAvatar>? partialAccounts) =>
      _$this._partialAccounts = partialAccounts;

  GroupedNotificationsResultsBuilder() {
    GroupedNotificationsResults._defaults(this);
  }

  GroupedNotificationsResultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accounts = $v.accounts.toBuilder();
      _notificationGroups = $v.notificationGroups.toBuilder();
      _statuses = $v.statuses.toBuilder();
      _partialAccounts = $v.partialAccounts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupedNotificationsResults other) {
    _$v = other as _$GroupedNotificationsResults;
  }

  @override
  void update(void Function(GroupedNotificationsResultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupedNotificationsResults build() => _build();

  _$GroupedNotificationsResults _build() {
    _$GroupedNotificationsResults _$result;
    try {
      _$result = _$v ??
          _$GroupedNotificationsResults._(
            accounts: accounts.build(),
            notificationGroups: notificationGroups.build(),
            statuses: statuses.build(),
            partialAccounts: _partialAccounts?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accounts';
        accounts.build();
        _$failedField = 'notificationGroups';
        notificationGroups.build();
        _$failedField = 'statuses';
        statuses.build();
        _$failedField = 'partialAccounts';
        _partialAccounts?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GroupedNotificationsResults', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
