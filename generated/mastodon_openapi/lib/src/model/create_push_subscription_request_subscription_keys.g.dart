// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_push_subscription_request_subscription_keys.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePushSubscriptionRequestSubscriptionKeys
    extends CreatePushSubscriptionRequestSubscriptionKeys {
  @override
  final String? p256dh;
  @override
  final String? auth;

  factory _$CreatePushSubscriptionRequestSubscriptionKeys(
          [void Function(CreatePushSubscriptionRequestSubscriptionKeysBuilder)?
              updates]) =>
      (CreatePushSubscriptionRequestSubscriptionKeysBuilder()..update(updates))
          ._build();

  _$CreatePushSubscriptionRequestSubscriptionKeys._({this.p256dh, this.auth})
      : super._();
  @override
  CreatePushSubscriptionRequestSubscriptionKeys rebuild(
          void Function(CreatePushSubscriptionRequestSubscriptionKeysBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePushSubscriptionRequestSubscriptionKeysBuilder toBuilder() =>
      CreatePushSubscriptionRequestSubscriptionKeysBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePushSubscriptionRequestSubscriptionKeys &&
        p256dh == other.p256dh &&
        auth == other.auth;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, p256dh.hashCode);
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'CreatePushSubscriptionRequestSubscriptionKeys')
          ..add('p256dh', p256dh)
          ..add('auth', auth))
        .toString();
  }
}

class CreatePushSubscriptionRequestSubscriptionKeysBuilder
    implements
        Builder<CreatePushSubscriptionRequestSubscriptionKeys,
            CreatePushSubscriptionRequestSubscriptionKeysBuilder> {
  _$CreatePushSubscriptionRequestSubscriptionKeys? _$v;

  String? _p256dh;
  String? get p256dh => _$this._p256dh;
  set p256dh(String? p256dh) => _$this._p256dh = p256dh;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  CreatePushSubscriptionRequestSubscriptionKeysBuilder() {
    CreatePushSubscriptionRequestSubscriptionKeys._defaults(this);
  }

  CreatePushSubscriptionRequestSubscriptionKeysBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _p256dh = $v.p256dh;
      _auth = $v.auth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePushSubscriptionRequestSubscriptionKeys other) {
    _$v = other as _$CreatePushSubscriptionRequestSubscriptionKeys;
  }

  @override
  void update(
      void Function(CreatePushSubscriptionRequestSubscriptionKeysBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePushSubscriptionRequestSubscriptionKeys build() => _build();

  _$CreatePushSubscriptionRequestSubscriptionKeys _build() {
    final _$result = _$v ??
        _$CreatePushSubscriptionRequestSubscriptionKeys._(
          p256dh: p256dh,
          auth: auth,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
