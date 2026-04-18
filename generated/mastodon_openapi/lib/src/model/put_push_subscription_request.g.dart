// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_push_subscription_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutPushSubscriptionRequest extends PutPushSubscriptionRequest {
  @override
  final PutPushSubscriptionRequestData? data;
  @override
  final String? policy;

  factory _$PutPushSubscriptionRequest(
          [void Function(PutPushSubscriptionRequestBuilder)? updates]) =>
      (PutPushSubscriptionRequestBuilder()..update(updates))._build();

  _$PutPushSubscriptionRequest._({this.data, this.policy}) : super._();
  @override
  PutPushSubscriptionRequest rebuild(
          void Function(PutPushSubscriptionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutPushSubscriptionRequestBuilder toBuilder() =>
      PutPushSubscriptionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutPushSubscriptionRequest &&
        data == other.data &&
        policy == other.policy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, policy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PutPushSubscriptionRequest')
          ..add('data', data)
          ..add('policy', policy))
        .toString();
  }
}

class PutPushSubscriptionRequestBuilder
    implements
        Builder<PutPushSubscriptionRequest, PutPushSubscriptionRequestBuilder> {
  _$PutPushSubscriptionRequest? _$v;

  PutPushSubscriptionRequestDataBuilder? _data;
  PutPushSubscriptionRequestDataBuilder get data =>
      _$this._data ??= PutPushSubscriptionRequestDataBuilder();
  set data(PutPushSubscriptionRequestDataBuilder? data) => _$this._data = data;

  String? _policy;
  String? get policy => _$this._policy;
  set policy(String? policy) => _$this._policy = policy;

  PutPushSubscriptionRequestBuilder() {
    PutPushSubscriptionRequest._defaults(this);
  }

  PutPushSubscriptionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _policy = $v.policy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutPushSubscriptionRequest other) {
    _$v = other as _$PutPushSubscriptionRequest;
  }

  @override
  void update(void Function(PutPushSubscriptionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutPushSubscriptionRequest build() => _build();

  _$PutPushSubscriptionRequest _build() {
    _$PutPushSubscriptionRequest _$result;
    try {
      _$result = _$v ??
          _$PutPushSubscriptionRequest._(
            data: _data?.build(),
            policy: policy,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PutPushSubscriptionRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
