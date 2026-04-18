// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_push_subscription.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebPushSubscription extends WebPushSubscription {
  @override
  final WebPushSubscriptionAlerts alerts;
  @override
  final String endpoint;
  @override
  final String id;
  @override
  final String serverKey;
  @override
  final bool? standard;

  factory _$WebPushSubscription(
          [void Function(WebPushSubscriptionBuilder)? updates]) =>
      (WebPushSubscriptionBuilder()..update(updates))._build();

  _$WebPushSubscription._(
      {required this.alerts,
      required this.endpoint,
      required this.id,
      required this.serverKey,
      this.standard})
      : super._();
  @override
  WebPushSubscription rebuild(
          void Function(WebPushSubscriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebPushSubscriptionBuilder toBuilder() =>
      WebPushSubscriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebPushSubscription &&
        alerts == other.alerts &&
        endpoint == other.endpoint &&
        id == other.id &&
        serverKey == other.serverKey &&
        standard == other.standard;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alerts.hashCode);
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, serverKey.hashCode);
    _$hash = $jc(_$hash, standard.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WebPushSubscription')
          ..add('alerts', alerts)
          ..add('endpoint', endpoint)
          ..add('id', id)
          ..add('serverKey', serverKey)
          ..add('standard', standard))
        .toString();
  }
}

class WebPushSubscriptionBuilder
    implements Builder<WebPushSubscription, WebPushSubscriptionBuilder> {
  _$WebPushSubscription? _$v;

  WebPushSubscriptionAlertsBuilder? _alerts;
  WebPushSubscriptionAlertsBuilder get alerts =>
      _$this._alerts ??= WebPushSubscriptionAlertsBuilder();
  set alerts(WebPushSubscriptionAlertsBuilder? alerts) =>
      _$this._alerts = alerts;

  String? _endpoint;
  String? get endpoint => _$this._endpoint;
  set endpoint(String? endpoint) => _$this._endpoint = endpoint;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _serverKey;
  String? get serverKey => _$this._serverKey;
  set serverKey(String? serverKey) => _$this._serverKey = serverKey;

  bool? _standard;
  bool? get standard => _$this._standard;
  set standard(bool? standard) => _$this._standard = standard;

  WebPushSubscriptionBuilder() {
    WebPushSubscription._defaults(this);
  }

  WebPushSubscriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alerts = $v.alerts.toBuilder();
      _endpoint = $v.endpoint;
      _id = $v.id;
      _serverKey = $v.serverKey;
      _standard = $v.standard;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebPushSubscription other) {
    _$v = other as _$WebPushSubscription;
  }

  @override
  void update(void Function(WebPushSubscriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebPushSubscription build() => _build();

  _$WebPushSubscription _build() {
    _$WebPushSubscription _$result;
    try {
      _$result = _$v ??
          _$WebPushSubscription._(
            alerts: alerts.build(),
            endpoint: BuiltValueNullFieldError.checkNotNull(
                endpoint, r'WebPushSubscription', 'endpoint'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'WebPushSubscription', 'id'),
            serverKey: BuiltValueNullFieldError.checkNotNull(
                serverKey, r'WebPushSubscription', 'serverKey'),
            standard: standard,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alerts';
        alerts.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WebPushSubscription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
