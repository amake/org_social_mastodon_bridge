// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_account_follow_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostAccountFollowRequest extends PostAccountFollowRequest {
  @override
  final BuiltList<String>? languages;
  @override
  final bool? notify;
  @override
  final bool? reblogs;

  factory _$PostAccountFollowRequest(
          [void Function(PostAccountFollowRequestBuilder)? updates]) =>
      (PostAccountFollowRequestBuilder()..update(updates))._build();

  _$PostAccountFollowRequest._({this.languages, this.notify, this.reblogs})
      : super._();
  @override
  PostAccountFollowRequest rebuild(
          void Function(PostAccountFollowRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostAccountFollowRequestBuilder toBuilder() =>
      PostAccountFollowRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostAccountFollowRequest &&
        languages == other.languages &&
        notify == other.notify &&
        reblogs == other.reblogs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, notify.hashCode);
    _$hash = $jc(_$hash, reblogs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostAccountFollowRequest')
          ..add('languages', languages)
          ..add('notify', notify)
          ..add('reblogs', reblogs))
        .toString();
  }
}

class PostAccountFollowRequestBuilder
    implements
        Builder<PostAccountFollowRequest, PostAccountFollowRequestBuilder> {
  _$PostAccountFollowRequest? _$v;

  ListBuilder<String>? _languages;
  ListBuilder<String> get languages =>
      _$this._languages ??= ListBuilder<String>();
  set languages(ListBuilder<String>? languages) =>
      _$this._languages = languages;

  bool? _notify;
  bool? get notify => _$this._notify;
  set notify(bool? notify) => _$this._notify = notify;

  bool? _reblogs;
  bool? get reblogs => _$this._reblogs;
  set reblogs(bool? reblogs) => _$this._reblogs = reblogs;

  PostAccountFollowRequestBuilder() {
    PostAccountFollowRequest._defaults(this);
  }

  PostAccountFollowRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _languages = $v.languages?.toBuilder();
      _notify = $v.notify;
      _reblogs = $v.reblogs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostAccountFollowRequest other) {
    _$v = other as _$PostAccountFollowRequest;
  }

  @override
  void update(void Function(PostAccountFollowRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostAccountFollowRequest build() => _build();

  _$PostAccountFollowRequest _build() {
    _$PostAccountFollowRequest _$result;
    try {
      _$result = _$v ??
          _$PostAccountFollowRequest._(
            languages: _languages?.build(),
            notify: notify,
            reblogs: reblogs,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'languages';
        _languages?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostAccountFollowRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
