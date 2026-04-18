//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_instance_configuration_accounts.g.dart';

/// Limits related to accounts.
///
/// Properties:
/// * [maxFeaturedTags] - The maximum number of featured tags allowed for each account.
@BuiltValue()
abstract class V1InstanceConfigurationAccounts
    implements
        Built<V1InstanceConfigurationAccounts,
            V1InstanceConfigurationAccountsBuilder> {
  /// The maximum number of featured tags allowed for each account.
  @BuiltValueField(wireName: r'max_featured_tags')
  int get maxFeaturedTags;

  V1InstanceConfigurationAccounts._();

  factory V1InstanceConfigurationAccounts(
          [void updates(V1InstanceConfigurationAccountsBuilder b)]) =
      _$V1InstanceConfigurationAccounts;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1InstanceConfigurationAccountsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1InstanceConfigurationAccounts> get serializer =>
      _$V1InstanceConfigurationAccountsSerializer();
}

class _$V1InstanceConfigurationAccountsSerializer
    implements PrimitiveSerializer<V1InstanceConfigurationAccounts> {
  @override
  final Iterable<Type> types = const [
    V1InstanceConfigurationAccounts,
    _$V1InstanceConfigurationAccounts
  ];

  @override
  final String wireName = r'V1InstanceConfigurationAccounts';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1InstanceConfigurationAccounts object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'max_featured_tags';
    yield serializers.serialize(
      object.maxFeaturedTags,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1InstanceConfigurationAccounts object, {
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
    required V1InstanceConfigurationAccountsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'max_featured_tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxFeaturedTags = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1InstanceConfigurationAccounts deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1InstanceConfigurationAccountsBuilder();
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
