// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merged_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MergedResponse extends MergedResponse {
  @override
  final bool merged;

  factory _$MergedResponse([void Function(MergedResponseBuilder)? updates]) =>
      (MergedResponseBuilder()..update(updates))._build();

  _$MergedResponse._({required this.merged}) : super._();
  @override
  MergedResponse rebuild(void Function(MergedResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MergedResponseBuilder toBuilder() => MergedResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MergedResponse && merged == other.merged;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, merged.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MergedResponse')
          ..add('merged', merged))
        .toString();
  }
}

class MergedResponseBuilder
    implements Builder<MergedResponse, MergedResponseBuilder> {
  _$MergedResponse? _$v;

  bool? _merged;
  bool? get merged => _$this._merged;
  set merged(bool? merged) => _$this._merged = merged;

  MergedResponseBuilder() {
    MergedResponse._defaults(this);
  }

  MergedResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _merged = $v.merged;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MergedResponse other) {
    _$v = other as _$MergedResponse;
  }

  @override
  void update(void Function(MergedResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MergedResponse build() => _build();

  _$MergedResponse _build() {
    final _$result = _$v ??
        _$MergedResponse._(
          merged: BuiltValueNullFieldError.checkNotNull(
              merged, r'MergedResponse', 'merged'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
