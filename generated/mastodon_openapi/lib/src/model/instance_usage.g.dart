// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_usage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceUsage extends InstanceUsage {
  @override
  final InstanceUsageUsers users;

  factory _$InstanceUsage([void Function(InstanceUsageBuilder)? updates]) =>
      (InstanceUsageBuilder()..update(updates))._build();

  _$InstanceUsage._({required this.users}) : super._();
  @override
  InstanceUsage rebuild(void Function(InstanceUsageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceUsageBuilder toBuilder() => InstanceUsageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceUsage && users == other.users;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, users.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstanceUsage')..add('users', users))
        .toString();
  }
}

class InstanceUsageBuilder
    implements Builder<InstanceUsage, InstanceUsageBuilder> {
  _$InstanceUsage? _$v;

  InstanceUsageUsersBuilder? _users;
  InstanceUsageUsersBuilder get users =>
      _$this._users ??= InstanceUsageUsersBuilder();
  set users(InstanceUsageUsersBuilder? users) => _$this._users = users;

  InstanceUsageBuilder() {
    InstanceUsage._defaults(this);
  }

  InstanceUsageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _users = $v.users.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceUsage other) {
    _$v = other as _$InstanceUsage;
  }

  @override
  void update(void Function(InstanceUsageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceUsage build() => _build();

  _$InstanceUsage _build() {
    _$InstanceUsage _$result;
    try {
      _$result = _$v ??
          _$InstanceUsage._(
            users: users.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InstanceUsage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
