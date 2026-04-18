// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountRole extends AccountRole {
  @override
  final String color;
  @override
  final String id;
  @override
  final String name;

  factory _$AccountRole([void Function(AccountRoleBuilder)? updates]) =>
      (AccountRoleBuilder()..update(updates))._build();

  _$AccountRole._({required this.color, required this.id, required this.name})
      : super._();
  @override
  AccountRole rebuild(void Function(AccountRoleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountRoleBuilder toBuilder() => AccountRoleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountRole &&
        color == other.color &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountRole')
          ..add('color', color)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class AccountRoleBuilder implements Builder<AccountRole, AccountRoleBuilder> {
  _$AccountRole? _$v;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AccountRoleBuilder() {
    AccountRole._defaults(this);
  }

  AccountRoleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _color = $v.color;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountRole other) {
    _$v = other as _$AccountRole;
  }

  @override
  void update(void Function(AccountRoleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountRole build() => _build();

  _$AccountRole _build() {
    final _$result = _$v ??
        _$AccountRole._(
          color: BuiltValueNullFieldError.checkNotNull(
              color, r'AccountRole', 'color'),
          id: BuiltValueNullFieldError.checkNotNull(id, r'AccountRole', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'AccountRole', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
