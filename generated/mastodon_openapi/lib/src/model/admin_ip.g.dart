// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_ip.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminIp extends AdminIp {
  @override
  final String ip;
  @override
  final DateTime usedAt;

  factory _$AdminIp([void Function(AdminIpBuilder)? updates]) =>
      (AdminIpBuilder()..update(updates))._build();

  _$AdminIp._({required this.ip, required this.usedAt}) : super._();
  @override
  AdminIp rebuild(void Function(AdminIpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminIpBuilder toBuilder() => AdminIpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminIp && ip == other.ip && usedAt == other.usedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ip.hashCode);
    _$hash = $jc(_$hash, usedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminIp')
          ..add('ip', ip)
          ..add('usedAt', usedAt))
        .toString();
  }
}

class AdminIpBuilder implements Builder<AdminIp, AdminIpBuilder> {
  _$AdminIp? _$v;

  String? _ip;
  String? get ip => _$this._ip;
  set ip(String? ip) => _$this._ip = ip;

  DateTime? _usedAt;
  DateTime? get usedAt => _$this._usedAt;
  set usedAt(DateTime? usedAt) => _$this._usedAt = usedAt;

  AdminIpBuilder() {
    AdminIp._defaults(this);
  }

  AdminIpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ip = $v.ip;
      _usedAt = $v.usedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminIp other) {
    _$v = other as _$AdminIp;
  }

  @override
  void update(void Function(AdminIpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminIp build() => _build();

  _$AdminIp _build() {
    final _$result = _$v ??
        _$AdminIp._(
          ip: BuiltValueNullFieldError.checkNotNull(ip, r'AdminIp', 'ip'),
          usedAt: BuiltValueNullFieldError.checkNotNull(
              usedAt, r'AdminIp', 'usedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
