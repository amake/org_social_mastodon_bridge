// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_filter_statuses_v2_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostFilterStatusesV2Request extends PostFilterStatusesV2Request {
  @override
  final String statusId;

  factory _$PostFilterStatusesV2Request(
          [void Function(PostFilterStatusesV2RequestBuilder)? updates]) =>
      (PostFilterStatusesV2RequestBuilder()..update(updates))._build();

  _$PostFilterStatusesV2Request._({required this.statusId}) : super._();
  @override
  PostFilterStatusesV2Request rebuild(
          void Function(PostFilterStatusesV2RequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostFilterStatusesV2RequestBuilder toBuilder() =>
      PostFilterStatusesV2RequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostFilterStatusesV2Request && statusId == other.statusId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, statusId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostFilterStatusesV2Request')
          ..add('statusId', statusId))
        .toString();
  }
}

class PostFilterStatusesV2RequestBuilder
    implements
        Builder<PostFilterStatusesV2Request,
            PostFilterStatusesV2RequestBuilder> {
  _$PostFilterStatusesV2Request? _$v;

  String? _statusId;
  String? get statusId => _$this._statusId;
  set statusId(String? statusId) => _$this._statusId = statusId;

  PostFilterStatusesV2RequestBuilder() {
    PostFilterStatusesV2Request._defaults(this);
  }

  PostFilterStatusesV2RequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusId = $v.statusId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostFilterStatusesV2Request other) {
    _$v = other as _$PostFilterStatusesV2Request;
  }

  @override
  void update(void Function(PostFilterStatusesV2RequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostFilterStatusesV2Request build() => _build();

  _$PostFilterStatusesV2Request _build() {
    final _$result = _$v ??
        _$PostFilterStatusesV2Request._(
          statusId: BuiltValueNullFieldError.checkNotNull(
              statusId, r'PostFilterStatusesV2Request', 'statusId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
