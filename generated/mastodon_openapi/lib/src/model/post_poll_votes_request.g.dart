// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_poll_votes_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostPollVotesRequest extends PostPollVotesRequest {
  @override
  final BuiltList<int> choices;

  factory _$PostPollVotesRequest(
          [void Function(PostPollVotesRequestBuilder)? updates]) =>
      (PostPollVotesRequestBuilder()..update(updates))._build();

  _$PostPollVotesRequest._({required this.choices}) : super._();
  @override
  PostPollVotesRequest rebuild(
          void Function(PostPollVotesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostPollVotesRequestBuilder toBuilder() =>
      PostPollVotesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostPollVotesRequest && choices == other.choices;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, choices.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostPollVotesRequest')
          ..add('choices', choices))
        .toString();
  }
}

class PostPollVotesRequestBuilder
    implements Builder<PostPollVotesRequest, PostPollVotesRequestBuilder> {
  _$PostPollVotesRequest? _$v;

  ListBuilder<int>? _choices;
  ListBuilder<int> get choices => _$this._choices ??= ListBuilder<int>();
  set choices(ListBuilder<int>? choices) => _$this._choices = choices;

  PostPollVotesRequestBuilder() {
    PostPollVotesRequest._defaults(this);
  }

  PostPollVotesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _choices = $v.choices.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostPollVotesRequest other) {
    _$v = other as _$PostPollVotesRequest;
  }

  @override
  void update(void Function(PostPollVotesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostPollVotesRequest build() => _build();

  _$PostPollVotesRequest _build() {
    _$PostPollVotesRequest _$result;
    try {
      _$result = _$v ??
          _$PostPollVotesRequest._(
            choices: choices.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'choices';
        choices.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostPollVotesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
