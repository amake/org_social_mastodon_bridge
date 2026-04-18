// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateStatusRequest extends UpdateStatusRequest {
  @override
  final String? language;
  @override
  final BuiltList<String>? mediaAttributesLeftSquareBracketRightSquareBracket;
  @override
  final BuiltList<String>? mediaIds;
  @override
  final UpdateStatusRequestPoll? poll;
  @override
  final String? quoteApprovalPolicy;
  @override
  final bool? sensitive;
  @override
  final String? spoilerText;
  @override
  final String? status;

  factory _$UpdateStatusRequest(
          [void Function(UpdateStatusRequestBuilder)? updates]) =>
      (UpdateStatusRequestBuilder()..update(updates))._build();

  _$UpdateStatusRequest._(
      {this.language,
      this.mediaAttributesLeftSquareBracketRightSquareBracket,
      this.mediaIds,
      this.poll,
      this.quoteApprovalPolicy,
      this.sensitive,
      this.spoilerText,
      this.status})
      : super._();
  @override
  UpdateStatusRequest rebuild(
          void Function(UpdateStatusRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateStatusRequestBuilder toBuilder() =>
      UpdateStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateStatusRequest &&
        language == other.language &&
        mediaAttributesLeftSquareBracketRightSquareBracket ==
            other.mediaAttributesLeftSquareBracketRightSquareBracket &&
        mediaIds == other.mediaIds &&
        poll == other.poll &&
        quoteApprovalPolicy == other.quoteApprovalPolicy &&
        sensitive == other.sensitive &&
        spoilerText == other.spoilerText &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(
        _$hash, mediaAttributesLeftSquareBracketRightSquareBracket.hashCode);
    _$hash = $jc(_$hash, mediaIds.hashCode);
    _$hash = $jc(_$hash, poll.hashCode);
    _$hash = $jc(_$hash, quoteApprovalPolicy.hashCode);
    _$hash = $jc(_$hash, sensitive.hashCode);
    _$hash = $jc(_$hash, spoilerText.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateStatusRequest')
          ..add('language', language)
          ..add('mediaAttributesLeftSquareBracketRightSquareBracket',
              mediaAttributesLeftSquareBracketRightSquareBracket)
          ..add('mediaIds', mediaIds)
          ..add('poll', poll)
          ..add('quoteApprovalPolicy', quoteApprovalPolicy)
          ..add('sensitive', sensitive)
          ..add('spoilerText', spoilerText)
          ..add('status', status))
        .toString();
  }
}

class UpdateStatusRequestBuilder
    implements Builder<UpdateStatusRequest, UpdateStatusRequestBuilder> {
  _$UpdateStatusRequest? _$v;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  ListBuilder<String>? _mediaAttributesLeftSquareBracketRightSquareBracket;
  ListBuilder<String> get mediaAttributesLeftSquareBracketRightSquareBracket =>
      _$this._mediaAttributesLeftSquareBracketRightSquareBracket ??=
          ListBuilder<String>();
  set mediaAttributesLeftSquareBracketRightSquareBracket(
          ListBuilder<String>?
              mediaAttributesLeftSquareBracketRightSquareBracket) =>
      _$this._mediaAttributesLeftSquareBracketRightSquareBracket =
          mediaAttributesLeftSquareBracketRightSquareBracket;

  ListBuilder<String>? _mediaIds;
  ListBuilder<String> get mediaIds =>
      _$this._mediaIds ??= ListBuilder<String>();
  set mediaIds(ListBuilder<String>? mediaIds) => _$this._mediaIds = mediaIds;

  UpdateStatusRequestPollBuilder? _poll;
  UpdateStatusRequestPollBuilder get poll =>
      _$this._poll ??= UpdateStatusRequestPollBuilder();
  set poll(UpdateStatusRequestPollBuilder? poll) => _$this._poll = poll;

  String? _quoteApprovalPolicy;
  String? get quoteApprovalPolicy => _$this._quoteApprovalPolicy;
  set quoteApprovalPolicy(String? quoteApprovalPolicy) =>
      _$this._quoteApprovalPolicy = quoteApprovalPolicy;

  bool? _sensitive;
  bool? get sensitive => _$this._sensitive;
  set sensitive(bool? sensitive) => _$this._sensitive = sensitive;

  String? _spoilerText;
  String? get spoilerText => _$this._spoilerText;
  set spoilerText(String? spoilerText) => _$this._spoilerText = spoilerText;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  UpdateStatusRequestBuilder() {
    UpdateStatusRequest._defaults(this);
  }

  UpdateStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _language = $v.language;
      _mediaAttributesLeftSquareBracketRightSquareBracket =
          $v.mediaAttributesLeftSquareBracketRightSquareBracket?.toBuilder();
      _mediaIds = $v.mediaIds?.toBuilder();
      _poll = $v.poll?.toBuilder();
      _quoteApprovalPolicy = $v.quoteApprovalPolicy;
      _sensitive = $v.sensitive;
      _spoilerText = $v.spoilerText;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateStatusRequest other) {
    _$v = other as _$UpdateStatusRequest;
  }

  @override
  void update(void Function(UpdateStatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateStatusRequest build() => _build();

  _$UpdateStatusRequest _build() {
    _$UpdateStatusRequest _$result;
    try {
      _$result = _$v ??
          _$UpdateStatusRequest._(
            language: language,
            mediaAttributesLeftSquareBracketRightSquareBracket:
                _mediaAttributesLeftSquareBracketRightSquareBracket?.build(),
            mediaIds: _mediaIds?.build(),
            poll: _poll?.build(),
            quoteApprovalPolicy: quoteApprovalPolicy,
            sensitive: sensitive,
            spoilerText: spoilerText,
            status: status,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaAttributesLeftSquareBracketRightSquareBracket';
        _mediaAttributesLeftSquareBracketRightSquareBracket?.build();
        _$failedField = 'mediaIds';
        _mediaIds?.build();
        _$failedField = 'poll';
        _poll?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateStatusRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
