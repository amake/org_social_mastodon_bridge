// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_status_reblog_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostStatusReblogRequest extends PostStatusReblogRequest {
  @override
  final StatusVisibilityEnum? visibility;

  factory _$PostStatusReblogRequest(
          [void Function(PostStatusReblogRequestBuilder)? updates]) =>
      (PostStatusReblogRequestBuilder()..update(updates))._build();

  _$PostStatusReblogRequest._({this.visibility}) : super._();
  @override
  PostStatusReblogRequest rebuild(
          void Function(PostStatusReblogRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostStatusReblogRequestBuilder toBuilder() =>
      PostStatusReblogRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostStatusReblogRequest && visibility == other.visibility;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostStatusReblogRequest')
          ..add('visibility', visibility))
        .toString();
  }
}

class PostStatusReblogRequestBuilder
    implements
        Builder<PostStatusReblogRequest, PostStatusReblogRequestBuilder> {
  _$PostStatusReblogRequest? _$v;

  StatusVisibilityEnum? _visibility;
  StatusVisibilityEnum? get visibility => _$this._visibility;
  set visibility(StatusVisibilityEnum? visibility) =>
      _$this._visibility = visibility;

  PostStatusReblogRequestBuilder() {
    PostStatusReblogRequest._defaults(this);
  }

  PostStatusReblogRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _visibility = $v.visibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostStatusReblogRequest other) {
    _$v = other as _$PostStatusReblogRequest;
  }

  @override
  void update(void Function(PostStatusReblogRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostStatusReblogRequest build() => _build();

  _$PostStatusReblogRequest _build() {
    final _$result = _$v ??
        _$PostStatusReblogRequest._(
          visibility: visibility,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
