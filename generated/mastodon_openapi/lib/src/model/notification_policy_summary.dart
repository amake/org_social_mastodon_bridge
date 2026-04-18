//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_policy_summary.g.dart';

/// Summary of the filtered notifications
///
/// Properties:
/// * [pendingNotificationsCount] - Number of total non-dismissed filtered notifications. May be inaccurate.
/// * [pendingRequestsCount] - Number of different accounts from which the user has non-dismissed filtered notifications. Capped at 100.
@BuiltValue()
abstract class NotificationPolicySummary
    implements
        Built<NotificationPolicySummary, NotificationPolicySummaryBuilder> {
  /// Number of total non-dismissed filtered notifications. May be inaccurate.
  @BuiltValueField(wireName: r'pending_notifications_count')
  int get pendingNotificationsCount;

  /// Number of different accounts from which the user has non-dismissed filtered notifications. Capped at 100.
  @BuiltValueField(wireName: r'pending_requests_count')
  int get pendingRequestsCount;

  NotificationPolicySummary._();

  factory NotificationPolicySummary(
          [void updates(NotificationPolicySummaryBuilder b)]) =
      _$NotificationPolicySummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationPolicySummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationPolicySummary> get serializer =>
      _$NotificationPolicySummarySerializer();
}

class _$NotificationPolicySummarySerializer
    implements PrimitiveSerializer<NotificationPolicySummary> {
  @override
  final Iterable<Type> types = const [
    NotificationPolicySummary,
    _$NotificationPolicySummary
  ];

  @override
  final String wireName = r'NotificationPolicySummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationPolicySummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'pending_notifications_count';
    yield serializers.serialize(
      object.pendingNotificationsCount,
      specifiedType: const FullType(int),
    );
    yield r'pending_requests_count';
    yield serializers.serialize(
      object.pendingRequestsCount,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationPolicySummary object, {
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
    required NotificationPolicySummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pending_notifications_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pendingNotificationsCount = valueDes;
          break;
        case r'pending_requests_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pendingRequestsCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationPolicySummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationPolicySummaryBuilder();
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
