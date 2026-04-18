//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_attachment_type_enum.g.dart';

class MediaAttachmentTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'unknown')
  static const MediaAttachmentTypeEnum unknown = _$unknown;
  @BuiltValueEnumConst(wireName: r'image')
  static const MediaAttachmentTypeEnum image = _$image;
  @BuiltValueEnumConst(wireName: r'gifv')
  static const MediaAttachmentTypeEnum gifv = _$gifv;
  @BuiltValueEnumConst(wireName: r'video')
  static const MediaAttachmentTypeEnum video = _$video;
  @BuiltValueEnumConst(wireName: r'audio')
  static const MediaAttachmentTypeEnum audio = _$audio;

  static Serializer<MediaAttachmentTypeEnum> get serializer =>
      _$mediaAttachmentTypeEnumSerializer;

  const MediaAttachmentTypeEnum._(String name) : super(name);

  static BuiltSet<MediaAttachmentTypeEnum> get values => _$values;
  static MediaAttachmentTypeEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MediaAttachmentTypeEnumMixin = Object
    with _$MediaAttachmentTypeEnumMixin;
