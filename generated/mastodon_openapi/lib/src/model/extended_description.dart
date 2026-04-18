//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extended_description.g.dart';

/// Represents an extended description for the instance, to be shown on its about page.
///
/// Properties:
/// * [content] - The rendered HTML content of the extended description.
/// * [updatedAt] - A timestamp of when the extended description was last updated.
@BuiltValue()
abstract class ExtendedDescription
    implements Built<ExtendedDescription, ExtendedDescriptionBuilder> {
  /// The rendered HTML content of the extended description.
  @BuiltValueField(wireName: r'content')
  String get content;

  /// A timestamp of when the extended description was last updated.
  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  ExtendedDescription._();

  factory ExtendedDescription([void updates(ExtendedDescriptionBuilder b)]) =
      _$ExtendedDescription;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExtendedDescriptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExtendedDescription> get serializer =>
      _$ExtendedDescriptionSerializer();
}

class _$ExtendedDescriptionSerializer
    implements PrimitiveSerializer<ExtendedDescription> {
  @override
  final Iterable<Type> types = const [
    ExtendedDescription,
    _$ExtendedDescription
  ];

  @override
  final String wireName = r'ExtendedDescription';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExtendedDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'content';
    yield serializers.serialize(
      object.content,
      specifiedType: const FullType(String),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExtendedDescription object, {
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
    required ExtendedDescriptionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExtendedDescription deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExtendedDescriptionBuilder();
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
