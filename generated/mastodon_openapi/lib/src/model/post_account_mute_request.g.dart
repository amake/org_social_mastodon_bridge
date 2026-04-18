// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_account_mute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostAccountMuteRequest extends PostAccountMuteRequest {
  @override
  final int? duration;
  @override
  final bool? notifications;

  factory _$PostAccountMuteRequest(
          [void Function(PostAccountMuteRequestBuilder)? updates]) =>
      (PostAccountMuteRequestBuilder()..update(updates))._build();

  _$PostAccountMuteRequest._({this.duration, this.notifications}) : super._();
  @override
  PostAccountMuteRequest rebuild(
          void Function(PostAccountMuteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostAccountMuteRequestBuilder toBuilder() =>
      PostAccountMuteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostAccountMuteRequest &&
        duration == other.duration &&
        notifications == other.notifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, notifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostAccountMuteRequest')
          ..add('duration', duration)
          ..add('notifications', notifications))
        .toString();
  }
}

class PostAccountMuteRequestBuilder
    implements Builder<PostAccountMuteRequest, PostAccountMuteRequestBuilder> {
  _$PostAccountMuteRequest? _$v;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  bool? _notifications;
  bool? get notifications => _$this._notifications;
  set notifications(bool? notifications) =>
      _$this._notifications = notifications;

  PostAccountMuteRequestBuilder() {
    PostAccountMuteRequest._defaults(this);
  }

  PostAccountMuteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _duration = $v.duration;
      _notifications = $v.notifications;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostAccountMuteRequest other) {
    _$v = other as _$PostAccountMuteRequest;
  }

  @override
  void update(void Function(PostAccountMuteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostAccountMuteRequest build() => _build();

  _$PostAccountMuteRequest _build() {
    final _$result = _$v ??
        _$PostAccountMuteRequest._(
          duration: duration,
          notifications: notifications,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
