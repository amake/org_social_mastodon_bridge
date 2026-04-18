// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_configuration_media_attachments.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceConfigurationMediaAttachments
    extends InstanceConfigurationMediaAttachments {
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
  @override
  final int? descriptionLimit;

  factory _$InstanceConfigurationMediaAttachments(
          [void Function(InstanceConfigurationMediaAttachmentsBuilder)?
              updates]) =>
      (InstanceConfigurationMediaAttachmentsBuilder()..update(updates))
          ._build();

  _$InstanceConfigurationMediaAttachments._(
      {required this.imageMatrixLimit,
      required this.imageSizeLimit,
      required this.supportedMimeTypes,
      required this.videoFrameRateLimit,
      required this.videoMatrixLimit,
      required this.videoSizeLimit,
      this.descriptionLimit})
      : super._();
  @override
  InstanceConfigurationMediaAttachments rebuild(
          void Function(InstanceConfigurationMediaAttachmentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceConfigurationMediaAttachmentsBuilder toBuilder() =>
      InstanceConfigurationMediaAttachmentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceConfigurationMediaAttachments &&
        imageMatrixLimit == other.imageMatrixLimit &&
        imageSizeLimit == other.imageSizeLimit &&
        supportedMimeTypes == other.supportedMimeTypes &&
        videoFrameRateLimit == other.videoFrameRateLimit &&
        videoMatrixLimit == other.videoMatrixLimit &&
        videoSizeLimit == other.videoSizeLimit &&
        descriptionLimit == other.descriptionLimit;
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
    _$hash = $jc(_$hash, descriptionLimit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'InstanceConfigurationMediaAttachments')
          ..add('imageMatrixLimit', imageMatrixLimit)
          ..add('imageSizeLimit', imageSizeLimit)
          ..add('supportedMimeTypes', supportedMimeTypes)
          ..add('videoFrameRateLimit', videoFrameRateLimit)
          ..add('videoMatrixLimit', videoMatrixLimit)
          ..add('videoSizeLimit', videoSizeLimit)
          ..add('descriptionLimit', descriptionLimit))
        .toString();
  }
}

class InstanceConfigurationMediaAttachmentsBuilder
    implements
        Builder<InstanceConfigurationMediaAttachments,
            InstanceConfigurationMediaAttachmentsBuilder> {
  _$InstanceConfigurationMediaAttachments? _$v;

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

  int? _descriptionLimit;
  int? get descriptionLimit => _$this._descriptionLimit;
  set descriptionLimit(int? descriptionLimit) =>
      _$this._descriptionLimit = descriptionLimit;

  InstanceConfigurationMediaAttachmentsBuilder() {
    InstanceConfigurationMediaAttachments._defaults(this);
  }

  InstanceConfigurationMediaAttachmentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageMatrixLimit = $v.imageMatrixLimit;
      _imageSizeLimit = $v.imageSizeLimit;
      _supportedMimeTypes = $v.supportedMimeTypes.toBuilder();
      _videoFrameRateLimit = $v.videoFrameRateLimit;
      _videoMatrixLimit = $v.videoMatrixLimit;
      _videoSizeLimit = $v.videoSizeLimit;
      _descriptionLimit = $v.descriptionLimit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceConfigurationMediaAttachments other) {
    _$v = other as _$InstanceConfigurationMediaAttachments;
  }

  @override
  void update(
      void Function(InstanceConfigurationMediaAttachmentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceConfigurationMediaAttachments build() => _build();

  _$InstanceConfigurationMediaAttachments _build() {
    _$InstanceConfigurationMediaAttachments _$result;
    try {
      _$result = _$v ??
          _$InstanceConfigurationMediaAttachments._(
            imageMatrixLimit: BuiltValueNullFieldError.checkNotNull(
                imageMatrixLimit,
                r'InstanceConfigurationMediaAttachments',
                'imageMatrixLimit'),
            imageSizeLimit: BuiltValueNullFieldError.checkNotNull(
                imageSizeLimit,
                r'InstanceConfigurationMediaAttachments',
                'imageSizeLimit'),
            supportedMimeTypes: supportedMimeTypes.build(),
            videoFrameRateLimit: BuiltValueNullFieldError.checkNotNull(
                videoFrameRateLimit,
                r'InstanceConfigurationMediaAttachments',
                'videoFrameRateLimit'),
            videoMatrixLimit: BuiltValueNullFieldError.checkNotNull(
                videoMatrixLimit,
                r'InstanceConfigurationMediaAttachments',
                'videoMatrixLimit'),
            videoSizeLimit: BuiltValueNullFieldError.checkNotNull(
                videoSizeLimit,
                r'InstanceConfigurationMediaAttachments',
                'videoSizeLimit'),
            descriptionLimit: descriptionLimit,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'supportedMimeTypes';
        supportedMimeTypes.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InstanceConfigurationMediaAttachments',
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
