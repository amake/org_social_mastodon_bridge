// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PollStatus extends PollStatus {
  @override
  final UpdateStatusRequestPoll poll;
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

  factory _$PollStatus([void Function(PollStatusBuilder)? updates]) =>
      (PollStatusBuilder()..update(updates))._build();

  _$PollStatus._(
      {required this.poll,
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
  PollStatus rebuild(void Function(PollStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PollStatusBuilder toBuilder() => PollStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PollStatus &&
        poll == other.poll &&
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
    _$hash = $jc(_$hash, poll.hashCode);
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
    return (newBuiltValueToStringHelper(r'PollStatus')
          ..add('poll', poll)
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

class PollStatusBuilder
    implements Builder<PollStatus, PollStatusBuilder>, BaseStatusBuilder {
  _$PollStatus? _$v;

  UpdateStatusRequestPollBuilder? _poll;
  UpdateStatusRequestPollBuilder get poll =>
      _$this._poll ??= UpdateStatusRequestPollBuilder();
  set poll(covariant UpdateStatusRequestPollBuilder? poll) =>
      _$this._poll = poll;

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

  PollStatusBuilder() {
    PollStatus._defaults(this);
  }

  PollStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _poll = $v.poll.toBuilder();
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
  void replace(covariant PollStatus other) {
    _$v = other as _$PollStatus;
  }

  @override
  void update(void Function(PollStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PollStatus build() => _build();

  _$PollStatus _build() {
    _$PollStatus _$result;
    try {
      _$result = _$v ??
          _$PollStatus._(
            poll: poll.build(),
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
        _$failedField = 'poll';
        poll.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PollStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
