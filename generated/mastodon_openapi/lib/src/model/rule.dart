//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule.g.dart';

/// Represents a rule that server users should follow.
///
/// Properties:
/// * [id] - An identifier for the rule.
/// * [text] - The rule to be followed.
/// * [hint] - Longer-form description of the rule.
/// * [translations] - Available translations for this rule's `text` and `hint`, as a Hash where keys are locale codes and values are hashes with `text` and `hint` keys.
@BuiltValue()
abstract class Rule implements Built<Rule, RuleBuilder> {
  /// An identifier for the rule.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The rule to be followed.
  @BuiltValueField(wireName: r'text')
  String get text;

  /// Longer-form description of the rule.
  @BuiltValueField(wireName: r'hint')
  String? get hint;

  /// Available translations for this rule's `text` and `hint`, as a Hash where keys are locale codes and values are hashes with `text` and `hint` keys.
  @BuiltValueField(wireName: r'translations')
  JsonObject? get translations;

  Rule._();

  factory Rule([void updates(RuleBuilder b)]) = _$Rule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Rule> get serializer => _$RuleSerializer();
}

class _$RuleSerializer implements PrimitiveSerializer<Rule> {
  @override
  final Iterable<Type> types = const [Rule, _$Rule];

  @override
  final String wireName = r'Rule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Rule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.hint != null) {
      yield r'hint';
      yield serializers.serialize(
        object.hint,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.translations != null) {
      yield r'translations';
      yield serializers.serialize(
        object.translations,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Rule object, {
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
    required RuleBuilder result,
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
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'hint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.hint = valueDes;
          break;
        case r'translations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.translations = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Rule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleBuilder();
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
