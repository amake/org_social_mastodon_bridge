//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'field.g.dart';

/// Additional entity definition for Field
///
/// Properties:
/// * [name] - The key of a given field's key-value pair. This is the raw string before processing, not HTML.
/// * [value] - The value associated with the `name` key. This is the raw string before processing, not HTML.
/// * [verifiedAt] - Timestamp of when the server verified a URL value for a rel=\"me\" link.
@BuiltValue()
abstract class Field implements Built<Field, FieldBuilder> {
  /// The key of a given field's key-value pair. This is the raw string before processing, not HTML.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// The value associated with the `name` key. This is the raw string before processing, not HTML.
  @BuiltValueField(wireName: r'value')
  String get value;

  /// Timestamp of when the server verified a URL value for a rel=\"me\" link.
  @BuiltValueField(wireName: r'verified_at')
  DateTime? get verifiedAt;

  Field._();

  factory Field([void updates(FieldBuilder b)]) = _$Field;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Field> get serializer => _$FieldSerializer();
}

class _$FieldSerializer implements PrimitiveSerializer<Field> {
  @override
  final Iterable<Type> types = const [Field, _$Field];

  @override
  final String wireName = r'Field';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Field object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
    if (object.verifiedAt != null) {
      yield r'verified_at';
      yield serializers.serialize(
        object.verifiedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Field object, {
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
    required FieldBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'verified_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.verifiedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Field deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FieldBuilder();
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
