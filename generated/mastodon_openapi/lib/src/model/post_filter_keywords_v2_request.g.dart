// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_filter_keywords_v2_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostFilterKeywordsV2Request extends PostFilterKeywordsV2Request {
  @override
  final String keyword;
  @override
  final bool? wholeWord;

  factory _$PostFilterKeywordsV2Request(
          [void Function(PostFilterKeywordsV2RequestBuilder)? updates]) =>
      (PostFilterKeywordsV2RequestBuilder()..update(updates))._build();

  _$PostFilterKeywordsV2Request._({required this.keyword, this.wholeWord})
      : super._();
  @override
  PostFilterKeywordsV2Request rebuild(
          void Function(PostFilterKeywordsV2RequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostFilterKeywordsV2RequestBuilder toBuilder() =>
      PostFilterKeywordsV2RequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostFilterKeywordsV2Request &&
        keyword == other.keyword &&
        wholeWord == other.wholeWord;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keyword.hashCode);
    _$hash = $jc(_$hash, wholeWord.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostFilterKeywordsV2Request')
          ..add('keyword', keyword)
          ..add('wholeWord', wholeWord))
        .toString();
  }
}

class PostFilterKeywordsV2RequestBuilder
    implements
        Builder<PostFilterKeywordsV2Request,
            PostFilterKeywordsV2RequestBuilder> {
  _$PostFilterKeywordsV2Request? _$v;

  String? _keyword;
  String? get keyword => _$this._keyword;
  set keyword(String? keyword) => _$this._keyword = keyword;

  bool? _wholeWord;
  bool? get wholeWord => _$this._wholeWord;
  set wholeWord(bool? wholeWord) => _$this._wholeWord = wholeWord;

  PostFilterKeywordsV2RequestBuilder() {
    PostFilterKeywordsV2Request._defaults(this);
  }

  PostFilterKeywordsV2RequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keyword = $v.keyword;
      _wholeWord = $v.wholeWord;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostFilterKeywordsV2Request other) {
    _$v = other as _$PostFilterKeywordsV2Request;
  }

  @override
  void update(void Function(PostFilterKeywordsV2RequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostFilterKeywordsV2Request build() => _build();

  _$PostFilterKeywordsV2Request _build() {
    final _$result = _$v ??
        _$PostFilterKeywordsV2Request._(
          keyword: BuiltValueNullFieldError.checkNotNull(
              keyword, r'PostFilterKeywordsV2Request', 'keyword'),
          wholeWord: wholeWord,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
