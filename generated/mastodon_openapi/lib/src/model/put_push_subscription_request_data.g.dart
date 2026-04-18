// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_push_subscription_request_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutPushSubscriptionRequestData extends PutPushSubscriptionRequestData {
  @override
  final PutPushSubscriptionRequestDataAlerts? alerts;

  factory _$PutPushSubscriptionRequestData(
          [void Function(PutPushSubscriptionRequestDataBuilder)? updates]) =>
      (PutPushSubscriptionRequestDataBuilder()..update(updates))._build();

  _$PutPushSubscriptionRequestData._({this.alerts}) : super._();
  @override
  PutPushSubscriptionRequestData rebuild(
          void Function(PutPushSubscriptionRequestDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutPushSubscriptionRequestDataBuilder toBuilder() =>
      PutPushSubscriptionRequestDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutPushSubscriptionRequestData && alerts == other.alerts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alerts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PutPushSubscriptionRequestData')
          ..add('alerts', alerts))
        .toString();
  }
}

class PutPushSubscriptionRequestDataBuilder
    implements
        Builder<PutPushSubscriptionRequestData,
            PutPushSubscriptionRequestDataBuilder> {
  _$PutPushSubscriptionRequestData? _$v;

  PutPushSubscriptionRequestDataAlertsBuilder? _alerts;
  PutPushSubscriptionRequestDataAlertsBuilder get alerts =>
      _$this._alerts ??= PutPushSubscriptionRequestDataAlertsBuilder();
  set alerts(PutPushSubscriptionRequestDataAlertsBuilder? alerts) =>
      _$this._alerts = alerts;

  PutPushSubscriptionRequestDataBuilder() {
    PutPushSubscriptionRequestData._defaults(this);
  }

  PutPushSubscriptionRequestDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alerts = $v.alerts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutPushSubscriptionRequestData other) {
    _$v = other as _$PutPushSubscriptionRequestData;
  }

  @override
  void update(void Function(PutPushSubscriptionRequestDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutPushSubscriptionRequestData build() => _build();

  _$PutPushSubscriptionRequestData _build() {
    _$PutPushSubscriptionRequestData _$result;
    try {
      _$result = _$v ??
          _$PutPushSubscriptionRequestData._(
            alerts: _alerts?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alerts';
        _alerts?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PutPushSubscriptionRequestData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
