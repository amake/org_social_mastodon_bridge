// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_email_domain_block.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminEmailDomainBlock extends AdminEmailDomainBlock {
  @override
  final DateTime createdAt;
  @override
  final String domain;
  @override
  final BuiltList<AdminEmailDomainBlockHistory> history;
  @override
  final String id;

  factory _$AdminEmailDomainBlock(
          [void Function(AdminEmailDomainBlockBuilder)? updates]) =>
      (AdminEmailDomainBlockBuilder()..update(updates))._build();

  _$AdminEmailDomainBlock._(
      {required this.createdAt,
      required this.domain,
      required this.history,
      required this.id})
      : super._();
  @override
  AdminEmailDomainBlock rebuild(
          void Function(AdminEmailDomainBlockBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminEmailDomainBlockBuilder toBuilder() =>
      AdminEmailDomainBlockBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminEmailDomainBlock &&
        createdAt == other.createdAt &&
        domain == other.domain &&
        history == other.history &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, history.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminEmailDomainBlock')
          ..add('createdAt', createdAt)
          ..add('domain', domain)
          ..add('history', history)
          ..add('id', id))
        .toString();
  }
}

class AdminEmailDomainBlockBuilder
    implements Builder<AdminEmailDomainBlock, AdminEmailDomainBlockBuilder> {
  _$AdminEmailDomainBlock? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  ListBuilder<AdminEmailDomainBlockHistory>? _history;
  ListBuilder<AdminEmailDomainBlockHistory> get history =>
      _$this._history ??= ListBuilder<AdminEmailDomainBlockHistory>();
  set history(ListBuilder<AdminEmailDomainBlockHistory>? history) =>
      _$this._history = history;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AdminEmailDomainBlockBuilder() {
    AdminEmailDomainBlock._defaults(this);
  }

  AdminEmailDomainBlockBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _domain = $v.domain;
      _history = $v.history.toBuilder();
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminEmailDomainBlock other) {
    _$v = other as _$AdminEmailDomainBlock;
  }

  @override
  void update(void Function(AdminEmailDomainBlockBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminEmailDomainBlock build() => _build();

  _$AdminEmailDomainBlock _build() {
    _$AdminEmailDomainBlock _$result;
    try {
      _$result = _$v ??
          _$AdminEmailDomainBlock._(
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'AdminEmailDomainBlock', 'createdAt'),
            domain: BuiltValueNullFieldError.checkNotNull(
                domain, r'AdminEmailDomainBlock', 'domain'),
            history: history.build(),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'AdminEmailDomainBlock', 'id'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'history';
        history.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AdminEmailDomainBlock', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
