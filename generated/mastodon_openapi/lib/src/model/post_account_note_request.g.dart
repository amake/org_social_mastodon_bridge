// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_account_note_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostAccountNoteRequest extends PostAccountNoteRequest {
  @override
  final String? comment;

  factory _$PostAccountNoteRequest(
          [void Function(PostAccountNoteRequestBuilder)? updates]) =>
      (PostAccountNoteRequestBuilder()..update(updates))._build();

  _$PostAccountNoteRequest._({this.comment}) : super._();
  @override
  PostAccountNoteRequest rebuild(
          void Function(PostAccountNoteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostAccountNoteRequestBuilder toBuilder() =>
      PostAccountNoteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostAccountNoteRequest && comment == other.comment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostAccountNoteRequest')
          ..add('comment', comment))
        .toString();
  }
}

class PostAccountNoteRequestBuilder
    implements Builder<PostAccountNoteRequest, PostAccountNoteRequestBuilder> {
  _$PostAccountNoteRequest? _$v;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  PostAccountNoteRequestBuilder() {
    PostAccountNoteRequest._defaults(this);
  }

  PostAccountNoteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostAccountNoteRequest other) {
    _$v = other as _$PostAccountNoteRequest;
  }

  @override
  void update(void Function(PostAccountNoteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostAccountNoteRequest build() => _build();

  _$PostAccountNoteRequest _build() {
    final _$result = _$v ??
        _$PostAccountNoteRequest._(
          comment: comment,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
