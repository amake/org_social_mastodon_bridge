// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Status extends Status {
  @override
  final Account account;
  @override
  final String content;
  @override
  final DateTime createdAt;
  @override
  final BuiltList<CustomEmoji> emojis;
  @override
  final int favouritesCount;
  @override
  final String id;
  @override
  final BuiltList<MediaAttachment> mediaAttachments;
  @override
  final BuiltList<StatusMention> mentions;
  @override
  final int reblogsCount;
  @override
  final int repliesCount;
  @override
  final bool sensitive;
  @override
  final String spoilerText;
  @override
  final BuiltList<StatusTag> tags;
  @override
  final String uri;
  @override
  final StatusVisibilityEnum visibility;
  @override
  final StatusApplication? application;
  @override
  final bool? bookmarked;
  @override
  final PreviewCard? card;
  @override
  final DateTime? editedAt;
  @override
  final bool? favourited;
  @override
  final BuiltList<FilterResult>? filtered;
  @override
  final String? inReplyToAccountId;
  @override
  final String? inReplyToId;
  @override
  final String? language;
  @override
  final bool? muted;
  @override
  final bool? pinned;
  @override
  final Poll? poll;
  @override
  final StatusQuote? quote;
  @override
  final QuoteApproval? quoteApproval;
  @override
  final int? quotesCount;
  @override
  final Status? reblog;
  @override
  final bool? reblogged;
  @override
  final String? text;
  @override
  final String? url;

  factory _$Status([void Function(StatusBuilder)? updates]) =>
      (StatusBuilder()..update(updates))._build();

  _$Status._(
      {required this.account,
      required this.content,
      required this.createdAt,
      required this.emojis,
      required this.favouritesCount,
      required this.id,
      required this.mediaAttachments,
      required this.mentions,
      required this.reblogsCount,
      required this.repliesCount,
      required this.sensitive,
      required this.spoilerText,
      required this.tags,
      required this.uri,
      required this.visibility,
      this.application,
      this.bookmarked,
      this.card,
      this.editedAt,
      this.favourited,
      this.filtered,
      this.inReplyToAccountId,
      this.inReplyToId,
      this.language,
      this.muted,
      this.pinned,
      this.poll,
      this.quote,
      this.quoteApproval,
      this.quotesCount,
      this.reblog,
      this.reblogged,
      this.text,
      this.url})
      : super._();
  @override
  Status rebuild(void Function(StatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusBuilder toBuilder() => StatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Status &&
        account == other.account &&
        content == other.content &&
        createdAt == other.createdAt &&
        emojis == other.emojis &&
        favouritesCount == other.favouritesCount &&
        id == other.id &&
        mediaAttachments == other.mediaAttachments &&
        mentions == other.mentions &&
        reblogsCount == other.reblogsCount &&
        repliesCount == other.repliesCount &&
        sensitive == other.sensitive &&
        spoilerText == other.spoilerText &&
        tags == other.tags &&
        uri == other.uri &&
        visibility == other.visibility &&
        application == other.application &&
        bookmarked == other.bookmarked &&
        card == other.card &&
        editedAt == other.editedAt &&
        favourited == other.favourited &&
        filtered == other.filtered &&
        inReplyToAccountId == other.inReplyToAccountId &&
        inReplyToId == other.inReplyToId &&
        language == other.language &&
        muted == other.muted &&
        pinned == other.pinned &&
        poll == other.poll &&
        quote == other.quote &&
        quoteApproval == other.quoteApproval &&
        quotesCount == other.quotesCount &&
        reblog == other.reblog &&
        reblogged == other.reblogged &&
        text == other.text &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, emojis.hashCode);
    _$hash = $jc(_$hash, favouritesCount.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, mediaAttachments.hashCode);
    _$hash = $jc(_$hash, mentions.hashCode);
    _$hash = $jc(_$hash, reblogsCount.hashCode);
    _$hash = $jc(_$hash, repliesCount.hashCode);
    _$hash = $jc(_$hash, sensitive.hashCode);
    _$hash = $jc(_$hash, spoilerText.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, application.hashCode);
    _$hash = $jc(_$hash, bookmarked.hashCode);
    _$hash = $jc(_$hash, card.hashCode);
    _$hash = $jc(_$hash, editedAt.hashCode);
    _$hash = $jc(_$hash, favourited.hashCode);
    _$hash = $jc(_$hash, filtered.hashCode);
    _$hash = $jc(_$hash, inReplyToAccountId.hashCode);
    _$hash = $jc(_$hash, inReplyToId.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, muted.hashCode);
    _$hash = $jc(_$hash, pinned.hashCode);
    _$hash = $jc(_$hash, poll.hashCode);
    _$hash = $jc(_$hash, quote.hashCode);
    _$hash = $jc(_$hash, quoteApproval.hashCode);
    _$hash = $jc(_$hash, quotesCount.hashCode);
    _$hash = $jc(_$hash, reblog.hashCode);
    _$hash = $jc(_$hash, reblogged.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Status')
          ..add('account', account)
          ..add('content', content)
          ..add('createdAt', createdAt)
          ..add('emojis', emojis)
          ..add('favouritesCount', favouritesCount)
          ..add('id', id)
          ..add('mediaAttachments', mediaAttachments)
          ..add('mentions', mentions)
          ..add('reblogsCount', reblogsCount)
          ..add('repliesCount', repliesCount)
          ..add('sensitive', sensitive)
          ..add('spoilerText', spoilerText)
          ..add('tags', tags)
          ..add('uri', uri)
          ..add('visibility', visibility)
          ..add('application', application)
          ..add('bookmarked', bookmarked)
          ..add('card', card)
          ..add('editedAt', editedAt)
          ..add('favourited', favourited)
          ..add('filtered', filtered)
          ..add('inReplyToAccountId', inReplyToAccountId)
          ..add('inReplyToId', inReplyToId)
          ..add('language', language)
          ..add('muted', muted)
          ..add('pinned', pinned)
          ..add('poll', poll)
          ..add('quote', quote)
          ..add('quoteApproval', quoteApproval)
          ..add('quotesCount', quotesCount)
          ..add('reblog', reblog)
          ..add('reblogged', reblogged)
          ..add('text', text)
          ..add('url', url))
        .toString();
  }
}

