// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muted_account_moved.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MutedAccountMoved extends MutedAccountMoved {
  @override
  final OneOf oneOf;

  factory _$MutedAccountMoved(
          [void Function(MutedAccountMovedBuilder)? updates]) =>
      (MutedAccountMovedBuilder()..update(updates))._build();

  _$MutedAccountMoved._({required this.oneOf}) : super._();
  @override
  MutedAccountMoved rebuild(void Function(MutedAccountMovedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MutedAccountMovedBuilder toBuilder() =>
      MutedAccountMovedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MutedAccountMoved && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MutedAccountMoved')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class MutedAccountMovedBuilder
    implements Builder<MutedAccountMoved, MutedAccountMovedBuilder> {
  _$MutedAccountMoved? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  MutedAccountMovedBuilder() {
    MutedAccountMoved._defaults(this);
  }

  MutedAccountMovedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MutedAccountMoved other) {
    _$v = other as _$MutedAccountMoved;
  }

  @override
  void update(void Function(MutedAccountMovedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MutedAccountMoved build() => _build();

  _$MutedAccountMoved _build() {
    final _$result = _$v ??
        _$MutedAccountMoved._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'MutedAccountMoved', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
