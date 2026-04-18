// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_thumbnail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceThumbnail extends InstanceThumbnail {
  @override
  final String url;
  @override
  final String? blurhash;
  @override
  final InstanceThumbnailVersions? versions;

  factory _$InstanceThumbnail(
          [void Function(InstanceThumbnailBuilder)? updates]) =>
      (InstanceThumbnailBuilder()..update(updates))._build();

  _$InstanceThumbnail._({required this.url, this.blurhash, this.versions})
      : super._();
  @override
  InstanceThumbnail rebuild(void Function(InstanceThumbnailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceThumbnailBuilder toBuilder() =>
      InstanceThumbnailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceThumbnail &&
        url == other.url &&
        blurhash == other.blurhash &&
        versions == other.versions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, blurhash.hashCode);
    _$hash = $jc(_$hash, versions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstanceThumbnail')
          ..add('url', url)
          ..add('blurhash', blurhash)
          ..add('versions', versions))
        .toString();
  }
}

class InstanceThumbnailBuilder
    implements Builder<InstanceThumbnail, InstanceThumbnailBuilder> {
  _$InstanceThumbnail? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _blurhash;
  String? get blurhash => _$this._blurhash;
  set blurhash(String? blurhash) => _$this._blurhash = blurhash;

  InstanceThumbnailVersionsBuilder? _versions;
  InstanceThumbnailVersionsBuilder get versions =>
      _$this._versions ??= InstanceThumbnailVersionsBuilder();
  set versions(InstanceThumbnailVersionsBuilder? versions) =>
      _$this._versions = versions;

  InstanceThumbnailBuilder() {
    InstanceThumbnail._defaults(this);
  }

  InstanceThumbnailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _blurhash = $v.blurhash;
      _versions = $v.versions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceThumbnail other) {
    _$v = other as _$InstanceThumbnail;
  }

  @override
  void update(void Function(InstanceThumbnailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceThumbnail build() => _build();

  _$InstanceThumbnail _build() {
    _$InstanceThumbnail _$result;
    try {
      _$result = _$v ??
          _$InstanceThumbnail._(
            url: BuiltValueNullFieldError.checkNotNull(
                url, r'InstanceThumbnail', 'url'),
            blurhash: blurhash,
            versions: _versions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'versions';
        _versions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InstanceThumbnail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
