//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_configuration_polls.g.dart';

/// Limits related to polls.
///
/// Properties:
/// * [maxCharactersPerOption] - Each poll option is allowed to have this many characters.
/// * [maxExpiration] - The longest allowed poll duration, in seconds.
/// * [maxOptions] - Each poll is allowed to have up to this many options.
/// * [minExpiration] - The shortest allowed poll duration, in seconds.
@BuiltValue()
abstract class InstanceConfigurationPolls
    implements
        Built<InstanceConfigurationPolls, InstanceConfigurationPollsBuilder> {
  /// Each poll option is allowed to have this many characters.
  @BuiltValueField(wireName: r'max_characters_per_option')
  int get maxCharactersPerOption;

  /// The longest allowed poll duration, in seconds.
  @BuiltValueField(wireName: r'max_expiration')
  int get maxExpiration;

  /// Each poll is allowed to have up to this many options.
  @BuiltValueField(wireName: r'max_options')
  int get maxOptions;

  /// The shortest allowed poll duration, in seconds.
  @BuiltValueField(wireName: r'min_expiration')
  int get minExpiration;

  InstanceConfigurationPolls._();

  factory InstanceConfigurationPolls(
          [void updates(InstanceConfigurationPollsBuilder b)]) =
      _$InstanceConfigurationPolls;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstanceConfigurationPollsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceConfigurationPolls> get serializer =>
      _$InstanceConfigurationPollsSerializer();
}

class _$InstanceConfigurationPollsSerializer
    implements PrimitiveSerializer<InstanceConfigurationPolls> {
  @override
  final Iterable<Type> types = const [
    InstanceConfigurationPolls,
    _$InstanceConfigurationPolls
  ];

  @override
  final String wireName = r'InstanceConfigurationPolls';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceConfigurationPolls object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'max_characters_per_option';
    yield serializers.serialize(
      object.maxCharactersPerOption,
      specifiedType: const FullType(int),
    );
    yield r'max_expiration';
    yield serializers.serialize(
      object.maxExpiration,
      specifiedType: const FullType(int),
    );
    yield r'max_options';
    yield serializers.serialize(
      object.maxOptions,
      specifiedType: const FullType(int),
    );
    yield r'min_expiration';
    yield serializers.serialize(
      object.minExpiration,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceConfigurationPolls object, {
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
    required InstanceConfigurationPollsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'max_characters_per_option':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxCharactersPerOption = valueDes;
          break;
        case r'max_expiration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxExpiration = valueDes;
          break;
        case r'max_options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxOptions = valueDes;
          break;
        case r'min_expiration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.minExpiration = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InstanceConfigurationPolls deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceConfigurationPollsBuilder();
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
