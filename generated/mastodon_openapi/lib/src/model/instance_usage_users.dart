//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_usage_users.g.dart';

/// Usage data related to users on this server.
///
/// Properties:
/// * [activeMonth] - The number of active users in the past 4 weeks. This is set to zero for server with `configuration[limited_federation]`.
@BuiltValue()
abstract class InstanceUsageUsers
    implements Built<InstanceUsageUsers, InstanceUsageUsersBuilder> {
  /// The number of active users in the past 4 weeks. This is set to zero for server with `configuration[limited_federation]`.
  @BuiltValueField(wireName: r'active_month')
  int get activeMonth;

  InstanceUsageUsers._();

  factory InstanceUsageUsers([void updates(InstanceUsageUsersBuilder b)]) =
      _$InstanceUsageUsers;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstanceUsageUsersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceUsageUsers> get serializer =>
      _$InstanceUsageUsersSerializer();
}

class _$InstanceUsageUsersSerializer
    implements PrimitiveSerializer<InstanceUsageUsers> {
  @override
  final Iterable<Type> types = const [InstanceUsageUsers, _$InstanceUsageUsers];

  @override
  final String wireName = r'InstanceUsageUsers';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceUsageUsers object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'active_month';
    yield serializers.serialize(
      object.activeMonth,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceUsageUsers object, {
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
    required InstanceUsageUsersBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'active_month':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.activeMonth = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InstanceUsageUsers deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceUsageUsersBuilder();
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
