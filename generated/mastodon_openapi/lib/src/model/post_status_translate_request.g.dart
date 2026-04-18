// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_status_translate_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostStatusTranslateRequest extends PostStatusTranslateRequest {
  @override
  final String? lang;

  factory _$PostStatusTranslateRequest(
          [void Function(PostStatusTranslateRequestBuilder)? updates]) =>
      (PostStatusTranslateRequestBuilder()..update(updates))._build();

  _$PostStatusTranslateRequest._({this.lang}) : super._();
  @override
  PostStatusTranslateRequest rebuild(
          void Function(PostStatusTranslateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostStatusTranslateRequestBuilder toBuilder() =>
      PostStatusTranslateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostStatusTranslateRequest && lang == other.lang;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lang.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostStatusTranslateRequest')
          ..add('lang', lang))
        .toString();
  }
}

class PostStatusTranslateRequestBuilder
    implements
        Builder<PostStatusTranslateRequest, PostStatusTranslateRequestBuilder> {
  _$PostStatusTranslateRequest? _$v;

  String? _lang;
  String? get lang => _$this._lang;
  set lang(String? lang) => _$this._lang = lang;

  PostStatusTranslateRequestBuilder() {
    PostStatusTranslateRequest._defaults(this);
  }

  PostStatusTranslateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lang = $v.lang;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostStatusTranslateRequest other) {
    _$v = other as _$PostStatusTranslateRequest;
  }

  @override
  void update(void Function(PostStatusTranslateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostStatusTranslateRequest build() => _build();

  _$PostStatusTranslateRequest _build() {
    final _$result = _$v ??
        _$PostStatusTranslateRequest._(
          lang: lang,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
