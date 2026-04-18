// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaStatus extends MediaStatus {
  @override
  final BuiltList<String> mediaIds;
  @override
  final String? status;
  @override
  final String? inReplyToId;
  @override
  final String? language;
  @override
  final String? quoteApprovalPolicy;
  @override
  final String? quotedStatusId;
  @override
  final DateTime? scheduledAt;
  @override
  final bool? sensitive;
  @override
  final String? spoilerText;
  @override
  final StatusVisibilityEnum? visibility;

  factory _$MediaStatus([void Function(MediaStatusBuilder)? updates]) =>
      (MediaStatusBuilder()..update(updates))._build();

  _$MediaStatus._(
      {required this.mediaIds,
      this.status,
      this.inReplyToId,
      this.language,
      this.quoteApprovalPolicy,
      this.quotedStatusId,
      this.scheduledAt,
      this.sensitive,
      this.spoilerText,
      this.visibility})
      : super._();
  @override
  MediaStatus rebuild(void Function(MediaStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaStatusBuilder toBuilder() => MediaStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaStatus &&
        mediaIds == other.mediaIds &&
        status == other.status &&
        inReplyToId == other.inReplyToId &&
        language == other.language &&
        quoteApprovalPolicy == other.quoteApprovalPolicy &&
        quotedStatusId == other.quotedStatusId &&
        scheduledAt == other.scheduledAt &&
        sensitive == other.sensitive &&
        spoilerText == other.spoilerText &&
        visibility == other.visibility;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mediaIds.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, inReplyToId.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, quoteApprovalPolicy.hashCode);
    _$hash = $jc(_$hash, quotedStatusId.hashCode);
    _$hash = $jc(_$hash, scheduledAt.hashCode);
    _$hash = $jc(_$hash, sensitive.hashCode);
    _$hash = $jc(_$hash, spoilerText.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaStatus')
          ..add('mediaIds', mediaIds)
          ..add('status', status)
          ..add('inReplyToId', inReplyToId)
          ..add('language', language)
          ..add('quoteApprovalPolicy', quoteApprovalPolicy)
          ..add('quotedStatusId', quotedStatusId)
          ..add('scheduledAt', scheduledAt)
          ..add('sensitive', sensitive)
          ..add('spoilerText', spoilerText)
          ..add('visibility', visibility))
        .toString();
  }
}

class MediaStatusBuilder
    implements Builder<MediaStatus, MediaStatusBuilder>, BaseStatusBuilder {
  _$MediaStatus? _$v;

  ListBuilder<String>? _mediaIds;
  ListBuilder<String> get mediaIds =>
      _$this._mediaIds ??= ListBuilder<String>();
  set mediaIds(covariant ListBuilder<String>? mediaIds) =>
      _$this._mediaIds = mediaIds;

  String? _status;
  String? get status => _$this._status;
  set status(covariant String? status) => _$this._status = status;

  String? _inReplyToId;
  String? get inReplyToId => _$this._inReplyToId;
  set inReplyToId(covariant String? inReplyToId) =>
      _$this._inReplyToId = inReplyToId;

  String? _language;
  String? get language => _$this._language;
  set language(covariant String? language) => _$this._language = language;

  String? _quoteApprovalPolicy;
  String? get quoteApprovalPolicy => _$this._quoteApprovalPolicy;
  set quoteApprovalPolicy(covariant String? quoteApprovalPolicy) =>
      _$this._quoteApprovalPolicy = quoteApprovalPolicy;

  String? _quotedStatusId;
  String? get quotedStatusId => _$this._quotedStatusId;
  set quotedStatusId(covariant String? quotedStatusId) =>
      _$this._quotedStatusId = quotedStatusId;

  DateTime? _scheduledAt;
  DateTime? get scheduledAt => _$this._scheduledAt;
  set scheduledAt(covariant DateTime? scheduledAt) =>
      _$this._scheduledAt = scheduledAt;

  bool? _sensitive;
  bool? get sensitive => _$this._sensitive;
  set sensitive(covariant bool? sensitive) => _$this._sensitive = sensitive;

  String? _spoilerText;
  String? get spoilerText => _$this._spoilerText;
  set spoilerText(covariant String? spoilerText) =>
      _$this._spoilerText = spoilerText;

  StatusVisibilityEnum? _visibility;
  StatusVisibilityEnum? get visibility => _$this._visibility;
  set visibility(covariant StatusVisibilityEnum? visibility) =>
      _$this._visibility = visibility;

  MediaStatusBuilder() {
    MediaStatus._defaults(this);
  }

  MediaStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mediaIds = $v.mediaIds.toBuilder();
      _status = $v.status;
      _inReplyToId = $v.inReplyToId;
      _language = $v.language;
      _quoteApprovalPolicy = $v.quoteApprovalPolicy;
      _quotedStatusId = $v.quotedStatusId;
      _scheduledAt = $v.scheduledAt;
      _sensitive = $v.sensitive;
      _spoilerText = $v.spoilerText;
      _visibility = $v.visibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant MediaStatus other) {
    _$v = other as _$MediaStatus;
  }

  @override
  void update(void Function(MediaStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaStatus build() => _build();

  _$MediaStatus _build() {
    _$MediaStatus _$result;
    try {
      _$result = _$v ??
          _$MediaStatus._(
            mediaIds: mediaIds.build(),
            status: status,
            inReplyToId: inReplyToId,
            language: language,
            quoteApprovalPolicy: quoteApprovalPolicy,
            quotedStatusId: quotedStatusId,
            scheduledAt: scheduledAt,
            sensitive: sensitive,
            spoilerText: spoilerText,
            visibility: visibility,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaIds';
        mediaIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MediaStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
