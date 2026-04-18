// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_marker_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateMarkerRequest extends CreateMarkerRequest {
  @override
  final CreateMarkerRequestHome? home;
  @override
  final CreateMarkerRequestNotifications? notifications;

  factory _$CreateMarkerRequest(
          [void Function(CreateMarkerRequestBuilder)? updates]) =>
      (CreateMarkerRequestBuilder()..update(updates))._build();

  _$CreateMarkerRequest._({this.home, this.notifications}) : super._();
  @override
  CreateMarkerRequest rebuild(
          void Function(CreateMarkerRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateMarkerRequestBuilder toBuilder() =>
      CreateMarkerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateMarkerRequest &&
        home == other.home &&
        notifications == other.notifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, home.hashCode);
    _$hash = $jc(_$hash, notifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateMarkerRequest')
          ..add('home', home)
          ..add('notifications', notifications))
        .toString();
  }
}

class CreateMarkerRequestBuilder
    implements Builder<CreateMarkerRequest, CreateMarkerRequestBuilder> {
  _$CreateMarkerRequest? _$v;

  CreateMarkerRequestHomeBuilder? _home;
  CreateMarkerRequestHomeBuilder get home =>
      _$this._home ??= CreateMarkerRequestHomeBuilder();
  set home(CreateMarkerRequestHomeBuilder? home) => _$this._home = home;

  CreateMarkerRequestNotificationsBuilder? _notifications;
  CreateMarkerRequestNotificationsBuilder get notifications =>
      _$this._notifications ??= CreateMarkerRequestNotificationsBuilder();
  set notifications(CreateMarkerRequestNotificationsBuilder? notifications) =>
      _$this._notifications = notifications;

  CreateMarkerRequestBuilder() {
    CreateMarkerRequest._defaults(this);
  }

  CreateMarkerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _home = $v.home?.toBuilder();
      _notifications = $v.notifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateMarkerRequest other) {
    _$v = other as _$CreateMarkerRequest;
  }

  @override
  void update(void Function(CreateMarkerRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateMarkerRequest build() => _build();

  _$CreateMarkerRequest _build() {
    _$CreateMarkerRequest _$result;
    try {
      _$result = _$v ??
          _$CreateMarkerRequest._(
            home: _home?.build(),
            notifications: _notifications?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'home';
        _home?.build();
        _$failedField = 'notifications';
        _notifications?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateMarkerRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
