// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilterResult extends FilterResult {
  @override
  final Filter filter;
  @override
  final BuiltList<String>? keywordMatches;
  @override
  final BuiltList<String>? statusMatches;

  factory _$FilterResult([void Function(FilterResultBuilder)? updates]) =>
      (FilterResultBuilder()..update(updates))._build();

  _$FilterResult._(
      {required this.filter, this.keywordMatches, this.statusMatches})
      : super._();
  @override
  FilterResult rebuild(void Function(FilterResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterResultBuilder toBuilder() => FilterResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterResult &&
        filter == other.filter &&
        keywordMatches == other.keywordMatches &&
        statusMatches == other.statusMatches;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, keywordMatches.hashCode);
    _$hash = $jc(_$hash, statusMatches.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilterResult')
          ..add('filter', filter)
          ..add('keywordMatches', keywordMatches)
          ..add('statusMatches', statusMatches))
        .toString();
  }
}

class FilterResultBuilder
    implements Builder<FilterResult, FilterResultBuilder> {
  _$FilterResult? _$v;

  FilterBuilder? _filter;
  FilterBuilder get filter => _$this._filter ??= FilterBuilder();
  set filter(FilterBuilder? filter) => _$this._filter = filter;

  ListBuilder<String>? _keywordMatches;
  ListBuilder<String> get keywordMatches =>
      _$this._keywordMatches ??= ListBuilder<String>();
  set keywordMatches(ListBuilder<String>? keywordMatches) =>
      _$this._keywordMatches = keywordMatches;

  ListBuilder<String>? _statusMatches;
  ListBuilder<String> get statusMatches =>
      _$this._statusMatches ??= ListBuilder<String>();
  set statusMatches(ListBuilder<String>? statusMatches) =>
      _$this._statusMatches = statusMatches;

  FilterResultBuilder() {
    FilterResult._defaults(this);
  }

  FilterResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filter = $v.filter.toBuilder();
      _keywordMatches = $v.keywordMatches?.toBuilder();
      _statusMatches = $v.statusMatches?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterResult other) {
    _$v = other as _$FilterResult;
  }

  @override
  void update(void Function(FilterResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilterResult build() => _build();

  _$FilterResult _build() {
    _$FilterResult _$result;
    try {
      _$result = _$v ??
          _$FilterResult._(
            filter: filter.build(),
            keywordMatches: _keywordMatches?.build(),
            statusMatches: _statusMatches?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filter';
        filter.build();
        _$failedField = 'keywordMatches';
        _keywordMatches?.build();
        _$failedField = 'statusMatches';
        _statusMatches?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FilterResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
