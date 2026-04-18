// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_domain_block.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminDomainBlock extends AdminDomainBlock {
  @override
  final DateTime createdAt;
  @override
  final String domain;
  @override
  final String id;
  @override
  final bool obfuscate;
  @override
  final bool rejectMedia;
  @override
  final bool rejectReports;
  @override
  final AdminDomainBlockSeverityEnum severity;
  @override
  final String? digest;
  @override
  final String? privateComment;
  @override
  final String? publicComment;

  factory _$AdminDomainBlock(
          [void Function(AdminDomainBlockBuilder)? updates]) =>
      (AdminDomainBlockBuilder()..update(updates))._build();

  _$AdminDomainBlock._(
      {required this.createdAt,
      required this.domain,
      required this.id,
      required this.obfuscate,
      required this.rejectMedia,
      required this.rejectReports,
      required this.severity,
      this.digest,
      this.privateComment,
      this.publicComment})
      : super._();
  @override
  AdminDomainBlock rebuild(void Function(AdminDomainBlockBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminDomainBlockBuilder toBuilder() =>
      AdminDomainBlockBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminDomainBlock &&
        createdAt == other.createdAt &&
        domain == other.domain &&
        id == other.id &&
        obfuscate == other.obfuscate &&
        rejectMedia == other.rejectMedia &&
        rejectReports == other.rejectReports &&
        severity == other.severity &&
        digest == other.digest &&
        privateComment == other.privateComment &&
        publicComment == other.publicComment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, obfuscate.hashCode);
    _$hash = $jc(_$hash, rejectMedia.hashCode);
    _$hash = $jc(_$hash, rejectReports.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, digest.hashCode);
    _$hash = $jc(_$hash, privateComment.hashCode);
    _$hash = $jc(_$hash, publicComment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminDomainBlock')
          ..add('createdAt', createdAt)
          ..add('domain', domain)
          ..add('id', id)
          ..add('obfuscate', obfuscate)
          ..add('rejectMedia', rejectMedia)
          ..add('rejectReports', rejectReports)
          ..add('severity', severity)
          ..add('digest', digest)
          ..add('privateComment', privateComment)
          ..add('publicComment', publicComment))
        .toString();
  }
}

class AdminDomainBlockBuilder
    implements Builder<AdminDomainBlock, AdminDomainBlockBuilder> {
  _$AdminDomainBlock? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _obfuscate;
  bool? get obfuscate => _$this._obfuscate;
  set obfuscate(bool? obfuscate) => _$this._obfuscate = obfuscate;

  bool? _rejectMedia;
  bool? get rejectMedia => _$this._rejectMedia;
  set rejectMedia(bool? rejectMedia) => _$this._rejectMedia = rejectMedia;

  bool? _rejectReports;
  bool? get rejectReports => _$this._rejectReports;
  set rejectReports(bool? rejectReports) =>
      _$this._rejectReports = rejectReports;

  AdminDomainBlockSeverityEnum? _severity;
  AdminDomainBlockSeverityEnum? get severity => _$this._severity;
  set severity(AdminDomainBlockSeverityEnum? severity) =>
      _$this._severity = severity;

  String? _digest;
  String? get digest => _$this._digest;
  set digest(String? digest) => _$this._digest = digest;

  String? _privateComment;
  String? get privateComment => _$this._privateComment;
  set privateComment(String? privateComment) =>
      _$this._privateComment = privateComment;

  String? _publicComment;
  String? get publicComment => _$this._publicComment;
  set publicComment(String? publicComment) =>
      _$this._publicComment = publicComment;

  AdminDomainBlockBuilder() {
    AdminDomainBlock._defaults(this);
  }

  AdminDomainBlockBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _domain = $v.domain;
      _id = $v.id;
      _obfuscate = $v.obfuscate;
      _rejectMedia = $v.rejectMedia;
      _rejectReports = $v.rejectReports;
      _severity = $v.severity;
      _digest = $v.digest;
      _privateComment = $v.privateComment;
      _publicComment = $v.publicComment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminDomainBlock other) {
    _$v = other as _$AdminDomainBlock;
  }

  @override
  void update(void Function(AdminDomainBlockBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminDomainBlock build() => _build();

  _$AdminDomainBlock _build() {
    final _$result = _$v ??
        _$AdminDomainBlock._(
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'AdminDomainBlock', 'createdAt'),
          domain: BuiltValueNullFieldError.checkNotNull(
              domain, r'AdminDomainBlock', 'domain'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'AdminDomainBlock', 'id'),
          obfuscate: BuiltValueNullFieldError.checkNotNull(
              obfuscate, r'AdminDomainBlock', 'obfuscate'),
          rejectMedia: BuiltValueNullFieldError.checkNotNull(
              rejectMedia, r'AdminDomainBlock', 'rejectMedia'),
          rejectReports: BuiltValueNullFieldError.checkNotNull(
              rejectReports, r'AdminDomainBlock', 'rejectReports'),
          severity: BuiltValueNullFieldError.checkNotNull(
              severity, r'AdminDomainBlock', 'severity'),
          digest: digest,
          privateComment: privateComment,
          publicComment: publicComment,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