class StatusBuilder implements Builder<Status, StatusBuilder> {
  _$Status? _$v;

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

  int? _favouritesCount;
  int? get favouritesCount => _$this._favouritesCount;
  set favouritesCount(int? favouritesCount) =>
      _$this._favouritesCount = favouritesCount;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<MediaAttachment>? _mediaAttachments;
  ListBuilder<MediaAttachment> get mediaAttachments =>
      _$this._mediaAttachments ??= ListBuilder<MediaAttachment>();
  set mediaAttachments(ListBuilder<MediaAttachment>? mediaAttachments) =>
      _$this._mediaAttachments = mediaAttachments;

  ListBuilder<StatusMention>? _mentions;
  ListBuilder<StatusMention> get mentions =>
      _$this._mentions ??= ListBuilder<StatusMention>();
  set mentions(ListBuilder<StatusMention>? mentions) =>
      _$this._mentions = mentions;

  int? _reblogsCount;
  int? get reblogsCount => _$this._reblogsCount;
  set reblogsCount(int? reblogsCount) => _$this._reblogsCount = reblogsCount;

  int? _repliesCount;
  int? get repliesCount => _$this._repliesCount;
  set repliesCount(int? repliesCount) => _$this._repliesCount = repliesCount;

  bool? _sensitive;
  bool? get sensitive => _$this._sensitive;
  set sensitive(bool? sensitive) => _$this._sensitive = sensitive;

  String? _spoilerText;
  String? get spoilerText => _$this._spoilerText;
  set spoilerText(String? spoilerText) => _$this._spoilerText = spoilerText;

  ListBuilder<StatusTag>? _tags;
  ListBuilder<StatusTag> get tags => _$this._tags ??= ListBuilder<StatusTag>();
  set tags(ListBuilder<StatusTag>? tags) => _$this._tags = tags;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  StatusVisibilityEnum? _visibility;
  StatusVisibilityEnum? get visibility => _$this._visibility;
  set visibility(StatusVisibilityEnum? visibility) =>
      _$this._visibility = visibility;

  StatusApplicationBuilder? _application;
  StatusApplicationBuilder get application =>
      _$this._application ??= StatusApplicationBuilder();
  set application(StatusApplicationBuilder? application) =>
      _$this._application = application;

  bool? _bookmarked;
  bool? get bookmarked => _$this._bookmarked;
  set bookmarked(bool? bookmarked) => _$this._bookmarked = bookmarked;

  PreviewCardBuilder? _card;
  PreviewCardBuilder get card => _$this._card ??= PreviewCardBuilder();
  set card(PreviewCardBuilder? card) => _$this._card = card;

  DateTime? _editedAt;
  DateTime? get editedAt => _$this._editedAt;
  set editedAt(DateTime? editedAt) => _$this._editedAt = editedAt;

  bool? _favourited;
  bool? get favourited => _$this._favourited;
  set favourited(bool? favourited) => _$this._favourited = favourited;

  ListBuilder<FilterResult>? _filtered;
  ListBuilder<FilterResult> get filtered =>
      _$this._filtered ??= ListBuilder<FilterResult>();
  set filtered(ListBuilder<FilterResult>? filtered) =>
      _$this._filtered = filtered;

  String? _inReplyToAccountId;
  String? get inReplyToAccountId => _$this._inReplyToAccountId;
  set inReplyToAccountId(String? inReplyToAccountId) =>
      _$this._inReplyToAccountId = inReplyToAccountId;

  String? _inReplyToId;
  String? get inReplyToId => _$this._inReplyToId;
  set inReplyToId(String? inReplyToId) => _$this._inReplyToId = inReplyToId;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  bool? _muted;
  bool? get muted => _$this._muted;
  set muted(bool? muted) => _$this._muted = muted;

  bool? _pinned;
  bool? get pinned => _$this._pinned;
  set pinned(bool? pinned) => _$this._pinned = pinned;

