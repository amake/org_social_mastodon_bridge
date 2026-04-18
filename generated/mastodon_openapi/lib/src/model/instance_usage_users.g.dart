// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_usage_users.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceUsageUsers extends InstanceUsageUsers {
  @override
  final int activeMonth;

  factory _$InstanceUsageUsers(
          [void Function(InstanceUsageUsersBuilder)? updates]) =>
      (InstanceUsageUsersBuilder()..update(updates))._build();

  _$InstanceUsageUsers._({required this.activeMonth}) : super._();
  @override
  InstanceUsageUsers rebuild(
          void Function(InstanceUsageUsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceUsageUsersBuilder toBuilder() =>
      InstanceUsageUsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceUsageUsers && activeMonth == other.activeMonth;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, activeMonth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstanceUsageUsers')
          ..add('activeMonth', activeMonth))
        .toString();
  }
}

class InstanceUsageUsersBuilder
    implements Builder<InstanceUsageUsers, InstanceUsageUsersBuilder> {
  _$InstanceUsageUsers? _$v;

  int? _activeMonth;
  int? get activeMonth => _$this._activeMonth;
  set activeMonth(int? activeMonth) => _$this._activeMonth = activeMonth;

  InstanceUsageUsersBuilder() {
    InstanceUsageUsers._defaults(this);
  }

  InstanceUsageUsersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _activeMonth = $v.activeMonth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceUsageUsers other) {
    _$v = other as _$InstanceUsageUsers;
  }

  @override
  void update(void Function(InstanceUsageUsersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceUsageUsers build() => _build();

  _$InstanceUsageUsers _build() {
    final _$result = _$v ??
        _$InstanceUsageUsers._(
          activeMonth: BuiltValueNullFieldError.checkNotNull(
              activeMonth, r'InstanceUsageUsers', 'activeMonth'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
