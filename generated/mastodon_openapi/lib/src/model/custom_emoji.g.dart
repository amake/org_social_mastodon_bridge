// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_emoji.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomEmoji extends CustomEmoji {
  @override
  final String shortcode;
  @override
  final String staticUrl;
  @override
  final String url;
  @override
  final bool visibleInPicker;
  @override
  final String? category;

  factory _$CustomEmoji([void Function(CustomEmojiBuilder)? updates]) =>
      (CustomEmojiBuilder()..update(updates))._build();

  _$CustomEmoji._(
      {required this.shortcode,
      required this.staticUrl,
      required this.url,
      required this.visibleInPicker,
      this.category})
      : super._();
  @override
  CustomEmoji rebuild(void Function(CustomEmojiBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomEmojiBuilder toBuilder() => CustomEmojiBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomEmoji &&
        shortcode == other.shortcode &&
        staticUrl == other.staticUrl &&
        url == other.url &&
        visibleInPicker == other.visibleInPicker &&
        category == other.category;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, shortcode.hashCode);
    _$hash = $jc(_$hash, staticUrl.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, visibleInPicker.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomEmoji')
          ..add('shortcode', shortcode)
          ..add('staticUrl', staticUrl)
          ..add('url', url)
          ..add('visibleInPicker', visibleInPicker)
          ..add('category', category))
        .toString();
  }
}

class CustomEmojiBuilder implements Builder<CustomEmoji, CustomEmojiBuilder> {
  _$CustomEmoji? _$v;

  String? _shortcode;
  String? get shortcode => _$this._shortcode;
  set shortcode(String? shortcode) => _$this._shortcode = shortcode;

  String? _staticUrl;
  String? get staticUrl => _$this._staticUrl;
  set staticUrl(String? staticUrl) => _$this._staticUrl = staticUrl;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  bool? _visibleInPicker;
  bool? get visibleInPicker => _$this._visibleInPicker;
  set visibleInPicker(bool? visibleInPicker) =>
      _$this._visibleInPicker = visibleInPicker;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  CustomEmojiBuilder() {
    CustomEmoji._defaults(this);
  }

  CustomEmojiBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shortcode = $v.shortcode;
      _staticUrl = $v.staticUrl;
      _url = $v.url;
      _visibleInPicker = $v.visibleInPicker;
      _category = $v.category;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomEmoji other) {
    _$v = other as _$CustomEmoji;
  }

  @override
  void update(void Function(CustomEmojiBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomEmoji build() => _build();

  _$CustomEmoji _build() {
    final _$result = _$v ??
        _$CustomEmoji._(
          shortcode: BuiltValueNullFieldError.checkNotNull(
              shortcode, r'CustomEmoji', 'shortcode'),
          staticUrl: BuiltValueNullFieldError.checkNotNull(
              staticUrl, r'CustomEmoji', 'staticUrl'),
          url:
              BuiltValueNullFieldError.checkNotNull(url, r'CustomEmoji', 'url'),
          visibleInPicker: BuiltValueNullFieldError.checkNotNull(
              visibleInPicker, r'CustomEmoji', 'visibleInPicker'),
          category: category,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