  PollBuilder? _poll;
  PollBuilder get poll => _$this._poll ??= PollBuilder();
  set poll(PollBuilder? poll) => _$this._poll = poll;

  StatusQuoteBuilder? _quote;
  StatusQuoteBuilder get quote => _$this._quote ??= StatusQuoteBuilder();
  set quote(StatusQuoteBuilder? quote) => _$this._quote = quote;

  QuoteApprovalBuilder? _quoteApproval;
  QuoteApprovalBuilder get quoteApproval =>
      _$this._quoteApproval ??= QuoteApprovalBuilder();
  set quoteApproval(QuoteApprovalBuilder? quoteApproval) =>
      _$this._quoteApproval = quoteApproval;

  int? _quotesCount;
  int? get quotesCount => _$this._quotesCount;
  set quotesCount(int? quotesCount) => _$this._quotesCount = quotesCount;

  StatusBuilder? _reblog;
  StatusBuilder get reblog => _$this._reblog ??= StatusBuilder();
  set reblog(StatusBuilder? reblog) => _$this._reblog = reblog;

  bool? _reblogged;
  bool? get reblogged => _$this._reblogged;
  set reblogged(bool? reblogged) => _$this._reblogged = reblogged;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  StatusBuilder() {
    Status._defaults(this);
  }

  StatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account.toBuilder();
      _content = $v.content;
      _createdAt = $v.createdAt;
      _emojis = $v.emojis.toBuilder();
      _favouritesCount = $v.favouritesCount;
      _id = $v.id;
      _mediaAttachments = $v.mediaAttachments.toBuilder();
      _mentions = $v.mentions.toBuilder();
      _reblogsCount = $v.reblogsCount;
      _repliesCount = $v.repliesCount;
      _sensitive = $v.sensitive;
      _spoilerText = $v.spoilerText;
      _tags = $v.tags.toBuilder();
      _uri = $v.uri;
      _visibility = $v.visibility;
      _application = $v.application?.toBuilder();
      _bookmarked = $v.bookmarked;
      _card = $v.card?.toBuilder();
      _editedAt = $v.editedAt;
      _favourited = $v.favourited;
      _filtered = $v.filtered?.toBuilder();
      _inReplyToAccountId = $v.inReplyToAccountId;
      _inReplyToId = $v.inReplyToId;
      _language = $v.language;
      _muted = $v.muted;
      _pinned = $v.pinned;
      _poll = $v.poll?.toBuilder();
      _quote = $v.quote?.toBuilder();
      _quoteApproval = $v.quoteApproval?.toBuilder();
      _quotesCount = $v.quotesCount;
      _reblog = $v.reblog?.toBuilder();
      _reblogged = $v.reblogged;
      _text = $v.text;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Status other) {
    _$v = other as _$Status;
  }

  @override
  void update(void Function(StatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Status build() => _build();

  _$Status _build() {
    _$Status _$result;
    try {
      _$result = _$v ??
          _$Status._(
            account: account.build(),
            content: BuiltValueNullFieldError.checkNotNull(
                content, r'Status', 'content'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Status', 'createdAt'),
            emojis: emojis.build(),
            favouritesCount: BuiltValueNullFieldError.checkNotNull(
                favouritesCount, r'Status', 'favouritesCount'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'Status', 'id'),
            mediaAttachments: mediaAttachments.build(),
            mentions: mentions.build(),
            reblogsCount: BuiltValueNullFieldError.checkNotNull(
                reblogsCount, r'Status', 'reblogsCount'),
            repliesCount: BuiltValueNullFieldError.checkNotNull(
                repliesCount, r'Status', 'repliesCount'),
            sensitive: BuiltValueNullFieldError.checkNotNull(
                sensitive, r'Status', 'sensitive'),
            spoilerText: BuiltValueNullFieldError.checkNotNull(
                spoilerText, r'Status', 'spoilerText'),
            tags: tags.build(),
            uri: BuiltValueNullFieldError.checkNotNull(uri, r'Status', 'uri'),
            visibility: BuiltValueNullFieldError.checkNotNull(
                visibility, r'Status', 'visibility'),
            application: _application?.build(),
            bookmarked: bookmarked,
            card: _card?.build(),
            editedAt: editedAt,
            favourited: favourited,
            filtered: _filtered?.build(),
            inReplyToAccountId: inReplyToAccountId,
            inReplyToId: inReplyToId,
            language: language,
            muted: muted,
            pinned: pinned,
            poll: _poll?.build(),
            quote: _quote?.build(),
            quoteApproval: _quoteApproval?.build(),
            quotesCount: quotesCount,
            reblog: _reblog?.build(),
            reblogged: reblogged,
            text: text,
            url: url,
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
        _$failedField = 'mentions';
        mentions.build();

        _$failedField = 'tags';
        tags.build();

        _$failedField = 'application';
        _application?.build();

        _$failedField = 'card';
        _card?.build();

        _$failedField = 'filtered';
        _filtered?.build();

        _$failedField = 'poll';
        _poll?.build();
        _$failedField = 'quote';
        _quote?.build();
        _$failedField = 'quoteApproval';
        _quoteApproval?.build();

        _$failedField = 'reblog';
        _reblog?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Status', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
