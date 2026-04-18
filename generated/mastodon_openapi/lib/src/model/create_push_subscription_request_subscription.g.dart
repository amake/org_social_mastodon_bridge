// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_push_subscription_request_subscription.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePushSubscriptionRequestSubscription
    extends CreatePushSubscriptionRequestSubscription {
  @override
  final CreatePushSubscriptionRequestSubscriptionKeys? keys;
  @override
  final String? endpoint;
  @override
  final bool? standard;

  factory _$CreatePushSubscriptionRequestSubscription(
          [void Function(CreatePushSubscriptionRequestSubscriptionBuilder)?
              updates]) =>
      (CreatePushSubscriptionRequestSubscriptionBuilder()..update(updates))
          ._build();

  _$CreatePushSubscriptionRequestSubscription._(
      {this.keys, this.endpoint, this.standard})
      : super._();
  @override
  CreatePushSubscriptionRequestSubscription rebuild(
          void Function(CreatePushSubscriptionRequestSubscriptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePushSubscriptionRequestSubscriptionBuilder toBuilder() =>
      CreatePushSubscriptionRequestSubscriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePushSubscriptionRequestSubscription &&
        keys == other.keys &&
        endpoint == other.endpoint &&
        standard == other.standard;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keys.hashCode);
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, standard.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'CreatePushSubscriptionRequestSubscription')
          ..add('keys', keys)
          ..add('endpoint', endpoint)
          ..add('standard', standard))
        .toString();
  }
}

class CreatePushSubscriptionRequestSubscriptionBuilder
    implements
        Builder<CreatePushSubscriptionRequestSubscription,
            CreatePushSubscriptionRequestSubscriptionBuilder> {
  _$CreatePushSubscriptionRequestSubscription? _$v;

  CreatePushSubscriptionRequestSubscriptionKeysBuilder? _keys;
  CreatePushSubscriptionRequestSubscriptionKeysBuilder get keys =>
      _$this._keys ??= CreatePushSubscriptionRequestSubscriptionKeysBuilder();
  set keys(CreatePushSubscriptionRequestSubscriptionKeysBuilder? keys) =>
      _$this._keys = keys;

  String? _endpoint;
  String? get endpoint => _$this._endpoint;
  set endpoint(String? endpoint) => _$this._endpoint = endpoint;

  bool? _standard;
  bool? get standard => _$this._standard;
  set standard(bool? standard) => _$this._standard = standard;

  CreatePushSubscriptionRequestSubscriptionBuilder() {
    CreatePushSubscriptionRequestSubscription._defaults(this);
  }

  CreatePushSubscriptionRequestSubscriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keys = $v.keys?.toBuilder();
      _endpoint = $v.endpoint;
      _standard = $v.standard;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePushSubscriptionRequestSubscription other) {
    _$v = other as _$CreatePushSubscriptionRequestSubscription;
  }

  @override
  void update(
      void Function(CreatePushSubscriptionRequestSubscriptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePushSubscriptionRequestSubscription build() => _build();

  _$CreatePushSubscriptionRequestSubscription _build() {
    _$CreatePushSubscriptionRequestSubscription _$result;
    try {
      _$result = _$v ??
          _$CreatePushSubscriptionRequestSubscription._(
            keys: _keys?.build(),
            endpoint: endpoint,
            standard: standard,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keys';
        _keys?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreatePushSubscriptionRequestSubscription',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
