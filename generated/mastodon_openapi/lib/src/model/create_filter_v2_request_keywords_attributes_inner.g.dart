// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_filter_v2_request_keywords_attributes_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateFilterV2RequestKeywordsAttributesInner
    extends CreateFilterV2RequestKeywordsAttributesInner {
  @override
  final String? keyword;
  @override
  final bool? wholeWord;
  @override
  final String? id;
  @override
  final bool? destroy;

  factory _$CreateFilterV2RequestKeywordsAttributesInner(
          [void Function(CreateFilterV2RequestKeywordsAttributesInnerBuilder)?
              updates]) =>
      (CreateFilterV2RequestKeywordsAttributesInnerBuilder()..update(updates))
          ._build();

  _$CreateFilterV2RequestKeywordsAttributesInner._(
      {this.keyword, this.wholeWord, this.id, this.destroy})
      : super._();
  @override
  CreateFilterV2RequestKeywordsAttributesInner rebuild(
          void Function(CreateFilterV2RequestKeywordsAttributesInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateFilterV2RequestKeywordsAttributesInnerBuilder toBuilder() =>
      CreateFilterV2RequestKeywordsAttributesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateFilterV2RequestKeywordsAttributesInner &&
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
            r'CreateFilterV2RequestKeywordsAttributesInner')
          ..add('keyword', keyword)
          ..add('wholeWord', wholeWord)
          ..add('id', id)
          ..add('destroy', destroy))
        .toString();
  }
}

class CreateFilterV2RequestKeywordsAttributesInnerBuilder
    implements
        Builder<CreateFilterV2RequestKeywordsAttributesInner,
            CreateFilterV2RequestKeywordsAttributesInnerBuilder> {
  _$CreateFilterV2RequestKeywordsAttributesInner? _$v;

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

  CreateFilterV2RequestKeywordsAttributesInnerBuilder() {
    CreateFilterV2RequestKeywordsAttributesInner._defaults(this);
  }

  CreateFilterV2RequestKeywordsAttributesInnerBuilder get _$this {
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
  void replace(CreateFilterV2RequestKeywordsAttributesInner other) {
    _$v = other as _$CreateFilterV2RequestKeywordsAttributesInner;
  }

  @override
  void update(
      void Function(CreateFilterV2RequestKeywordsAttributesInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateFilterV2RequestKeywordsAttributesInner build() => _build();

  _$CreateFilterV2RequestKeywordsAttributesInner _build() {
    final _$result = _$v ??
        _$CreateFilterV2RequestKeywordsAttributesInner._(
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
