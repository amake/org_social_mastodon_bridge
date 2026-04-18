// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_ip_block.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminIpBlock extends AdminIpBlock {
  @override
  final String comment;
  @override
  final DateTime createdAt;
  @override
  final String id;
  @override
  final String ip;
  @override
  final AdminIpBlockSeverityEnum severity;
  @override
  final DateTime? expiresAt;

  factory _$AdminIpBlock([void Function(AdminIpBlockBuilder)? updates]) =>
      (AdminIpBlockBuilder()..update(updates))._build();

  _$AdminIpBlock._(
      {required this.comment,
      required this.createdAt,
      required this.id,
      required this.ip,
      required this.severity,
      this.expiresAt})
      : super._();
  @override
  AdminIpBlock rebuild(void Function(AdminIpBlockBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminIpBlockBuilder toBuilder() => AdminIpBlockBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminIpBlock &&
        comment == other.comment &&
        createdAt == other.createdAt &&
        id == other.id &&
        ip == other.ip &&
        severity == other.severity &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ip.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminIpBlock')
          ..add('comment', comment)
          ..add('createdAt', createdAt)
          ..add('id', id)
          ..add('ip', ip)
          ..add('severity', severity)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class AdminIpBlockBuilder
    implements Builder<AdminIpBlock, AdminIpBlockBuilder> {
  _$AdminIpBlock? _$v;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ip;
  String? get ip => _$this._ip;
  set ip(String? ip) => _$this._ip = ip;

  AdminIpBlockSeverityEnum? _severity;
  AdminIpBlockSeverityEnum? get severity => _$this._severity;
  set severity(AdminIpBlockSeverityEnum? severity) =>
      _$this._severity = severity;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  AdminIpBlockBuilder() {
    AdminIpBlock._defaults(this);
  }

  AdminIpBlockBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _comment = $v.comment;
      _createdAt = $v.createdAt;
      _id = $v.id;
      _ip = $v.ip;
      _severity = $v.severity;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminIpBlock other) {
    _$v = other as _$AdminIpBlock;
  }

  @override
  void update(void Function(AdminIpBlockBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminIpBlock build() => _build();

  _$AdminIpBlock _build() {
    final _$result = _$v ??
        _$AdminIpBlock._(
          comment: BuiltValueNullFieldError.checkNotNull(
              comment, r'AdminIpBlock', 'comment'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'AdminIpBlock', 'createdAt'),
          id: BuiltValueNullFieldError.checkNotNull(id, r'AdminIpBlock', 'id'),
          ip: BuiltValueNullFieldError.checkNotNull(ip, r'AdminIpBlock', 'ip'),
          severity: BuiltValueNullFieldError.checkNotNull(
              severity, r'AdminIpBlock', 'severity'),
          expiresAt: expiresAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
