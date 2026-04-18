// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledStatus extends ScheduledStatus {
  @override
  final String id;
  @override
  final BuiltList<MediaAttachment> mediaAttachments;
  @override
  final ScheduledStatusParams params;
  @override
  final DateTime scheduledAt;

  factory _$ScheduledStatus([void Function(ScheduledStatusBuilder)? updates]) =>
      (ScheduledStatusBuilder()..update(updates))._build();

  _$ScheduledStatus._(
      {required this.id,
      required this.mediaAttachments,
      required this.params,
      required this.scheduledAt})
      : super._();
  @override
  ScheduledStatus rebuild(void Function(ScheduledStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledStatusBuilder toBuilder() => ScheduledStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledStatus &&
        id == other.id &&
        mediaAttachments == other.mediaAttachments &&
        params == other.params &&
        scheduledAt == other.scheduledAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, mediaAttachments.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, scheduledAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScheduledStatus')
          ..add('id', id)
          ..add('mediaAttachments', mediaAttachments)
          ..add('params', params)
          ..add('scheduledAt', scheduledAt))
        .toString();
  }
}

class ScheduledStatusBuilder
    implements Builder<ScheduledStatus, ScheduledStatusBuilder> {
  _$ScheduledStatus? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<MediaAttachment>? _mediaAttachments;
  ListBuilder<MediaAttachment> get mediaAttachments =>
      _$this._mediaAttachments ??= ListBuilder<MediaAttachment>();
  set mediaAttachments(ListBuilder<MediaAttachment>? mediaAttachments) =>
      _$this._mediaAttachments = mediaAttachments;

  ScheduledStatusParamsBuilder? _params;
  ScheduledStatusParamsBuilder get params =>
      _$this._params ??= ScheduledStatusParamsBuilder();
  set params(ScheduledStatusParamsBuilder? params) => _$this._params = params;

  DateTime? _scheduledAt;
  DateTime? get scheduledAt => _$this._scheduledAt;
  set scheduledAt(DateTime? scheduledAt) => _$this._scheduledAt = scheduledAt;

  ScheduledStatusBuilder() {
    ScheduledStatus._defaults(this);
  }

  ScheduledStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _mediaAttachments = $v.mediaAttachments.toBuilder();
      _params = $v.params.toBuilder();
      _scheduledAt = $v.scheduledAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledStatus other) {
    _$v = other as _$ScheduledStatus;
  }

  @override
  void update(void Function(ScheduledStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledStatus build() => _build();

  _$ScheduledStatus _build() {
    _$ScheduledStatus _$result;
    try {
      _$result = _$v ??
          _$ScheduledStatus._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ScheduledStatus', 'id'),
            mediaAttachments: mediaAttachments.build(),
            params: params.build(),
            scheduledAt: BuiltValueNullFieldError.checkNotNull(
                scheduledAt, r'ScheduledStatus', 'scheduledAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaAttachments';
        mediaAttachments.build();
        _$failedField = 'params';
        params.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ScheduledStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
