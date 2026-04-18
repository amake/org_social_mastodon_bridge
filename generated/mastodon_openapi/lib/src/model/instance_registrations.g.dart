// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_registrations.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceRegistrations extends InstanceRegistrations {
  @override
  final bool approvalRequired;
  @override
  final bool enabled;
  @override
  final String? message;
  @override
  final int? minAge;
  @override
  final bool? reasonRequired;
  @override
  final String? url;

  factory _$InstanceRegistrations(
          [void Function(InstanceRegistrationsBuilder)? updates]) =>
      (InstanceRegistrationsBuilder()..update(updates))._build();

  _$InstanceRegistrations._(
      {required this.approvalRequired,
      required this.enabled,
      this.message,
      this.minAge,
      this.reasonRequired,
      this.url})
      : super._();
  @override
  InstanceRegistrations rebuild(
          void Function(InstanceRegistrationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceRegistrationsBuilder toBuilder() =>
      InstanceRegistrationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceRegistrations &&
        approvalRequired == other.approvalRequired &&
        enabled == other.enabled &&
        message == other.message &&
        minAge == other.minAge &&
        reasonRequired == other.reasonRequired &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, approvalRequired.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, minAge.hashCode);
    _$hash = $jc(_$hash, reasonRequired.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstanceRegistrations')
          ..add('approvalRequired', approvalRequired)
          ..add('enabled', enabled)
          ..add('message', message)
          ..add('minAge', minAge)
          ..add('reasonRequired', reasonRequired)
          ..add('url', url))
        .toString();
  }
}

class InstanceRegistrationsBuilder
    implements Builder<InstanceRegistrations, InstanceRegistrationsBuilder> {
  _$InstanceRegistrations? _$v;

  bool? _approvalRequired;
  bool? get approvalRequired => _$this._approvalRequired;
  set approvalRequired(bool? approvalRequired) =>
      _$this._approvalRequired = approvalRequired;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _minAge;
  int? get minAge => _$this._minAge;
  set minAge(int? minAge) => _$this._minAge = minAge;

  bool? _reasonRequired;
  bool? get reasonRequired => _$this._reasonRequired;
  set reasonRequired(bool? reasonRequired) =>
      _$this._reasonRequired = reasonRequired;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  InstanceRegistrationsBuilder() {
    InstanceRegistrations._defaults(this);
  }

  InstanceRegistrationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _approvalRequired = $v.approvalRequired;
      _enabled = $v.enabled;
      _message = $v.message;
      _minAge = $v.minAge;
      _reasonRequired = $v.reasonRequired;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceRegistrations other) {
    _$v = other as _$InstanceRegistrations;
  }

  @override
  void update(void Function(InstanceRegistrationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceRegistrations build() => _build();

  _$InstanceRegistrations _build() {
    final _$result = _$v ??
        _$InstanceRegistrations._(
          approvalRequired: BuiltValueNullFieldError.checkNotNull(
              approvalRequired, r'InstanceRegistrations', 'approvalRequired'),
          enabled: BuiltValueNullFieldError.checkNotNull(
              enabled, r'InstanceRegistrations', 'enabled'),
          message: message,
          minAge: minAge,
          reasonRequired: reasonRequired,
          url: url,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
