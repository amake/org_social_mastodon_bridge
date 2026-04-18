// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_edit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatusEdit extends StatusEdit {
  @override
  final Account account;
  @override
  final String content;
  @override
  final DateTime createdAt;
  @override
  final BuiltList<CustomEmoji> emojis;
  @override
  final BuiltList<MediaAttachment> mediaAttachments;
  @override
  final bool sensitive;
  @override
  final String spoilerText;
  @override
  final StatusEditPoll? poll;
  @override
  final StatusQuote? quote;

  factory _$StatusEdit([void Function(StatusEditBuilder)? updates]) =>
      (StatusEditBuilder()..update(updates))._build();

  _$StatusEdit._(
      {required this.account,
      required this.content,
      required this.createdAt,
      required this.emojis,
      required this.mediaAttachments,
      required this.sensitive,
      required this.spoilerText,
      this.poll,
      this.quote})
      : super._();
  @override
  StatusEdit rebuild(void Function(StatusEditBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusEditBuilder toBuilder() => StatusEditBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatusEdit &&
        account == other.account &&
        content == other.content &&
        createdAt == other.createdAt &&
        emojis == other.emojis &&
        mediaAttachments == other.mediaAttachments &&
        sensitive == other.sensitive &&
        spoilerText == other.spoilerText &&
        poll == other.poll &&
        quote == other.quote;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, emojis.hashCode);
    _$hash = $jc(_$hash, mediaAttachments.hashCode);
    _$hash = $jc(_$hash, sensitive.hashCode);
    _$hash = $jc(_$hash, spoilerText.hashCode);
    _$hash = $jc(_$hash, poll.hashCode);
    _$hash = $jc(_$hash, quote.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatusEdit')
          ..add('account', account)
          ..add('content', content)
          ..add('createdAt', createdAt)
          ..add('emojis', emojis)
          ..add('mediaAttachments', mediaAttachments)
          ..add('sensitive', sensitive)
          ..add('spoilerText', spoilerText)
          ..add('poll', poll)
          ..add('quote', quote))
        .toString();
  }
}

class StatusEditBuilder implements Builder<StatusEdit, StatusEditBuilder> {
  _$StatusEdit? _$v;

  AccountBuilder? _account;
  AccountBuilder get account => _$this._account ??= AccountBuilder();
  set account(AccountBuilder? account) => _$this._account = account;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ListBuilder<CustomEmoji>? _emojis;
  ListBuilder<CustomEmoji> get emojis =>
      _$this._emojis ??= ListBuilder<CustomEmoji>();
  set emojis(ListBuilder<CustomEmoji>? emojis) => _$this._emojis = emojis;

  ListBuilder<MediaAttachment>? _mediaAttachments;
  ListBuilder<MediaAttachment> get mediaAttachments =>
      _$this._mediaAttachments ??= ListBuilder<MediaAttachment>();
  set mediaAttachments(ListBuilder<MediaAttachment>? mediaAttachments) =>
      _$this._mediaAttachments = mediaAttachments;

  bool? _sensitive;
  bool? get sensitive => _$this._sensitive;
  set sensitive(bool? sensitive) => _$this._sensitive = sensitive;

  String? _spoilerText;
  String? get spoilerText => _$this._spoilerText;
  set spoilerText(String? spoilerText) => _$this._spoilerText = spoilerText;

  StatusEditPollBuilder? _poll;
  StatusEditPollBuilder get poll => _$this._poll ??= StatusEditPollBuilder();
  set poll(StatusEditPollBuilder? poll) => _$this._poll = poll;

  StatusQuoteBuilder? _quote;
  StatusQuoteBuilder get quote => _$this._quote ??= StatusQuoteBuilder();
  set quote(StatusQuoteBuilder? quote) => _$this._quote = quote;

  StatusEditBuilder() {
    StatusEdit._defaults(this);
  }

  StatusEditBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account.toBuilder();
      _content = $v.content;
      _createdAt = $v.createdAt;
      _emojis = $v.emojis.toBuilder();
      _mediaAttachments = $v.mediaAttachments.toBuilder();
      _sensitive = $v.sensitive;
      _spoilerText = $v.spoilerText;
      _poll = $v.poll?.toBuilder();
      _quote = $v.quote?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatusEdit other) {
    _$v = other as _$StatusEdit;
  }

  @override
  void update(void Function(StatusEditBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatusEdit build() => _build();

  _$StatusEdit _build() {
    _$StatusEdit _$result;
    try {
      _$result = _$v ??
          _$StatusEdit._(
            account: account.build(),
            content: BuiltValueNullFieldError.checkNotNull(
                content, r'StatusEdit', 'content'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'StatusEdit', 'createdAt'),
            emojis: emojis.build(),
            mediaAttachments: mediaAttachments.build(),
            sensitive: BuiltValueNullFieldError.checkNotNull(
                sensitive, r'StatusEdit', 'sensitive'),
            spoilerText: BuiltValueNullFieldError.checkNotNull(
                spoilerText, r'StatusEdit', 'spoilerText'),
            poll: _poll?.build(),
            quote: _quote?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'account';
        account.build();

        _$failedField = 'emojis';
        emojis.build();
        _$failedField = 'mediaAttachments';
        mediaAttachments.build();

        _$failedField = 'poll';
        _poll?.build();
        _$failedField = 'quote';
        _quote?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'StatusEdit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
