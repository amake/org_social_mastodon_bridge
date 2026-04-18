// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_block.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DomainBlock extends DomainBlock {
  @override
  final String digest;
  @override
  final String domain;
  @override
  final DomainBlockSeverityEnum severity;
  @override
  final String? comment;

  factory _$DomainBlock([void Function(DomainBlockBuilder)? updates]) =>
      (DomainBlockBuilder()..update(updates))._build();

  _$DomainBlock._(
      {required this.digest,
      required this.domain,
      required this.severity,
      this.comment})
      : super._();
  @override
  DomainBlock rebuild(void Function(DomainBlockBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DomainBlockBuilder toBuilder() => DomainBlockBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DomainBlock &&
        digest == other.digest &&
        domain == other.domain &&
        severity == other.severity &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, digest.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DomainBlock')
          ..add('digest', digest)
          ..add('domain', domain)
          ..add('severity', severity)
          ..add('comment', comment))
        .toString();
  }
}

class DomainBlockBuilder implements Builder<DomainBlock, DomainBlockBuilder> {
  _$DomainBlock? _$v;

  String? _digest;
  String? get digest => _$this._digest;
  set digest(String? digest) => _$this._digest = digest;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  DomainBlockSeverityEnum? _severity;
  DomainBlockSeverityEnum? get severity => _$this._severity;
  set severity(DomainBlockSeverityEnum? severity) =>
      _$this._severity = severity;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  DomainBlockBuilder() {
    DomainBlock._defaults(this);
  }

  DomainBlockBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _digest = $v.digest;
      _domain = $v.domain;
      _severity = $v.severity;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DomainBlock other) {
    _$v = other as _$DomainBlock;
  }

  @override
  void update(void Function(DomainBlockBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DomainBlock build() => _build();

  _$DomainBlock _build() {
    final _$result = _$v ??
        _$DomainBlock._(
          digest: BuiltValueNullFieldError.checkNotNull(
              digest, r'DomainBlock', 'digest'),
          domain: BuiltValueNullFieldError.checkNotNull(
              domain, r'DomainBlock', 'domain'),
          severity: BuiltValueNullFieldError.checkNotNull(
              severity, r'DomainBlock', 'severity'),
          comment: comment,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
