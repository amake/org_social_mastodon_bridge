// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'o_embed_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OEmbedResponse extends OEmbedResponse {
  @override
  final String authorName;
  @override
  final String authorUrl;
  @override
  final int cacheAge;
  @override
  final String html;
  @override
  final String providerName;
  @override
  final String providerUrl;
  @override
  final String title;
  @override
  final String type;
  @override
  final String version;
  @override
  final int width;
  @override
  final String? height;

  factory _$OEmbedResponse([void Function(OEmbedResponseBuilder)? updates]) =>
      (OEmbedResponseBuilder()..update(updates))._build();

  _$OEmbedResponse._(
      {required this.authorName,
      required this.authorUrl,
      required this.cacheAge,
      required this.html,
      required this.providerName,
      required this.providerUrl,
      required this.title,
      required this.type,
      required this.version,
      required this.width,
      this.height})
      : super._();
  @override
  OEmbedResponse rebuild(void Function(OEmbedResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OEmbedResponseBuilder toBuilder() => OEmbedResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OEmbedResponse &&
        authorName == other.authorName &&
        authorUrl == other.authorUrl &&
        cacheAge == other.cacheAge &&
        html == other.html &&
        providerName == other.providerName &&
        providerUrl == other.providerUrl &&
        title == other.title &&
        type == other.type &&
        version == other.version &&
        width == other.width &&
        height == other.height;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authorName.hashCode);
    _$hash = $jc(_$hash, authorUrl.hashCode);
    _$hash = $jc(_$hash, cacheAge.hashCode);
    _$hash = $jc(_$hash, html.hashCode);
    _$hash = $jc(_$hash, providerName.hashCode);
    _$hash = $jc(_$hash, providerUrl.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OEmbedResponse')
          ..add('authorName', authorName)
          ..add('authorUrl', authorUrl)
          ..add('cacheAge', cacheAge)
          ..add('html', html)
          ..add('providerName', providerName)
          ..add('providerUrl', providerUrl)
          ..add('title', title)
          ..add('type', type)
          ..add('version', version)
          ..add('width', width)
          ..add('height', height))
        .toString();
  }
}

class OEmbedResponseBuilder
    implements Builder<OEmbedResponse, OEmbedResponseBuilder> {
  _$OEmbedResponse? _$v;

  String? _authorName;
  String? get authorName => _$this._authorName;
  set authorName(String? authorName) => _$this._authorName = authorName;

  String? _authorUrl;
  String? get authorUrl => _$this._authorUrl;
  set authorUrl(String? authorUrl) => _$this._authorUrl = authorUrl;

  int? _cacheAge;
  int? get cacheAge => _$this._cacheAge;
  set cacheAge(int? cacheAge) => _$this._cacheAge = cacheAge;

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

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  String? _height;
  String? get height => _$this._height;
  set height(String? height) => _$this._height = height;

  OEmbedResponseBuilder() {
    OEmbedResponse._defaults(this);
  }

  OEmbedResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authorName = $v.authorName;
      _authorUrl = $v.authorUrl;
      _cacheAge = $v.cacheAge;
      _html = $v.html;
      _providerName = $v.providerName;
      _providerUrl = $v.providerUrl;
      _title = $v.title;
      _type = $v.type;
      _version = $v.version;
      _width = $v.width;
      _height = $v.height;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OEmbedResponse other) {
    _$v = other as _$OEmbedResponse;
  }

  @override
  void update(void Function(OEmbedResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OEmbedResponse build() => _build();

  _$OEmbedResponse _build() {
    final _$result = _$v ??
        _$OEmbedResponse._(
          authorName: BuiltValueNullFieldError.checkNotNull(
              authorName, r'OEmbedResponse', 'authorName'),
          authorUrl: BuiltValueNullFieldError.checkNotNull(
              authorUrl, r'OEmbedResponse', 'authorUrl'),
          cacheAge: BuiltValueNullFieldError.checkNotNull(
              cacheAge, r'OEmbedResponse', 'cacheAge'),
          html: BuiltValueNullFieldError.checkNotNull(
              html, r'OEmbedResponse', 'html'),
          providerName: BuiltValueNullFieldError.checkNotNull(
              providerName, r'OEmbedResponse', 'providerName'),
          providerUrl: BuiltValueNullFieldError.checkNotNull(
              providerUrl, r'OEmbedResponse', 'providerUrl'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'OEmbedResponse', 'title'),
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'OEmbedResponse', 'type'),
          version: BuiltValueNullFieldError.checkNotNull(
              version, r'OEmbedResponse', 'version'),
          width: BuiltValueNullFieldError.checkNotNull(
              width, r'OEmbedResponse', 'width'),
          height: height,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
