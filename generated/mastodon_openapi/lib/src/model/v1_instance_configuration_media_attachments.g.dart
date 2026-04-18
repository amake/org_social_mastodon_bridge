// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_instance_configuration_media_attachments.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1InstanceConfigurationMediaAttachments
    extends V1InstanceConfigurationMediaAttachments {
  @override
  final int imageMatrixLimit;
  @override
  final int imageSizeLimit;
  @override
  final BuiltList<String> supportedMimeTypes;
  @override
  final int videoFrameRateLimit;
  @override
  final int videoMatrixLimit;
  @override
  final int videoSizeLimit;

  factory _$V1InstanceConfigurationMediaAttachments(
          [void Function(V1InstanceConfigurationMediaAttachmentsBuilder)?
              updates]) =>
      (V1InstanceConfigurationMediaAttachmentsBuilder()..update(updates))
          ._build();

  _$V1InstanceConfigurationMediaAttachments._(
      {required this.imageMatrixLimit,
      required this.imageSizeLimit,
      required this.supportedMimeTypes,
      required this.videoFrameRateLimit,
      required this.videoMatrixLimit,
      required this.videoSizeLimit})
      : super._();
  @override
  V1InstanceConfigurationMediaAttachments rebuild(
          void Function(V1InstanceConfigurationMediaAttachmentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1InstanceConfigurationMediaAttachmentsBuilder toBuilder() =>
      V1InstanceConfigurationMediaAttachmentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1InstanceConfigurationMediaAttachments &&
        imageMatrixLimit == other.imageMatrixLimit &&
        imageSizeLimit == other.imageSizeLimit &&
        supportedMimeTypes == other.supportedMimeTypes &&
        videoFrameRateLimit == other.videoFrameRateLimit &&
        videoMatrixLimit == other.videoMatrixLimit &&
        videoSizeLimit == other.videoSizeLimit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageMatrixLimit.hashCode);
    _$hash = $jc(_$hash, imageSizeLimit.hashCode);
    _$hash = $jc(_$hash, supportedMimeTypes.hashCode);
    _$hash = $jc(_$hash, videoFrameRateLimit.hashCode);
    _$hash = $jc(_$hash, videoMatrixLimit.hashCode);
    _$hash = $jc(_$hash, videoSizeLimit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'V1InstanceConfigurationMediaAttachments')
          ..add('imageMatrixLimit', imageMatrixLimit)
          ..add('imageSizeLimit', imageSizeLimit)
          ..add('supportedMimeTypes', supportedMimeTypes)
          ..add('videoFrameRateLimit', videoFrameRateLimit)
          ..add('videoMatrixLimit', videoMatrixLimit)
          ..add('videoSizeLimit', videoSizeLimit))
        .toString();
  }
}

class V1InstanceConfigurationMediaAttachmentsBuilder
    implements
        Builder<V1InstanceConfigurationMediaAttachments,
            V1InstanceConfigurationMediaAttachmentsBuilder> {
  _$V1InstanceConfigurationMediaAttachments? _$v;

  int? _imageMatrixLimit;
  int? get imageMatrixLimit => _$this._imageMatrixLimit;
  set imageMatrixLimit(int? imageMatrixLimit) =>
      _$this._imageMatrixLimit = imageMatrixLimit;

  int? _imageSizeLimit;
  int? get imageSizeLimit => _$this._imageSizeLimit;
  set imageSizeLimit(int? imageSizeLimit) =>
      _$this._imageSizeLimit = imageSizeLimit;

  ListBuilder<String>? _supportedMimeTypes;
  ListBuilder<String> get supportedMimeTypes =>
      _$this._supportedMimeTypes ??= ListBuilder<String>();
  set supportedMimeTypes(ListBuilder<String>? supportedMimeTypes) =>
      _$this._supportedMimeTypes = supportedMimeTypes;

  int? _videoFrameRateLimit;
  int? get videoFrameRateLimit => _$this._videoFrameRateLimit;
  set videoFrameRateLimit(int? videoFrameRateLimit) =>
      _$this._videoFrameRateLimit = videoFrameRateLimit;

  int? _videoMatrixLimit;
  int? get videoMatrixLimit => _$this._videoMatrixLimit;
  set videoMatrixLimit(int? videoMatrixLimit) =>
      _$this._videoMatrixLimit = videoMatrixLimit;

  int? _videoSizeLimit;
  int? get videoSizeLimit => _$this._videoSizeLimit;
  set videoSizeLimit(int? videoSizeLimit) =>
      _$this._videoSizeLimit = videoSizeLimit;

  V1InstanceConfigurationMediaAttachmentsBuilder() {
    V1InstanceConfigurationMediaAttachments._defaults(this);
  }

  V1InstanceConfigurationMediaAttachmentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageMatrixLimit = $v.imageMatrixLimit;
      _imageSizeLimit = $v.imageSizeLimit;
      _supportedMimeTypes = $v.supportedMimeTypes.toBuilder();
      _videoFrameRateLimit = $v.videoFrameRateLimit;
      _videoMatrixLimit = $v.videoMatrixLimit;
      _videoSizeLimit = $v.videoSizeLimit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1InstanceConfigurationMediaAttachments other) {
    _$v = other as _$V1InstanceConfigurationMediaAttachments;
  }

  @override
  void update(
      void Function(V1InstanceConfigurationMediaAttachmentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1InstanceConfigurationMediaAttachments build() => _build();

  _$V1InstanceConfigurationMediaAttachments _build() {
    _$V1InstanceConfigurationMediaAttachments _$result;
    try {
      _$result = _$v ??
          _$V1InstanceConfigurationMediaAttachments._(
            imageMatrixLimit: BuiltValueNullFieldError.checkNotNull(
                imageMatrixLimit,
                r'V1InstanceConfigurationMediaAttachments',
                'imageMatrixLimit'),
            imageSizeLimit: BuiltValueNullFieldError.checkNotNull(
                imageSizeLimit,
                r'V1InstanceConfigurationMediaAttachments',
                'imageSizeLimit'),
            supportedMimeTypes: supportedMimeTypes.build(),
            videoFrameRateLimit: BuiltValueNullFieldError.checkNotNull(
                videoFrameRateLimit,
                r'V1InstanceConfigurationMediaAttachments',
                'videoFrameRateLimit'),
            videoMatrixLimit: BuiltValueNullFieldError.checkNotNull(
                videoMatrixLimit,
                r'V1InstanceConfigurationMediaAttachments',
                'videoMatrixLimit'),
            videoSizeLimit: BuiltValueNullFieldError.checkNotNull(
                videoSizeLimit,
                r'V1InstanceConfigurationMediaAttachments',
                'videoSizeLimit'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'supportedMimeTypes';
        supportedMimeTypes.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'V1InstanceConfigurationMediaAttachments',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
