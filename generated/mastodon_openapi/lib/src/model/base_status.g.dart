// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class BaseStatusBuilder {
  void replace(BaseStatus other);
  void update(void Function(BaseStatusBuilder) updates);
  String? get inReplyToId;
  set inReplyToId(String? inReplyToId);

  String? get language;
  set language(String? language);

  String? get quoteApprovalPolicy;
  set quoteApprovalPolicy(String? quoteApprovalPolicy);

  String? get quotedStatusId;
  set quotedStatusId(String? quotedStatusId);

  DateTime? get scheduledAt;
  set scheduledAt(DateTime? scheduledAt);

  bool? get sensitive;
  set sensitive(bool? sensitive);

  String? get spoilerText;
  set spoilerText(String? spoilerText);

  StatusVisibilityEnum? get visibility;
  set visibility(StatusVisibilityEnum? visibility);
}

class _$$BaseStatus extends $BaseStatus {
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

  factory _$$BaseStatus([void Function($BaseStatusBuilder)? updates]) =>
      ($BaseStatusBuilder()..update(updates))._build();

  _$$BaseStatus._(
      {this.inReplyToId,
      this.language,
      this.quoteApprovalPolicy,
      this.quotedStatusId,
      this.scheduledAt,
      this.sensitive,
      this.spoilerText,
      this.visibility})
      : super._();
  @override
  $BaseStatus rebuild(void Function($BaseStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $BaseStatusBuilder toBuilder() => $BaseStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $BaseStatus &&
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
    return (newBuiltValueToStringHelper(r'$BaseStatus')
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

class $BaseStatusBuilder
    implements Builder<$BaseStatus, $BaseStatusBuilder>, BaseStatusBuilder {
  _$$BaseStatus? _$v;

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

  $BaseStatusBuilder() {
    $BaseStatus._defaults(this);
  }

  $BaseStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(covariant $BaseStatus other) {
    _$v = other as _$$BaseStatus;
  }

  @override
  void update(void Function($BaseStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $BaseStatus build() => _build();

  _$$BaseStatus _build() {
    final _$result = _$v ??
        _$$BaseStatus._(
          inReplyToId: inReplyToId,
          language: language,
          quoteApprovalPolicy: quoteApprovalPolicy,
          quotedStatusId: quotedStatusId,
          scheduledAt: scheduledAt,
          sensitive: sensitive,
          spoilerText: spoilerText,
          visibility: visibility,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
