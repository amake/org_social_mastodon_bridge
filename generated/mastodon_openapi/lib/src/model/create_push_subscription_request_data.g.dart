// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_push_subscription_request_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePushSubscriptionRequestData
    extends CreatePushSubscriptionRequestData {
  @override
  final CreatePushSubscriptionRequestDataAlerts? alerts;
  @override
  final String? policy;

  factory _$CreatePushSubscriptionRequestData(
          [void Function(CreatePushSubscriptionRequestDataBuilder)? updates]) =>
      (CreatePushSubscriptionRequestDataBuilder()..update(updates))._build();

  _$CreatePushSubscriptionRequestData._({this.alerts, this.policy}) : super._();
  @override
  CreatePushSubscriptionRequestData rebuild(
          void Function(CreatePushSubscriptionRequestDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePushSubscriptionRequestDataBuilder toBuilder() =>
      CreatePushSubscriptionRequestDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePushSubscriptionRequestData &&
        alerts == other.alerts &&
        policy == other.policy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alerts.hashCode);
    _$hash = $jc(_$hash, policy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePushSubscriptionRequestData')
          ..add('alerts', alerts)
          ..add('policy', policy))
        .toString();
  }
}

class CreatePushSubscriptionRequestDataBuilder
    implements
        Builder<CreatePushSubscriptionRequestData,
            CreatePushSubscriptionRequestDataBuilder> {
  _$CreatePushSubscriptionRequestData? _$v;

  CreatePushSubscriptionRequestDataAlertsBuilder? _alerts;
  CreatePushSubscriptionRequestDataAlertsBuilder get alerts =>
      _$this._alerts ??= CreatePushSubscriptionRequestDataAlertsBuilder();
  set alerts(CreatePushSubscriptionRequestDataAlertsBuilder? alerts) =>
      _$this._alerts = alerts;

  String? _policy;
  String? get policy => _$this._policy;
  set policy(String? policy) => _$this._policy = policy;

  CreatePushSubscriptionRequestDataBuilder() {
    CreatePushSubscriptionRequestData._defaults(this);
  }

  CreatePushSubscriptionRequestDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alerts = $v.alerts?.toBuilder();
      _policy = $v.policy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePushSubscriptionRequestData other) {
    _$v = other as _$CreatePushSubscriptionRequestData;
  }

  @override
  void update(
      void Function(CreatePushSubscriptionRequestDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePushSubscriptionRequestData build() => _build();

  _$CreatePushSubscriptionRequestData _build() {
    _$CreatePushSubscriptionRequestData _$result;
    try {
      _$result = _$v ??
          _$CreatePushSubscriptionRequestData._(
            alerts: _alerts?.build(),
            policy: policy,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alerts';
        _alerts?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreatePushSubscriptionRequestData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
