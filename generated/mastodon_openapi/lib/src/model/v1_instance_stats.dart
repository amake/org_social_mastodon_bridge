//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_instance_stats.g.dart';

/// Statistics about how much information the instance contains.
///
/// Properties:
/// * [domainCount] - Total domains discovered by this instance.
/// * [statusCount] - Total statuses on this instance.
/// * [userCount] - Total users on this instance.
@BuiltValue()
abstract class V1InstanceStats
    implements Built<V1InstanceStats, V1InstanceStatsBuilder> {
  /// Total domains discovered by this instance.
  @BuiltValueField(wireName: r'domain_count')
  int get domainCount;

  /// Total statuses on this instance.
  @BuiltValueField(wireName: r'status_count')
  int get statusCount;

  /// Total users on this instance.
  @BuiltValueField(wireName: r'user_count')
  int get userCount;

  V1InstanceStats._();

  factory V1InstanceStats([void updates(V1InstanceStatsBuilder b)]) =
      _$V1InstanceStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1InstanceStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1InstanceStats> get serializer =>
      _$V1InstanceStatsSerializer();
}

class _$V1InstanceStatsSerializer
    implements PrimitiveSerializer<V1InstanceStats> {
  @override
  final Iterable<Type> types = const [V1InstanceStats, _$V1InstanceStats];

  @override
  final String wireName = r'V1InstanceStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1InstanceStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'domain_count';
    yield serializers.serialize(
      object.domainCount,
      specifiedType: const FullType(int),
    );
    yield r'status_count';
    yield serializers.serialize(
      object.statusCount,
      specifiedType: const FullType(int),
    );
    yield r'user_count';
    yield serializers.serialize(
      object.userCount,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1InstanceStats object, {
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
    required V1InstanceStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'domain_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.domainCount = valueDes;
          break;
        case r'status_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.statusCount = valueDes;
          break;
        case r'user_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.userCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1InstanceStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1InstanceStatsBuilder();
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
