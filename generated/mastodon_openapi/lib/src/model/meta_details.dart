//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'meta_details.g.dart';

/// Additional entity definition for MetaDetails
///
/// Properties:
/// * [aspect] - The media aspect ratio of the video or image attachment.
/// * [bitrate] - The media bitrate of the video or audio attachment.
/// * [duration] - The duration of the video attachment.
/// * [frameRate] - The frame rate of the video attachment.
/// * [height] - The height of the attachment in pixels.
/// * [width] - The width of the attachment in pixels.
@BuiltValue()
abstract class MetaDetails implements Built<MetaDetails, MetaDetailsBuilder> {
  /// The media aspect ratio of the video or image attachment.
  @BuiltValueField(wireName: r'aspect')
  num? get aspect;

  /// The media bitrate of the video or audio attachment.
  @BuiltValueField(wireName: r'bitrate')
  int? get bitrate;

  /// The duration of the video attachment.
  @BuiltValueField(wireName: r'duration')
  num? get duration;

  /// The frame rate of the video attachment.
  @BuiltValueField(wireName: r'frame_rate')
  String? get frameRate;

  /// The height of the attachment in pixels.
  @BuiltValueField(wireName: r'height')
  int? get height;

  /// The width of the attachment in pixels.
  @BuiltValueField(wireName: r'width')
  int? get width;

  MetaDetails._();

  factory MetaDetails([void updates(MetaDetailsBuilder b)]) = _$MetaDetails;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetaDetailsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetaDetails> get serializer => _$MetaDetailsSerializer();
}

class _$MetaDetailsSerializer implements PrimitiveSerializer<MetaDetails> {
  @override
  final Iterable<Type> types = const [MetaDetails, _$MetaDetails];

  @override
  final String wireName = r'MetaDetails';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetaDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.aspect != null) {
      yield r'aspect';
      yield serializers.serialize(
        object.aspect,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.bitrate != null) {
      yield r'bitrate';
      yield serializers.serialize(
        object.bitrate,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.frameRate != null) {
      yield r'frame_rate';
      yield serializers.serialize(
        object.frameRate,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.height != null) {
      yield r'height';
      yield serializers.serialize(
        object.height,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MetaDetails object, {
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
    required MetaDetailsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'aspect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.aspect = valueDes;
          break;
        case r'bitrate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bitrate = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.duration = valueDes;
          break;
        case r'frame_rate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.frameRate = valueDes;
          break;
        case r'height':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.height = valueDes;
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.width = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MetaDetails deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetaDetailsBuilder();
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
