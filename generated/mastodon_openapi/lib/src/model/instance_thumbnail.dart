//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/instance_thumbnail_versions.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_thumbnail.g.dart';

/// An image used to represent this server.
///
/// Properties:
/// * [url] - The URL for the thumbnail image.
/// * [blurhash] - A hash computed by [the BlurHash algorithm](https://github.com/woltapp/blurhash), for generating colorful preview thumbnails when media has not been downloaded yet.
/// * [versions]
@BuiltValue()
abstract class InstanceThumbnail
    implements Built<InstanceThumbnail, InstanceThumbnailBuilder> {
  /// The URL for the thumbnail image.
  @BuiltValueField(wireName: r'url')
  String get url;

  /// A hash computed by [the BlurHash algorithm](https://github.com/woltapp/blurhash), for generating colorful preview thumbnails when media has not been downloaded yet.
  @BuiltValueField(wireName: r'blurhash')
  String? get blurhash;

  @BuiltValueField(wireName: r'versions')
  InstanceThumbnailVersions? get versions;

  InstanceThumbnail._();

  factory InstanceThumbnail([void updates(InstanceThumbnailBuilder b)]) =
      _$InstanceThumbnail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstanceThumbnailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceThumbnail> get serializer =>
      _$InstanceThumbnailSerializer();
}

class _$InstanceThumbnailSerializer
    implements PrimitiveSerializer<InstanceThumbnail> {
  @override
  final Iterable<Type> types = const [InstanceThumbnail, _$InstanceThumbnail];

  @override
  final String wireName = r'InstanceThumbnail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceThumbnail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    if (object.blurhash != null) {
      yield r'blurhash';
      yield serializers.serialize(
        object.blurhash,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.versions != null) {
      yield r'versions';
      yield serializers.serialize(
        object.versions,
        specifiedType: const FullType(InstanceThumbnailVersions),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceThumbnail object, {
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
    required InstanceThumbnailBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'blurhash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.blurhash = valueDes;
          break;
        case r'versions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceThumbnailVersions),
          ) as InstanceThumbnailVersions;
          result.versions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InstanceThumbnail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceThumbnailBuilder();
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
