//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'featured_tag.g.dart';

/// Represents a hashtag that is featured on an account profile.
///
/// Properties:
/// * [id] - The ID of the featured tag.
/// * [name] - The name of the hashtag being featured.
/// * [statusesCount] - The number of authored statuses containing this hashtag.
/// * [url] - A link to all statuses by a user that contain this hashtag.
/// * [lastStatusAt] - The date of the last authored status containing this hashtag.
@BuiltValue()
abstract class FeaturedTag implements Built<FeaturedTag, FeaturedTagBuilder> {
  /// The ID of the featured tag.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The name of the hashtag being featured.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// The number of authored statuses containing this hashtag.
  @BuiltValueField(wireName: r'statuses_count')
  String get statusesCount;

  /// A link to all statuses by a user that contain this hashtag.
  @BuiltValueField(wireName: r'url')
  String get url;

  /// The date of the last authored status containing this hashtag.
  @BuiltValueField(wireName: r'last_status_at')
  Date? get lastStatusAt;

  FeaturedTag._();

  factory FeaturedTag([void updates(FeaturedTagBuilder b)]) = _$FeaturedTag;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FeaturedTagBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FeaturedTag> get serializer => _$FeaturedTagSerializer();
}

class _$FeaturedTagSerializer implements PrimitiveSerializer<FeaturedTag> {
  @override
  final Iterable<Type> types = const [FeaturedTag, _$FeaturedTag];

  @override
  final String wireName = r'FeaturedTag';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FeaturedTag object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'statuses_count';
    yield serializers.serialize(
      object.statusesCount,
      specifiedType: const FullType(String),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    if (object.lastStatusAt != null) {
      yield r'last_status_at';
      yield serializers.serialize(
        object.lastStatusAt,
        specifiedType: const FullType.nullable(Date),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FeaturedTag object, {
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
    required FeaturedTagBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'statuses_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statusesCount = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'last_status_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.lastStatusAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FeaturedTag deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FeaturedTagBuilder();
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
