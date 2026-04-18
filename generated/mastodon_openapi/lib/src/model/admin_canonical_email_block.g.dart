// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_canonical_email_block.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminCanonicalEmailBlock extends AdminCanonicalEmailBlock {
  @override
  final String canonicalEmailHash;
  @override
  final String id;

  factory _$AdminCanonicalEmailBlock(
          [void Function(AdminCanonicalEmailBlockBuilder)? updates]) =>
      (AdminCanonicalEmailBlockBuilder()..update(updates))._build();

  _$AdminCanonicalEmailBlock._(
      {required this.canonicalEmailHash, required this.id})
      : super._();
  @override
  AdminCanonicalEmailBlock rebuild(
          void Function(AdminCanonicalEmailBlockBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminCanonicalEmailBlockBuilder toBuilder() =>
      AdminCanonicalEmailBlockBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminCanonicalEmailBlock &&
        canonicalEmailHash == other.canonicalEmailHash &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, canonicalEmailHash.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminCanonicalEmailBlock')
          ..add('canonicalEmailHash', canonicalEmailHash)
          ..add('id', id))
        .toString();
  }
}

class AdminCanonicalEmailBlockBuilder
    implements
        Builder<AdminCanonicalEmailBlock, AdminCanonicalEmailBlockBuilder> {
  _$AdminCanonicalEmailBlock? _$v;

  String? _canonicalEmailHash;
  String? get canonicalEmailHash => _$this._canonicalEmailHash;
  set canonicalEmailHash(String? canonicalEmailHash) =>
      _$this._canonicalEmailHash = canonicalEmailHash;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AdminCanonicalEmailBlockBuilder() {
    AdminCanonicalEmailBlock._defaults(this);
  }

  AdminCanonicalEmailBlockBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _canonicalEmailHash = $v.canonicalEmailHash;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminCanonicalEmailBlock other) {
    _$v = other as _$AdminCanonicalEmailBlock;
  }

  @override
  void update(void Function(AdminCanonicalEmailBlockBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminCanonicalEmailBlock build() => _build();

  _$AdminCanonicalEmailBlock _build() {
    final _$result = _$v ??
        _$AdminCanonicalEmailBlock._(
          canonicalEmailHash: BuiltValueNullFieldError.checkNotNull(
              canonicalEmailHash,
              r'AdminCanonicalEmailBlock',
              'canonicalEmailHash'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'AdminCanonicalEmailBlock', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
