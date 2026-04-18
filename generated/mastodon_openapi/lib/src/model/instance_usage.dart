//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/instance_usage_users.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_usage.g.dart';

/// Usage data for this server.
///
/// Properties:
/// * [users]
@BuiltValue()
abstract class InstanceUsage
    implements Built<InstanceUsage, InstanceUsageBuilder> {
  @BuiltValueField(wireName: r'users')
  InstanceUsageUsers get users;

  InstanceUsage._();

  factory InstanceUsage([void updates(InstanceUsageBuilder b)]) =
      _$InstanceUsage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstanceUsageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceUsage> get serializer =>
      _$InstanceUsageSerializer();
}

class _$InstanceUsageSerializer implements PrimitiveSerializer<InstanceUsage> {
  @override
  final Iterable<Type> types = const [InstanceUsage, _$InstanceUsage];

  @override
  final String wireName = r'InstanceUsage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceUsage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'users';
    yield serializers.serialize(
      object.users,
      specifiedType: const FullType(InstanceUsageUsers),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceUsage object, {
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
    required InstanceUsageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'users':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceUsageUsers),
          ) as InstanceUsageUsers;
          result.users.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InstanceUsage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceUsageBuilder();
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
