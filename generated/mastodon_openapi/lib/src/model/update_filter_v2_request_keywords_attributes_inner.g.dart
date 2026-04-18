// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_filter_v2_request_keywords_attributes_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateFilterV2RequestKeywordsAttributesInner
    extends UpdateFilterV2RequestKeywordsAttributesInner {
  @override
  final String? keyword;
  @override
  final bool? wholeWord;
  @override
  final String? id;
  @override
  final bool? destroy;

  factory _$UpdateFilterV2RequestKeywordsAttributesInner(
          [void Function(UpdateFilterV2RequestKeywordsAttributesInnerBuilder)?
              updates]) =>
      (UpdateFilterV2RequestKeywordsAttributesInnerBuilder()..update(updates))
          ._build();

  _$UpdateFilterV2RequestKeywordsAttributesInner._(
      {this.keyword, this.wholeWord, this.id, this.destroy})
      : super._();
  @override
  UpdateFilterV2RequestKeywordsAttributesInner rebuild(
          void Function(UpdateFilterV2RequestKeywordsAttributesInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateFilterV2RequestKeywordsAttributesInnerBuilder toBuilder() =>
      UpdateFilterV2RequestKeywordsAttributesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateFilterV2RequestKeywordsAttributesInner &&
        keyword == other.keyword &&
        wholeWord == other.wholeWord &&
        id == other.id &&
        destroy == other.destroy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keyword.hashCode);
    _$hash = $jc(_$hash, wholeWord.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, destroy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'UpdateFilterV2RequestKeywordsAttributesInner')
          ..add('keyword', keyword)
          ..add('wholeWord', wholeWord)
          ..add('id', id)
          ..add('destroy', destroy))
        .toString();
  }
}

class UpdateFilterV2RequestKeywordsAttributesInnerBuilder
    implements
        Builder<UpdateFilterV2RequestKeywordsAttributesInner,
            UpdateFilterV2RequestKeywordsAttributesInnerBuilder> {
  _$UpdateFilterV2RequestKeywordsAttributesInner? _$v;

  String? _keyword;
  String? get keyword => _$this._keyword;
  set keyword(String? keyword) => _$this._keyword = keyword;

  bool? _wholeWord;
  bool? get wholeWord => _$this._wholeWord;
  set wholeWord(bool? wholeWord) => _$this._wholeWord = wholeWord;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _destroy;
  bool? get destroy => _$this._destroy;
  set destroy(bool? destroy) => _$this._destroy = destroy;

  UpdateFilterV2RequestKeywordsAttributesInnerBuilder() {
    UpdateFilterV2RequestKeywordsAttributesInner._defaults(this);
  }

  UpdateFilterV2RequestKeywordsAttributesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keyword = $v.keyword;
      _wholeWord = $v.wholeWord;
      _id = $v.id;
      _destroy = $v.destroy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateFilterV2RequestKeywordsAttributesInner other) {
    _$v = other as _$UpdateFilterV2RequestKeywordsAttributesInner;
  }

  @override
  void update(
      void Function(UpdateFilterV2RequestKeywordsAttributesInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateFilterV2RequestKeywordsAttributesInner build() => _build();

  _$UpdateFilterV2RequestKeywordsAttributesInner _build() {
    final _$result = _$v ??
        _$UpdateFilterV2RequestKeywordsAttributesInner._(
          keyword: keyword,
          wholeWord: wholeWord,
          id: id,
          destroy: destroy,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
