//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_configuration_translation.g.dart';

/// Hints related to translation.
///
/// Properties:
/// * [enabled] - Whether the Translations API is available on this server.
@BuiltValue()
abstract class InstanceConfigurationTranslation
    implements
        Built<InstanceConfigurationTranslation,
            InstanceConfigurationTranslationBuilder> {
  /// Whether the Translations API is available on this server.
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  InstanceConfigurationTranslation._();

  factory InstanceConfigurationTranslation(
          [void updates(InstanceConfigurationTranslationBuilder b)]) =
      _$InstanceConfigurationTranslation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstanceConfigurationTranslationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceConfigurationTranslation> get serializer =>
      _$InstanceConfigurationTranslationSerializer();
}

class _$InstanceConfigurationTranslationSerializer
    implements PrimitiveSerializer<InstanceConfigurationTranslation> {
  @override
  final Iterable<Type> types = const [
    InstanceConfigurationTranslation,
    _$InstanceConfigurationTranslation
  ];

  @override
  final String wireName = r'InstanceConfigurationTranslation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceConfigurationTranslation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceConfigurationTranslation object, {
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
    required InstanceConfigurationTranslationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InstanceConfigurationTranslation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceConfigurationTranslationBuilder();
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
