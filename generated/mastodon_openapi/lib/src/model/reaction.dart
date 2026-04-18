//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reaction.g.dart';

/// Represents an emoji reaction to an Announcement.
///
/// Properties:
/// * [count] - The total number of users who have added this reaction.
/// * [name] - The emoji used for the reaction. Either a unicode emoji, or a custom emoji's shortcode.
/// * [me] - If there is a currently authorized user: Have you added this reaction?
/// * [staticUrl] - If the reaction is a custom emoji: A link to a non-animated version of the custom emoji.
/// * [url] - If the reaction is a custom emoji: A link to the custom emoji.
@BuiltValue()
abstract class Reaction implements Built<Reaction, ReactionBuilder> {
  /// The total number of users who have added this reaction.
  @BuiltValueField(wireName: r'count')
  int get count;

  /// The emoji used for the reaction. Either a unicode emoji, or a custom emoji's shortcode.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// If there is a currently authorized user: Have you added this reaction?
  @BuiltValueField(wireName: r'me')
  bool? get me;

  /// If the reaction is a custom emoji: A link to a non-animated version of the custom emoji.
  @BuiltValueField(wireName: r'static_url')
  String? get staticUrl;

  /// If the reaction is a custom emoji: A link to the custom emoji.
  @BuiltValueField(wireName: r'url')
  String? get url;

  Reaction._();

  factory Reaction([void updates(ReactionBuilder b)]) = _$Reaction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReactionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Reaction> get serializer => _$ReactionSerializer();
}

class _$ReactionSerializer implements PrimitiveSerializer<Reaction> {
  @override
  final Iterable<Type> types = const [Reaction, _$Reaction];

  @override
  final String wireName = r'Reaction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Reaction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.me != null) {
      yield r'me';
      yield serializers.serialize(
        object.me,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.staticUrl != null) {
      yield r'static_url';
      yield serializers.serialize(
        object.staticUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Reaction object, {
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
    required ReactionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'me':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.me = valueDes;
          break;
        case r'static_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.staticUrl = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Reaction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReactionBuilder();
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
