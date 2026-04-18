//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_attachment_meta_focus.g.dart';

/// Coordinates that may be used for smart thumbnail cropping -- see [Focal points for cropped media thumbnails]({{< relref \"api/guidelines#focal-points\" >}}) for more.
///
/// Properties:
/// * [x] - Horizontal focal point
/// * [y] - Vertical focal point
@BuiltValue()
abstract class MediaAttachmentMetaFocus
    implements
        Built<MediaAttachmentMetaFocus, MediaAttachmentMetaFocusBuilder> {
  /// Horizontal focal point
  @BuiltValueField(wireName: r'x')
  num? get x;

  /// Vertical focal point
  @BuiltValueField(wireName: r'y')
  num? get y;

  MediaAttachmentMetaFocus._();

  factory MediaAttachmentMetaFocus(
          [void updates(MediaAttachmentMetaFocusBuilder b)]) =
      _$MediaAttachmentMetaFocus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaAttachmentMetaFocusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaAttachmentMetaFocus> get serializer =>
      _$MediaAttachmentMetaFocusSerializer();
}

class _$MediaAttachmentMetaFocusSerializer
    implements PrimitiveSerializer<MediaAttachmentMetaFocus> {
  @override
  final Iterable<Type> types = const [
    MediaAttachmentMetaFocus,
    _$MediaAttachmentMetaFocus
  ];

  @override
  final String wireName = r'MediaAttachmentMetaFocus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaAttachmentMetaFocus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.x != null) {
      yield r'x';
      yield serializers.serialize(
        object.x,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.y != null) {
      yield r'y';
      yield serializers.serialize(
        object.y,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaAttachmentMetaFocus object, {
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
    required MediaAttachmentMetaFocusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'x':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.x = valueDes;
          break;
        case r'y':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.y = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MediaAttachmentMetaFocus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaAttachmentMetaFocusBuilder();
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
