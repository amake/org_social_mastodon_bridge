// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Role extends Role {
  @override
  final String color;
  @override
  final bool highlighted;
  @override
  final String id;
  @override
  final String name;
  @override
  final String permissions;

  factory _$Role([void Function(RoleBuilder)? updates]) =>
      (RoleBuilder()..update(updates))._build();

  _$Role._(
      {required this.color,
      required this.highlighted,
      required this.id,
      required this.name,
      required this.permissions})
      : super._();
  @override
  Role rebuild(void Function(RoleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoleBuilder toBuilder() => RoleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Role &&
        color == other.color &&
        highlighted == other.highlighted &&
        id == other.id &&
        name == other.name &&
        permissions == other.permissions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, highlighted.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Role')
          ..add('color', color)
          ..add('highlighted', highlighted)
          ..add('id', id)
          ..add('name', name)
          ..add('permissions', permissions))
        .toString();
  }
}

class RoleBuilder implements Builder<Role, RoleBuilder> {
  _$Role? _$v;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  bool? _highlighted;
  bool? get highlighted => _$this._highlighted;
  set highlighted(bool? highlighted) => _$this._highlighted = highlighted;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _permissions;
  String? get permissions => _$this._permissions;
  set permissions(String? permissions) => _$this._permissions = permissions;

  RoleBuilder() {
    Role._defaults(this);
  }

  RoleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _color = $v.color;
      _highlighted = $v.highlighted;
      _id = $v.id;
      _name = $v.name;
      _permissions = $v.permissions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Role other) {
    _$v = other as _$Role;
  }

  @override
  void update(void Function(RoleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Role build() => _build();

  _$Role _build() {
    final _$result = _$v ??
        _$Role._(
          color: BuiltValueNullFieldError.checkNotNull(color, r'Role', 'color'),
          highlighted: BuiltValueNullFieldError.checkNotNull(
              highlighted, r'Role', 'highlighted'),
          id: BuiltValueNullFieldError.checkNotNull(id, r'Role', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(name, r'Role', 'name'),
          permissions: BuiltValueNullFieldError.checkNotNull(
              permissions, r'Role', 'permissions'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
