//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_thumbnail_versions.g.dart';

/// Links to scaled resolution images, for high DPI screens.
///
/// Properties:
/// * [at1x] - The URL for the thumbnail image at 1x resolution.
/// * [at2x] - The URL for the thumbnail image at 2x resolution.
@BuiltValue()
abstract class InstanceThumbnailVersions
    implements
        Built<InstanceThumbnailVersions, InstanceThumbnailVersionsBuilder> {
  /// The URL for the thumbnail image at 1x resolution.
  @BuiltValueField(wireName: r'@1x')
  String? get at1x;

  /// The URL for the thumbnail image at 2x resolution.
  @BuiltValueField(wireName: r'@2x')
  String? get at2x;

  InstanceThumbnailVersions._();

  factory InstanceThumbnailVersions(
          [void updates(InstanceThumbnailVersionsBuilder b)]) =
      _$InstanceThumbnailVersions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstanceThumbnailVersionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceThumbnailVersions> get serializer =>
      _$InstanceThumbnailVersionsSerializer();
}

class _$InstanceThumbnailVersionsSerializer
    implements PrimitiveSerializer<InstanceThumbnailVersions> {
  @override
  final Iterable<Type> types = const [
    InstanceThumbnailVersions,
    _$InstanceThumbnailVersions
  ];

  @override
  final String wireName = r'InstanceThumbnailVersions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceThumbnailVersions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.at1x != null) {
      yield r'@1x';
      yield serializers.serialize(
        object.at1x,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.at2x != null) {
      yield r'@2x';
      yield serializers.serialize(
        object.at2x,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceThumbnailVersions object, {
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
    required InstanceThumbnailVersionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@1x':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.at1x = valueDes;
          break;
        case r'@2x':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.at2x = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InstanceThumbnailVersions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceThumbnailVersionsBuilder();
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
