//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_configuration_media_attachments.g.dart';

/// Hints for which attachments will be accepted.
///
/// Properties:
/// * [imageMatrixLimit] - The maximum number of pixels (width times height) for image uploads.
/// * [imageSizeLimit] - The maximum size of any uploaded image, in bytes.
/// * [supportedMimeTypes] - Contains MIME types that can be uploaded.
/// * [videoFrameRateLimit] - The maximum frame rate for any uploaded video.
/// * [videoMatrixLimit] - The maximum number of pixels (width times height) for video uploads.
/// * [videoSizeLimit] - The maximum size of any uploaded video, in bytes.
/// * [descriptionLimit] - The maximum size of a description, in characters.
@BuiltValue()
abstract class InstanceConfigurationMediaAttachments
    implements
        Built<InstanceConfigurationMediaAttachments,
            InstanceConfigurationMediaAttachmentsBuilder> {
  /// The maximum number of pixels (width times height) for image uploads.
  @BuiltValueField(wireName: r'image_matrix_limit')
  int get imageMatrixLimit;

  /// The maximum size of any uploaded image, in bytes.
  @BuiltValueField(wireName: r'image_size_limit')
  int get imageSizeLimit;

  /// Contains MIME types that can be uploaded.
  @BuiltValueField(wireName: r'supported_mime_types')
  BuiltList<String> get supportedMimeTypes;

  /// The maximum frame rate for any uploaded video.
  @BuiltValueField(wireName: r'video_frame_rate_limit')
  int get videoFrameRateLimit;

  /// The maximum number of pixels (width times height) for video uploads.
  @BuiltValueField(wireName: r'video_matrix_limit')
  int get videoMatrixLimit;

  /// The maximum size of any uploaded video, in bytes.
  @BuiltValueField(wireName: r'video_size_limit')
  int get videoSizeLimit;

  /// The maximum size of a description, in characters.
  @BuiltValueField(wireName: r'description_limit')
  int? get descriptionLimit;

  InstanceConfigurationMediaAttachments._();

  factory InstanceConfigurationMediaAttachments(
          [void updates(InstanceConfigurationMediaAttachmentsBuilder b)]) =
      _$InstanceConfigurationMediaAttachments;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstanceConfigurationMediaAttachmentsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceConfigurationMediaAttachments> get serializer =>
      _$InstanceConfigurationMediaAttachmentsSerializer();
}

class _$InstanceConfigurationMediaAttachmentsSerializer
    implements PrimitiveSerializer<InstanceConfigurationMediaAttachments> {
  @override
  final Iterable<Type> types = const [
    InstanceConfigurationMediaAttachments,
    _$InstanceConfigurationMediaAttachments
  ];

  @override
  final String wireName = r'InstanceConfigurationMediaAttachments';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceConfigurationMediaAttachments object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'image_matrix_limit';
    yield serializers.serialize(
      object.imageMatrixLimit,
      specifiedType: const FullType(int),
    );
    yield r'image_size_limit';
    yield serializers.serialize(
      object.imageSizeLimit,
      specifiedType: const FullType(int),
    );
    yield r'supported_mime_types';
    yield serializers.serialize(
      object.supportedMimeTypes,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'video_frame_rate_limit';
    yield serializers.serialize(
      object.videoFrameRateLimit,
      specifiedType: const FullType(int),
    );
    yield r'video_matrix_limit';
    yield serializers.serialize(
      object.videoMatrixLimit,
      specifiedType: const FullType(int),
    );
    yield r'video_size_limit';
    yield serializers.serialize(
      object.videoSizeLimit,
      specifiedType: const FullType(int),
    );
    if (object.descriptionLimit != null) {
      yield r'description_limit';
      yield serializers.serialize(
        object.descriptionLimit,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceConfigurationMediaAttachments object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InstanceConfigurationMediaAttachmentsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'image_matrix_limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.imageMatrixLimit = valueDes;
          break;
        case r'image_size_limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.imageSizeLimit = valueDes;
          break;
        case r'supported_mime_types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.supportedMimeTypes.replace(valueDes);
          break;
        case r'video_frame_rate_limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.videoFrameRateLimit = valueDes;
          break;
        case r'video_matrix_limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.videoMatrixLimit = valueDes;
          break;
        case r'video_size_limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.videoSizeLimit = valueDes;
          break;
        case r'description_limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.descriptionLimit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InstanceConfigurationMediaAttachments deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceConfigurationMediaAttachmentsBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
