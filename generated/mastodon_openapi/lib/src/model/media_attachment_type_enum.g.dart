// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_attachment_type_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MediaAttachmentTypeEnum _$unknown =
    const MediaAttachmentTypeEnum._('unknown');
const MediaAttachmentTypeEnum _$image =
    const MediaAttachmentTypeEnum._('image');
const MediaAttachmentTypeEnum _$gifv = const MediaAttachmentTypeEnum._('gifv');
const MediaAttachmentTypeEnum _$video =
    const MediaAttachmentTypeEnum._('video');
const MediaAttachmentTypeEnum _$audio =
    const MediaAttachmentTypeEnum._('audio');

MediaAttachmentTypeEnum _$valueOf(String name) {
  switch (name) {
    case 'unknown':
      return _$unknown;
    case 'image':
      return _$image;
    case 'gifv':
      return _$gifv;
    case 'video':
      return _$video;
    case 'audio':
      return _$audio;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MediaAttachmentTypeEnum> _$values =
    BuiltSet<MediaAttachmentTypeEnum>(const <MediaAttachmentTypeEnum>[
  _$unknown,
  _$image,
  _$gifv,
  _$video,
  _$audio,
]);

class _$MediaAttachmentTypeEnumMeta {
  const _$MediaAttachmentTypeEnumMeta();
  MediaAttachmentTypeEnum get unknown => _$unknown;
  MediaAttachmentTypeEnum get image => _$image;
  MediaAttachmentTypeEnum get gifv => _$gifv;
  MediaAttachmentTypeEnum get video => _$video;
  MediaAttachmentTypeEnum get audio => _$audio;
  MediaAttachmentTypeEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<MediaAttachmentTypeEnum> get values => _$values;
}

abstract class _$MediaAttachmentTypeEnumMixin {
  // ignore: non_constant_identifier_names
  _$MediaAttachmentTypeEnumMeta get MediaAttachmentTypeEnum =>
      const _$MediaAttachmentTypeEnumMeta();
}

Serializer<MediaAttachmentTypeEnum> _$mediaAttachmentTypeEnumSerializer =
    _$MediaAttachmentTypeEnumSerializer();

class _$MediaAttachmentTypeEnumSerializer
    implements PrimitiveSerializer<MediaAttachmentTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unknown': 'unknown',
    'image': 'image',
    'gifv': 'gifv',
    'video': 'video',
    'audio': 'audio',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'unknown': 'unknown',
    'image': 'image',
    'gifv': 'gifv',
    'video': 'video',
    'audio': 'audio',
  };

  @override
  final Iterable<Type> types = const <Type>[MediaAttachmentTypeEnum];
  @override
  final String wireName = 'MediaAttachmentTypeEnum';

  @override
  Object serialize(Serializers serializers, MediaAttachmentTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MediaAttachmentTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MediaAttachmentTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
