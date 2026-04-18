// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaAttachment extends MediaAttachment {
  @override
  final String id;
  @override
  final MediaAttachmentTypeEnum type;
  @override
  final String? blurhash;
  @override
  final String? description;
  @override
  final MediaAttachmentMeta? meta;
  @override
  final String? previewUrl;
  @override
  final String? remoteUrl;
  @override
  final String? url;

  factory _$MediaAttachment([void Function(MediaAttachmentBuilder)? updates]) =>
      (MediaAttachmentBuilder()..update(updates))._build();

  _$MediaAttachment._(
      {required this.id,
      required this.type,
      this.blurhash,
      this.description,
      this.meta,
      this.previewUrl,
      this.remoteUrl,
      this.url})
      : super._();
  @override
  MediaAttachment rebuild(void Function(MediaAttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaAttachmentBuilder toBuilder() => MediaAttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaAttachment &&
        id == other.id &&
        type == other.type &&
        blurhash == other.blurhash &&
        description == other.description &&
        meta == other.meta &&
        previewUrl == other.previewUrl &&
        remoteUrl == other.remoteUrl &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, blurhash.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, previewUrl.hashCode);
    _$hash = $jc(_$hash, remoteUrl.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaAttachment')
          ..add('id', id)
          ..add('type', type)
          ..add('blurhash', blurhash)
          ..add('description', description)
          ..add('meta', meta)
          ..add('previewUrl', previewUrl)
          ..add('remoteUrl', remoteUrl)
          ..add('url', url))
        .toString();
  }
}

class MediaAttachmentBuilder
    implements Builder<MediaAttachment, MediaAttachmentBuilder> {
  _$MediaAttachment? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  MediaAttachmentTypeEnum? _type;
  MediaAttachmentTypeEnum? get type => _$this._type;
  set type(MediaAttachmentTypeEnum? type) => _$this._type = type;

  String? _blurhash;
  String? get blurhash => _$this._blurhash;
  set blurhash(String? blurhash) => _$this._blurhash = blurhash;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  MediaAttachmentMetaBuilder? _meta;
  MediaAttachmentMetaBuilder get meta =>
      _$this._meta ??= MediaAttachmentMetaBuilder();
  set meta(MediaAttachmentMetaBuilder? meta) => _$this._meta = meta;

  String? _previewUrl;
  String? get previewUrl => _$this._previewUrl;
  set previewUrl(String? previewUrl) => _$this._previewUrl = previewUrl;

  String? _remoteUrl;
  String? get remoteUrl => _$this._remoteUrl;
  set remoteUrl(String? remoteUrl) => _$this._remoteUrl = remoteUrl;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  MediaAttachmentBuilder() {
    MediaAttachment._defaults(this);
  }

  MediaAttachmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _blurhash = $v.blurhash;
      _description = $v.description;
      _meta = $v.meta?.toBuilder();
      _previewUrl = $v.previewUrl;
      _remoteUrl = $v.remoteUrl;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaAttachment other) {
    _$v = other as _$MediaAttachment;
  }

  @override
  void update(void Function(MediaAttachmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaAttachment build() => _build();

  _$MediaAttachment _build() {
    _$MediaAttachment _$result;
    try {
      _$result = _$v ??
          _$MediaAttachment._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'MediaAttachment', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'MediaAttachment', 'type'),
            blurhash: blurhash,
            description: description,
            meta: _meta?.build(),
            previewUrl: previewUrl,
            remoteUrl: remoteUrl,
            url: url,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MediaAttachment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
