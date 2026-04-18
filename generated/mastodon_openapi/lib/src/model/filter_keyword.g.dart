// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_keyword.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilterKeyword extends FilterKeyword {
  @override
  final String id;
  @override
  final String keyword;
  @override
  final bool wholeWord;

  factory _$FilterKeyword([void Function(FilterKeywordBuilder)? updates]) =>
      (FilterKeywordBuilder()..update(updates))._build();

  _$FilterKeyword._(
      {required this.id, required this.keyword, required this.wholeWord})
      : super._();
  @override
  FilterKeyword rebuild(void Function(FilterKeywordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterKeywordBuilder toBuilder() => FilterKeywordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterKeyword &&
        id == other.id &&
        keyword == other.keyword &&
        wholeWord == other.wholeWord;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, keyword.hashCode);
    _$hash = $jc(_$hash, wholeWord.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilterKeyword')
          ..add('id', id)
          ..add('keyword', keyword)
          ..add('wholeWord', wholeWord))
        .toString();
  }
}

class FilterKeywordBuilder
    implements Builder<FilterKeyword, FilterKeywordBuilder> {
  _$FilterKeyword? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _keyword;
  String? get keyword => _$this._keyword;
  set keyword(String? keyword) => _$this._keyword = keyword;

  bool? _wholeWord;
  bool? get wholeWord => _$this._wholeWord;
  set wholeWord(bool? wholeWord) => _$this._wholeWord = wholeWord;

  FilterKeywordBuilder() {
    FilterKeyword._defaults(this);
  }

  FilterKeywordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _keyword = $v.keyword;
      _wholeWord = $v.wholeWord;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterKeyword other) {
    _$v = other as _$FilterKeyword;
  }

  @override
  void update(void Function(FilterKeywordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilterKeyword build() => _build();

  _$FilterKeyword _build() {
    final _$result = _$v ??
        _$FilterKeyword._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'FilterKeyword', 'id'),
          keyword: BuiltValueNullFieldError.checkNotNull(
              keyword, r'FilterKeyword', 'keyword'),
          wholeWord: BuiltValueNullFieldError.checkNotNull(
              wholeWord, r'FilterKeyword', 'wholeWord'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
