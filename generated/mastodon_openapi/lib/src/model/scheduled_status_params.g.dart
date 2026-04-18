// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_status_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledStatusParams extends ScheduledStatusParams {
  @override
  final int applicationId;
  @override
  final String text;
  @override
  final StatusVisibilityEnum visibility;
  @override
  final bool withRateLimit;
  @override
  final String? idempotency;
  @override
  final int? inReplyToId;
  @override
  final String? language;
  @override
  final BuiltList<String>? mediaIds;
  @override
  final ScheduledStatusParamsPoll? poll;
  @override
  final String? scheduledAt;
  @override
  final bool? sensitive;
  @override
  final String? spoilerText;

  factory _$ScheduledStatusParams(
          [void Function(ScheduledStatusParamsBuilder)? updates]) =>
      (ScheduledStatusParamsBuilder()..update(updates))._build();

  _$ScheduledStatusParams._(
      {required this.applicationId,
      required this.text,
      required this.visibility,
      required this.withRateLimit,
      this.idempotency,
      this.inReplyToId,
      this.language,
      this.mediaIds,
      this.poll,
      this.scheduledAt,
      this.sensitive,
      this.spoilerText})
      : super._();
  @override
  ScheduledStatusParams rebuild(
          void Function(ScheduledStatusParamsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledStatusParamsBuilder toBuilder() =>
      ScheduledStatusParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledStatusParams &&
        applicationId == other.applicationId &&
        text == other.text &&
        visibility == other.visibility &&
        withRateLimit == other.withRateLimit &&
        idempotency == other.idempotency &&
        inReplyToId == other.inReplyToId &&
        language == other.language &&
        mediaIds == other.mediaIds &&
        poll == other.poll &&
        scheduledAt == other.scheduledAt &&
        sensitive == other.sensitive &&
        spoilerText == other.spoilerText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, applicationId.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, withRateLimit.hashCode);
    _$hash = $jc(_$hash, idempotency.hashCode);
    _$hash = $jc(_$hash, inReplyToId.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, mediaIds.hashCode);
    _$hash = $jc(_$hash, poll.hashCode);
    _$hash = $jc(_$hash, scheduledAt.hashCode);
    _$hash = $jc(_$hash, sensitive.hashCode);
    _$hash = $jc(_$hash, spoilerText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScheduledStatusParams')
          ..add('applicationId', applicationId)
          ..add('text', text)
          ..add('visibility', visibility)
          ..add('withRateLimit', withRateLimit)
          ..add('idempotency', idempotency)
          ..add('inReplyToId', inReplyToId)
          ..add('language', language)
          ..add('mediaIds', mediaIds)
          ..add('poll', poll)
          ..add('scheduledAt', scheduledAt)
          ..add('sensitive', sensitive)
          ..add('spoilerText', spoilerText))
        .toString();
  }
}

class ScheduledStatusParamsBuilder
    implements Builder<ScheduledStatusParams, ScheduledStatusParamsBuilder> {
  _$ScheduledStatusParams? _$v;

  int? _applicationId;
  int? get applicationId => _$this._applicationId;
  set applicationId(int? applicationId) =>
      _$this._applicationId = applicationId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  StatusVisibilityEnum? _visibility;
  StatusVisibilityEnum? get visibility => _$this._visibility;
  set visibility(StatusVisibilityEnum? visibility) =>
      _$this._visibility = visibility;

  bool? _withRateLimit;
  bool? get withRateLimit => _$this._withRateLimit;
  set withRateLimit(bool? withRateLimit) =>
      _$this._withRateLimit = withRateLimit;

  String? _idempotency;
  String? get idempotency => _$this._idempotency;
  set idempotency(String? idempotency) => _$this._idempotency = idempotency;

  int? _inReplyToId;
  int? get inReplyToId => _$this._inReplyToId;
  set inReplyToId(int? inReplyToId) => _$this._inReplyToId = inReplyToId;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  ListBuilder<String>? _mediaIds;
  ListBuilder<String> get mediaIds =>
      _$this._mediaIds ??= ListBuilder<String>();
  set mediaIds(ListBuilder<String>? mediaIds) => _$this._mediaIds = mediaIds;

  ScheduledStatusParamsPollBuilder? _poll;
  ScheduledStatusParamsPollBuilder get poll =>
      _$this._poll ??= ScheduledStatusParamsPollBuilder();
  set poll(ScheduledStatusParamsPollBuilder? poll) => _$this._poll = poll;

  String? _scheduledAt;
  String? get scheduledAt => _$this._scheduledAt;
  set scheduledAt(String? scheduledAt) => _$this._scheduledAt = scheduledAt;

  bool? _sensitive;
  bool? get sensitive => _$this._sensitive;
  set sensitive(bool? sensitive) => _$this._sensitive = sensitive;

  String? _spoilerText;
  String? get spoilerText => _$this._spoilerText;
  set spoilerText(String? spoilerText) => _$this._spoilerText = spoilerText;

  ScheduledStatusParamsBuilder() {
    ScheduledStatusParams._defaults(this);
  }

  ScheduledStatusParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applicationId = $v.applicationId;
      _text = $v.text;
      _visibility = $v.visibility;
      _withRateLimit = $v.withRateLimit;
      _idempotency = $v.idempotency;
      _inReplyToId = $v.inReplyToId;
      _language = $v.language;
      _mediaIds = $v.mediaIds?.toBuilder();
      _poll = $v.poll?.toBuilder();
      _scheduledAt = $v.scheduledAt;
      _sensitive = $v.sensitive;
      _spoilerText = $v.spoilerText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledStatusParams other) {
    _$v = other as _$ScheduledStatusParams;
  }

  @override
  void update(void Function(ScheduledStatusParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledStatusParams build() => _build();

  _$ScheduledStatusParams _build() {
    _$ScheduledStatusParams _$result;
    try {
      _$result = _$v ??
          _$ScheduledStatusParams._(
            applicationId: BuiltValueNullFieldError.checkNotNull(
                applicationId, r'ScheduledStatusParams', 'applicationId'),
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'ScheduledStatusParams', 'text'),
            visibility: BuiltValueNullFieldError.checkNotNull(
                visibility, r'ScheduledStatusParams', 'visibility'),
            withRateLimit: BuiltValueNullFieldError.checkNotNull(
                withRateLimit, r'ScheduledStatusParams', 'withRateLimit'),
            idempotency: idempotency,
            inReplyToId: inReplyToId,
            language: language,
            mediaIds: _mediaIds?.build(),
            poll: _poll?.build(),
            scheduledAt: scheduledAt,
            sensitive: sensitive,
            spoilerText: spoilerText,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaIds';
        _mediaIds?.build();
        _$failedField = 'poll';
        _poll?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ScheduledStatusParams', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
