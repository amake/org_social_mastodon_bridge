// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_push_subscription_request_data_alerts.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutPushSubscriptionRequestDataAlerts
    extends PutPushSubscriptionRequestDataAlerts {
  @override
  final bool? mention;
  @override
  final bool? status;
  @override
  final bool? reblog;
  @override
  final bool? follow;
  @override
  final bool? followRequest;
  @override
  final bool? favourite;
  @override
  final bool? poll;
  @override
  final bool? updateValue;
  @override
  final bool? adminPeriodSignUp;
  @override
  final bool? adminPeriodReport;

  factory _$PutPushSubscriptionRequestDataAlerts(
          [void Function(PutPushSubscriptionRequestDataAlertsBuilder)?
              updates]) =>
      (PutPushSubscriptionRequestDataAlertsBuilder()..update(updates))._build();

  _$PutPushSubscriptionRequestDataAlerts._(
      {this.mention,
      this.status,
      this.reblog,
      this.follow,
      this.followRequest,
      this.favourite,
      this.poll,
      this.updateValue,
      this.adminPeriodSignUp,
      this.adminPeriodReport})
      : super._();
  @override
  PutPushSubscriptionRequestDataAlerts rebuild(
          void Function(PutPushSubscriptionRequestDataAlertsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutPushSubscriptionRequestDataAlertsBuilder toBuilder() =>
      PutPushSubscriptionRequestDataAlertsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutPushSubscriptionRequestDataAlerts &&
        mention == other.mention &&
        status == other.status &&
        reblog == other.reblog &&
        follow == other.follow &&
        followRequest == other.followRequest &&
        favourite == other.favourite &&
        poll == other.poll &&
        updateValue == other.updateValue &&
        adminPeriodSignUp == other.adminPeriodSignUp &&
        adminPeriodReport == other.adminPeriodReport;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mention.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, reblog.hashCode);
    _$hash = $jc(_$hash, follow.hashCode);
    _$hash = $jc(_$hash, followRequest.hashCode);
    _$hash = $jc(_$hash, favourite.hashCode);
    _$hash = $jc(_$hash, poll.hashCode);
    _$hash = $jc(_$hash, updateValue.hashCode);
    _$hash = $jc(_$hash, adminPeriodSignUp.hashCode);
    _$hash = $jc(_$hash, adminPeriodReport.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PutPushSubscriptionRequestDataAlerts')
          ..add('mention', mention)
          ..add('status', status)
          ..add('reblog', reblog)
          ..add('follow', follow)
          ..add('followRequest', followRequest)
          ..add('favourite', favourite)
          ..add('poll', poll)
          ..add('updateValue', updateValue)
          ..add('adminPeriodSignUp', adminPeriodSignUp)
          ..add('adminPeriodReport', adminPeriodReport))
        .toString();
  }
}

class PutPushSubscriptionRequestDataAlertsBuilder
    implements
        Builder<PutPushSubscriptionRequestDataAlerts,
            PutPushSubscriptionRequestDataAlertsBuilder> {
  _$PutPushSubscriptionRequestDataAlerts? _$v;

  bool? _mention;
  bool? get mention => _$this._mention;
  set mention(bool? mention) => _$this._mention = mention;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  bool? _reblog;
  bool? get reblog => _$this._reblog;
  set reblog(bool? reblog) => _$this._reblog = reblog;

  bool? _follow;
  bool? get follow => _$this._follow;
  set follow(bool? follow) => _$this._follow = follow;

  bool? _followRequest;
  bool? get followRequest => _$this._followRequest;
  set followRequest(bool? followRequest) =>
      _$this._followRequest = followRequest;

  bool? _favourite;
  bool? get favourite => _$this._favourite;
  set favourite(bool? favourite) => _$this._favourite = favourite;

  bool? _poll;
  bool? get poll => _$this._poll;
  set poll(bool? poll) => _$this._poll = poll;

  bool? _updateValue;
  bool? get updateValue => _$this._updateValue;
  set updateValue(bool? updateValue) => _$this._updateValue = updateValue;

  bool? _adminPeriodSignUp;
  bool? get adminPeriodSignUp => _$this._adminPeriodSignUp;
  set adminPeriodSignUp(bool? adminPeriodSignUp) =>
      _$this._adminPeriodSignUp = adminPeriodSignUp;

  bool? _adminPeriodReport;
  bool? get adminPeriodReport => _$this._adminPeriodReport;
  set adminPeriodReport(bool? adminPeriodReport) =>
      _$this._adminPeriodReport = adminPeriodReport;

  PutPushSubscriptionRequestDataAlertsBuilder() {
    PutPushSubscriptionRequestDataAlerts._defaults(this);
  }

  PutPushSubscriptionRequestDataAlertsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mention = $v.mention;
      _status = $v.status;
      _reblog = $v.reblog;
      _follow = $v.follow;
      _followRequest = $v.followRequest;
      _favourite = $v.favourite;
      _poll = $v.poll;
      _updateValue = $v.updateValue;
      _adminPeriodSignUp = $v.adminPeriodSignUp;
      _adminPeriodReport = $v.adminPeriodReport;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutPushSubscriptionRequestDataAlerts other) {
    _$v = other as _$PutPushSubscriptionRequestDataAlerts;
  }

  @override
  void update(
      void Function(PutPushSubscriptionRequestDataAlertsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutPushSubscriptionRequestDataAlerts build() => _build();

  _$PutPushSubscriptionRequestDataAlerts _build() {
    final _$result = _$v ??
        _$PutPushSubscriptionRequestDataAlerts._(
          mention: mention,
          status: status,
          reblog: reblog,
          follow: follow,
          followRequest: followRequest,
          favourite: favourite,
          poll: poll,
          updateValue: updateValue,
          adminPeriodSignUp: adminPeriodSignUp,
          adminPeriodReport: adminPeriodReport,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
