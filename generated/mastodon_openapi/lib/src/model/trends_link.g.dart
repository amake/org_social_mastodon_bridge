// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trends_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrendsLink extends TrendsLink {
  @override
  final String description;
  @override
  final String embedUrl;
  @override
  final int height;
  @override
  final BuiltList<TrendsLinkHistoryInner> history;
  @override
  final String html;
  @override
  final String providerName;
  @override
  final String providerUrl;
  @override
  final String title;
  @override
  final TrendsLinkTypeEnum type;
  @override
  final String url;
  @override
  final int width;
  @override
  final String? authorName;
  @override
  final String? authorUrl;
  @override
  final BuiltList<PreviewCardAuthor>? authors;
  @override
  final String? blurhash;
  @override
  final String? image;
  @override
  final bool? missingAttribution;

  factory _$TrendsLink([void Function(TrendsLinkBuilder)? updates]) =>
      (TrendsLinkBuilder()..update(updates))._build();

  _$TrendsLink._(
      {required this.description,
      required this.embedUrl,
      required this.height,
      required this.history,
      required this.html,
      required this.providerName,
      required this.providerUrl,
      required this.title,
      required this.type,
      required this.url,
      required this.width,
      this.authorName,
      this.authorUrl,
      this.authors,
      this.blurhash,
      this.image,
      this.missingAttribution})
      : super._();
  @override
  TrendsLink rebuild(void Function(TrendsLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrendsLinkBuilder toBuilder() => TrendsLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrendsLink &&
        description == other.description &&
        embedUrl == other.embedUrl &&
        height == other.height &&
        history == other.history &&
        html == other.html &&
        providerName == other.providerName &&
        providerUrl == other.providerUrl &&
        title == other.title &&
        type == other.type &&
        url == other.url &&
        width == other.width &&
        authorName == other.authorName &&
        authorUrl == other.authorUrl &&
        authors == other.authors &&
        blurhash == other.blurhash &&
        image == other.image &&
        missingAttribution == other.missingAttribution;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, embedUrl.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, history.hashCode);
    _$hash = $jc(_$hash, html.hashCode);
    _$hash = $jc(_$hash, providerName.hashCode);
    _$hash = $jc(_$hash, providerUrl.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, authorName.hashCode);
    _$hash = $jc(_$hash, authorUrl.hashCode);
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jc(_$hash, blurhash.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, missingAttribution.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrendsLink')
          ..add('description', description)
          ..add('embedUrl', embedUrl)
          ..add('height', height)
          ..add('history', history)
          ..add('html', html)
          ..add('providerName', providerName)
          ..add('providerUrl', providerUrl)
          ..add('title', title)
          ..add('type', type)
          ..add('url', url)
          ..add('width', width)
          ..add('authorName', authorName)
          ..add('authorUrl', authorUrl)
          ..add('authors', authors)
          ..add('blurhash', blurhash)
          ..add('image', image)
          ..add('missingAttribution', missingAttribution))
        .toString();
  }
}

class TrendsLinkBuilder implements Builder<TrendsLink, TrendsLinkBuilder> {
  _$TrendsLink? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _embedUrl;
  String? get embedUrl => _$this._embedUrl;
  set embedUrl(String? embedUrl) => _$this._embedUrl = embedUrl;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  ListBuilder<TrendsLinkHistoryInner>? _history;
  ListBuilder<TrendsLinkHistoryInner> get history =>
      _$this._history ??= ListBuilder<TrendsLinkHistoryInner>();
  set history(ListBuilder<TrendsLinkHistoryInner>? history) =>
      _$this._history = history;

  String? _html;
  String? get html => _$this._html;
  set html(String? html) => _$this._html = html;

  String? _providerName;
  String? get providerName => _$this._providerName;
  set providerName(String? providerName) => _$this._providerName = providerName;

  String? _providerUrl;
  String? get providerUrl => _$this._providerUrl;
  set providerUrl(String? providerUrl) => _$this._providerUrl = providerUrl;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  TrendsLinkTypeEnum? _type;
  TrendsLinkTypeEnum? get type => _$this._type;
  set type(TrendsLinkTypeEnum? type) => _$this._type = type;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  String? _authorName;
  String? get authorName => _$this._authorName;
  set authorName(String? authorName) => _$this._authorName = authorName;

  String? _authorUrl;
  String? get authorUrl => _$this._authorUrl;
  set authorUrl(String? authorUrl) => _$this._authorUrl = authorUrl;

  ListBuilder<PreviewCardAuthor>? _authors;
  ListBuilder<PreviewCardAuthor> get authors =>
      _$this._authors ??= ListBuilder<PreviewCardAuthor>();
  set authors(ListBuilder<PreviewCardAuthor>? authors) =>
      _$this._authors = authors;

  String? _blurhash;
  String? get blurhash => _$this._blurhash;
  set blurhash(String? blurhash) => _$this._blurhash = blurhash;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  bool? _missingAttribution;
  bool? get missingAttribution => _$this._missingAttribution;
  set missingAttribution(bool? missingAttribution) =>
      _$this._missingAttribution = missingAttribution;

  TrendsLinkBuilder() {
    TrendsLink._defaults(this);
  }

  TrendsLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _embedUrl = $v.embedUrl;
      _height = $v.height;
      _history = $v.history.toBuilder();
      _html = $v.html;
      _providerName = $v.providerName;
      _providerUrl = $v.providerUrl;
      _title = $v.title;
      _type = $v.type;
      _url = $v.url;
      _width = $v.width;
      _authorName = $v.authorName;
      _authorUrl = $v.authorUrl;
      _authors = $v.authors?.toBuilder();
      _blurhash = $v.blurhash;
      _image = $v.image;
      _missingAttribution = $v.missingAttribution;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrendsLink other) {
    _$v = other as _$TrendsLink;
  }

  @override
  void update(void Function(TrendsLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrendsLink build() => _build();

  _$TrendsLink _build() {
    _$TrendsLink _$result;
    try {
      _$result = _$v ??
          _$TrendsLink._(
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'TrendsLink', 'description'),
            embedUrl: BuiltValueNullFieldError.checkNotNull(
                embedUrl, r'TrendsLink', 'embedUrl'),
            height: BuiltValueNullFieldError.checkNotNull(
                height, r'TrendsLink', 'height'),
            history: history.build(),
            html: BuiltValueNullFieldError.checkNotNull(
                html, r'TrendsLink', 'html'),
            providerName: BuiltValueNullFieldError.checkNotNull(
                providerName, r'TrendsLink', 'providerName'),
            providerUrl: BuiltValueNullFieldError.checkNotNull(
                providerUrl, r'TrendsLink', 'providerUrl'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'TrendsLink', 'title'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'TrendsLink', 'type'),
            url: BuiltValueNullFieldError.checkNotNull(
                url, r'TrendsLink', 'url'),
            width: BuiltValueNullFieldError.checkNotNull(
                width, r'TrendsLink', 'width'),
            authorName: authorName,
            authorUrl: authorUrl,
            authors: _authors?.build(),
            blurhash: blurhash,
            image: image,
            missingAttribution: missingAttribution,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'history';
        history.build();

        _$failedField = 'authors';
        _authors?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TrendsLink', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
