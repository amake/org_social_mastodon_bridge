// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_attachment_meta_focus.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaAttachmentMetaFocus extends MediaAttachmentMetaFocus {
  @override
  final num? x;
  @override
  final num? y;

  factory _$MediaAttachmentMetaFocus(
          [void Function(MediaAttachmentMetaFocusBuilder)? updates]) =>
      (MediaAttachmentMetaFocusBuilder()..update(updates))._build();

  _$MediaAttachmentMetaFocus._({this.x, this.y}) : super._();
  @override
  MediaAttachmentMetaFocus rebuild(
          void Function(MediaAttachmentMetaFocusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaAttachmentMetaFocusBuilder toBuilder() =>
      MediaAttachmentMetaFocusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaAttachmentMetaFocus && x == other.x && y == other.y;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, x.hashCode);
    _$hash = $jc(_$hash, y.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaAttachmentMetaFocus')
          ..add('x', x)
          ..add('y', y))
        .toString();
  }
}

class MediaAttachmentMetaFocusBuilder
    implements
        Builder<MediaAttachmentMetaFocus, MediaAttachmentMetaFocusBuilder> {
  _$MediaAttachmentMetaFocus? _$v;

  num? _x;
  num? get x => _$this._x;
  set x(num? x) => _$this._x = x;

  num? _y;
  num? get y => _$this._y;
  set y(num? y) => _$this._y = y;

  MediaAttachmentMetaFocusBuilder() {
    MediaAttachmentMetaFocus._defaults(this);
  }

  MediaAttachmentMetaFocusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _x = $v.x;
      _y = $v.y;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaAttachmentMetaFocus other) {
    _$v = other as _$MediaAttachmentMetaFocus;
  }

  @override
  void update(void Function(MediaAttachmentMetaFocusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaAttachmentMetaFocus build() => _build();

  _$MediaAttachmentMetaFocus _build() {
    final _$result = _$v ??
        _$MediaAttachmentMetaFocus._(
          x: x,
          y: y,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
