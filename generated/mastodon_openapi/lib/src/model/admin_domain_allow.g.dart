// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_domain_allow.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminDomainAllow extends AdminDomainAllow {
  @override
  final DateTime createdAt;
  @override
  final String domain;
  @override
  final String id;

  factory _$AdminDomainAllow(
          [void Function(AdminDomainAllowBuilder)? updates]) =>
      (AdminDomainAllowBuilder()..update(updates))._build();

  _$AdminDomainAllow._(
      {required this.createdAt, required this.domain, required this.id})
      : super._();
  @override
  AdminDomainAllow rebuild(void Function(AdminDomainAllowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminDomainAllowBuilder toBuilder() =>
      AdminDomainAllowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminDomainAllow &&
        createdAt == other.createdAt &&
        domain == other.domain &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminDomainAllow')
          ..add('createdAt', createdAt)
          ..add('domain', domain)
          ..add('id', id))
        .toString();
  }
}

class AdminDomainAllowBuilder
    implements Builder<AdminDomainAllow, AdminDomainAllowBuilder> {
  _$AdminDomainAllow? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AdminDomainAllowBuilder() {
    AdminDomainAllow._defaults(this);
  }

  AdminDomainAllowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _domain = $v.domain;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminDomainAllow other) {
    _$v = other as _$AdminDomainAllow;
  }

  @override
  void update(void Function(AdminDomainAllowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminDomainAllow build() => _build();

  _$AdminDomainAllow _build() {
    final _$result = _$v ??
        _$AdminDomainAllow._(
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'AdminDomainAllow', 'createdAt'),
          domain: BuiltValueNullFieldError.checkNotNull(
              domain, r'AdminDomainAllow', 'domain'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'AdminDomainAllow', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
