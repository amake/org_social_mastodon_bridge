// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_marker_request_notifications.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateMarkerRequestNotifications
    extends CreateMarkerRequestNotifications {
  @override
  final String? lastReadId;

  factory _$CreateMarkerRequestNotifications(
          [void Function(CreateMarkerRequestNotificationsBuilder)? updates]) =>
      (CreateMarkerRequestNotificationsBuilder()..update(updates))._build();

  _$CreateMarkerRequestNotifications._({this.lastReadId}) : super._();
  @override
  CreateMarkerRequestNotifications rebuild(
          void Function(CreateMarkerRequestNotificationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateMarkerRequestNotificationsBuilder toBuilder() =>
      CreateMarkerRequestNotificationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateMarkerRequestNotifications &&
        lastReadId == other.lastReadId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lastReadId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateMarkerRequestNotifications')
          ..add('lastReadId', lastReadId))
        .toString();
  }
}

class CreateMarkerRequestNotificationsBuilder
    implements
        Builder<CreateMarkerRequestNotifications,
            CreateMarkerRequestNotificationsBuilder> {
  _$CreateMarkerRequestNotifications? _$v;

  String? _lastReadId;
  String? get lastReadId => _$this._lastReadId;
  set lastReadId(String? lastReadId) => _$this._lastReadId = lastReadId;

  CreateMarkerRequestNotificationsBuilder() {
    CreateMarkerRequestNotifications._defaults(this);
  }

  CreateMarkerRequestNotificationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lastReadId = $v.lastReadId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateMarkerRequestNotifications other) {
    _$v = other as _$CreateMarkerRequestNotifications;
  }

  @override
  void update(void Function(CreateMarkerRequestNotificationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateMarkerRequestNotifications build() => _build();

  _$CreateMarkerRequestNotifications _build() {
    final _$result = _$v ??
        _$CreateMarkerRequestNotifications._(
          lastReadId: lastReadId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
