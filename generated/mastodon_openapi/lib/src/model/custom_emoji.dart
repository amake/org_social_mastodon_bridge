//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'custom_emoji.g.dart';

/// Represents a custom emoji.
///
/// Properties:
/// * [shortcode] - The name of the custom emoji.
/// * [staticUrl] - A link to a static copy of the custom emoji.
/// * [url] - A link to the custom emoji.
/// * [visibleInPicker] - Whether this Emoji should be visible in the picker or unlisted.
/// * [category] - Used for sorting custom emoji in the picker.
@BuiltValue()
abstract class CustomEmoji implements Built<CustomEmoji, CustomEmojiBuilder> {
  /// The name of the custom emoji.
  @BuiltValueField(wireName: r'shortcode')
  String get shortcode;

  /// A link to a static copy of the custom emoji.
  @BuiltValueField(wireName: r'static_url')
  String get staticUrl;

  /// A link to the custom emoji.
  @BuiltValueField(wireName: r'url')
  String get url;

  /// Whether this Emoji should be visible in the picker or unlisted.
  @BuiltValueField(wireName: r'visible_in_picker')
  bool get visibleInPicker;

  /// Used for sorting custom emoji in the picker.
  @BuiltValueField(wireName: r'category')
  String? get category;

  CustomEmoji._();

  factory CustomEmoji([void updates(CustomEmojiBuilder b)]) = _$CustomEmoji;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomEmojiBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomEmoji> get serializer => _$CustomEmojiSerializer();
}

class _$CustomEmojiSerializer implements PrimitiveSerializer<CustomEmoji> {
  @override
  final Iterable<Type> types = const [CustomEmoji, _$CustomEmoji];

  @override
  final String wireName = r'CustomEmoji';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomEmoji object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'shortcode';
    yield serializers.serialize(
      object.shortcode,
      specifiedType: const FullType(String),
    );
    yield r'static_url';
    yield serializers.serialize(
      object.staticUrl,
      specifiedType: const FullType(String),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    yield r'visible_in_picker';
    yield serializers.serialize(
      object.visibleInPicker,
      specifiedType: const FullType(bool),
    );
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomEmoji object, {
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
    required CustomEmojiBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'shortcode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.shortcode = valueDes;
          break;
        case r'static_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.staticUrl = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'visible_in_picker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.visibleInPicker = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.category = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomEmoji deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomEmojiBuilder();
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
