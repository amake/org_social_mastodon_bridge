// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_push_subscription_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePushSubscriptionRequest extends CreatePushSubscriptionRequest {
  @override
  final CreatePushSubscriptionRequestSubscription subscription;
  @override
  final CreatePushSubscriptionRequestData? data;

  factory _$CreatePushSubscriptionRequest(
          [void Function(CreatePushSubscriptionRequestBuilder)? updates]) =>
      (CreatePushSubscriptionRequestBuilder()..update(updates))._build();

  _$CreatePushSubscriptionRequest._({required this.subscription, this.data})
      : super._();
  @override
  CreatePushSubscriptionRequest rebuild(
          void Function(CreatePushSubscriptionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePushSubscriptionRequestBuilder toBuilder() =>
      CreatePushSubscriptionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePushSubscriptionRequest &&
        subscription == other.subscription &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subscription.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePushSubscriptionRequest')
          ..add('subscription', subscription)
          ..add('data', data))
        .toString();
  }
}

class CreatePushSubscriptionRequestBuilder
    implements
        Builder<CreatePushSubscriptionRequest,
            CreatePushSubscriptionRequestBuilder> {
  _$CreatePushSubscriptionRequest? _$v;

  CreatePushSubscriptionRequestSubscriptionBuilder? _subscription;
  CreatePushSubscriptionRequestSubscriptionBuilder get subscription =>
      _$this._subscription ??=
          CreatePushSubscriptionRequestSubscriptionBuilder();
  set subscription(
          CreatePushSubscriptionRequestSubscriptionBuilder? subscription) =>
      _$this._subscription = subscription;

  CreatePushSubscriptionRequestDataBuilder? _data;
  CreatePushSubscriptionRequestDataBuilder get data =>
      _$this._data ??= CreatePushSubscriptionRequestDataBuilder();
  set data(CreatePushSubscriptionRequestDataBuilder? data) =>
      _$this._data = data;

  CreatePushSubscriptionRequestBuilder() {
    CreatePushSubscriptionRequest._defaults(this);
  }

  CreatePushSubscriptionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subscription = $v.subscription.toBuilder();
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePushSubscriptionRequest other) {
    _$v = other as _$CreatePushSubscriptionRequest;
  }

  @override
  void update(void Function(CreatePushSubscriptionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePushSubscriptionRequest build() => _build();

  _$CreatePushSubscriptionRequest _build() {
    _$CreatePushSubscriptionRequest _$result;
    try {
      _$result = _$v ??
          _$CreatePushSubscriptionRequest._(
            subscription: subscription.build(),
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subscription';
        subscription.build();
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreatePushSubscriptionRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
