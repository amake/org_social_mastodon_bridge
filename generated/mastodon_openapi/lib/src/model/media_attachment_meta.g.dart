// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_attachment_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaAttachmentMeta extends MediaAttachmentMeta {
  @override
  final MetaDetails? small;
  @override
  final MetaDetails? original;
  @override
  final MediaAttachmentMetaFocus? focus;

  factory _$MediaAttachmentMeta(
          [void Function(MediaAttachmentMetaBuilder)? updates]) =>
      (MediaAttachmentMetaBuilder()..update(updates))._build();

  _$MediaAttachmentMeta._({this.small, this.original, this.focus}) : super._();
  @override
  MediaAttachmentMeta rebuild(
          void Function(MediaAttachmentMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaAttachmentMetaBuilder toBuilder() =>
      MediaAttachmentMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaAttachmentMeta &&
        small == other.small &&
        original == other.original &&
        focus == other.focus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, small.hashCode);
    _$hash = $jc(_$hash, original.hashCode);
    _$hash = $jc(_$hash, focus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaAttachmentMeta')
          ..add('small', small)
          ..add('original', original)
          ..add('focus', focus))
        .toString();
  }
}

class MediaAttachmentMetaBuilder
    implements Builder<MediaAttachmentMeta, MediaAttachmentMetaBuilder> {
  _$MediaAttachmentMeta? _$v;

  MetaDetailsBuilder? _small;
  MetaDetailsBuilder get small => _$this._small ??= MetaDetailsBuilder();
  set small(MetaDetailsBuilder? small) => _$this._small = small;

  MetaDetailsBuilder? _original;
  MetaDetailsBuilder get original => _$this._original ??= MetaDetailsBuilder();
  set original(MetaDetailsBuilder? original) => _$this._original = original;

  MediaAttachmentMetaFocusBuilder? _focus;
  MediaAttachmentMetaFocusBuilder get focus =>
      _$this._focus ??= MediaAttachmentMetaFocusBuilder();
  set focus(MediaAttachmentMetaFocusBuilder? focus) => _$this._focus = focus;

  MediaAttachmentMetaBuilder() {
    MediaAttachmentMeta._defaults(this);
  }

  MediaAttachmentMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _small = $v.small?.toBuilder();
      _original = $v.original?.toBuilder();
      _focus = $v.focus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaAttachmentMeta other) {
    _$v = other as _$MediaAttachmentMeta;
  }

  @override
  void update(void Function(MediaAttachmentMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaAttachmentMeta build() => _build();

  _$MediaAttachmentMeta _build() {
    _$MediaAttachmentMeta _$result;
    try {
      _$result = _$v ??
          _$MediaAttachmentMeta._(
            small: _small?.build(),
            original: _original?.build(),
            focus: _focus?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'small';
        _small?.build();
        _$failedField = 'original';
        _original?.build();
        _$failedField = 'focus';
        _focus?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MediaAttachmentMeta', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
