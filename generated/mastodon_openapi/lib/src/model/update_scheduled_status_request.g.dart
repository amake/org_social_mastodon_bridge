// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_scheduled_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateScheduledStatusRequest extends UpdateScheduledStatusRequest {
  @override
  final DateTime? scheduledAt;

  factory _$UpdateScheduledStatusRequest(
          [void Function(UpdateScheduledStatusRequestBuilder)? updates]) =>
      (UpdateScheduledStatusRequestBuilder()..update(updates))._build();

  _$UpdateScheduledStatusRequest._({this.scheduledAt}) : super._();
  @override
  UpdateScheduledStatusRequest rebuild(
          void Function(UpdateScheduledStatusRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateScheduledStatusRequestBuilder toBuilder() =>
      UpdateScheduledStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateScheduledStatusRequest &&
        scheduledAt == other.scheduledAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, scheduledAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateScheduledStatusRequest')
          ..add('scheduledAt', scheduledAt))
        .toString();
  }
}

class UpdateScheduledStatusRequestBuilder
    implements
        Builder<UpdateScheduledStatusRequest,
            UpdateScheduledStatusRequestBuilder> {
  _$UpdateScheduledStatusRequest? _$v;

  DateTime? _scheduledAt;
  DateTime? get scheduledAt => _$this._scheduledAt;
  set scheduledAt(DateTime? scheduledAt) => _$this._scheduledAt = scheduledAt;

  UpdateScheduledStatusRequestBuilder() {
    UpdateScheduledStatusRequest._defaults(this);
  }

  UpdateScheduledStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _scheduledAt = $v.scheduledAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateScheduledStatusRequest other) {
    _$v = other as _$UpdateScheduledStatusRequest;
  }

  @override
  void update(void Function(UpdateScheduledStatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateScheduledStatusRequest build() => _build();

  _$UpdateScheduledStatusRequest _build() {
    final _$result = _$v ??
        _$UpdateScheduledStatusRequest._(
          scheduledAt: scheduledAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
