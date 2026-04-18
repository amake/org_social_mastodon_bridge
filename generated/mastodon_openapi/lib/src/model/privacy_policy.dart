//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'privacy_policy.g.dart';

/// Represents the privacy policy of the instance.
///
/// Properties:
/// * [content] - The rendered HTML content of the privacy policy.
/// * [updatedAt] - A timestamp of when the privacy policy was last updated.
@BuiltValue()
abstract class PrivacyPolicy
    implements Built<PrivacyPolicy, PrivacyPolicyBuilder> {
  /// The rendered HTML content of the privacy policy.
  @BuiltValueField(wireName: r'content')
  String get content;

  /// A timestamp of when the privacy policy was last updated.
  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  PrivacyPolicy._();

  factory PrivacyPolicy([void updates(PrivacyPolicyBuilder b)]) =
      _$PrivacyPolicy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrivacyPolicyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrivacyPolicy> get serializer =>
      _$PrivacyPolicySerializer();
}

class _$PrivacyPolicySerializer implements PrimitiveSerializer<PrivacyPolicy> {
  @override
  final Iterable<Type> types = const [PrivacyPolicy, _$PrivacyPolicy];

  @override
  final String wireName = r'PrivacyPolicy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrivacyPolicy object, {
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
    PrivacyPolicy object, {
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
    required PrivacyPolicyBuilder result,
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
  PrivacyPolicy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrivacyPolicyBuilder();
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
