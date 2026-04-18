// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'context.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Context extends Context {
  @override
  final BuiltList<Status> ancestors;
  @override
  final BuiltList<Status> descendants;

  factory _$Context([void Function(ContextBuilder)? updates]) =>
      (ContextBuilder()..update(updates))._build();

  _$Context._({required this.ancestors, required this.descendants}) : super._();
  @override
  Context rebuild(void Function(ContextBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContextBuilder toBuilder() => ContextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Context &&
        ancestors == other.ancestors &&
        descendants == other.descendants;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ancestors.hashCode);
    _$hash = $jc(_$hash, descendants.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Context')
          ..add('ancestors', ancestors)
          ..add('descendants', descendants))
        .toString();
  }
}

class ContextBuilder implements Builder<Context, ContextBuilder> {
  _$Context? _$v;

  ListBuilder<Status>? _ancestors;
  ListBuilder<Status> get ancestors =>
      _$this._ancestors ??= ListBuilder<Status>();
  set ancestors(ListBuilder<Status>? ancestors) =>
      _$this._ancestors = ancestors;

  ListBuilder<Status>? _descendants;
  ListBuilder<Status> get descendants =>
      _$this._descendants ??= ListBuilder<Status>();
  set descendants(ListBuilder<Status>? descendants) =>
      _$this._descendants = descendants;

  ContextBuilder() {
    Context._defaults(this);
  }

  ContextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ancestors = $v.ancestors.toBuilder();
      _descendants = $v.descendants.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Context other) {
    _$v = other as _$Context;
  }

  @override
  void update(void Function(ContextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Context build() => _build();

  _$Context _build() {
    _$Context _$result;
    try {
      _$result = _$v ??
          _$Context._(
            ancestors: ancestors.build(),
            descendants: descendants.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ancestors';
        ancestors.build();
        _$failedField = 'descendants';
        descendants.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Context', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
