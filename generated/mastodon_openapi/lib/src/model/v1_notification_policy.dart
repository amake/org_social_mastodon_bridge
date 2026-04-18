//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/notification_policy_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_notification_policy.g.dart';

/// Represents the notification filtering policy of the user.
///
/// Properties:
/// * [filterNewAccounts] - Whether to filter notifications from accounts created in the past 30 days.
/// * [filterNotFollowers] - Whether to filter notifications from accounts that are not following the user.
/// * [filterNotFollowing] - Whether to filter notifications from accounts the user is not following.
/// * [filterPrivateMentions] - Whether to filter notifications from private mentions. Replies to private mentions initiated by the user, as well as accounts the user follows, are never filtered.
/// * [summary]
@BuiltValue()
abstract class V1NotificationPolicy
    implements Built<V1NotificationPolicy, V1NotificationPolicyBuilder> {
  /// Whether to filter notifications from accounts created in the past 30 days.
  @BuiltValueField(wireName: r'filter_new_accounts')
  bool get filterNewAccounts;

  /// Whether to filter notifications from accounts that are not following the user.
  @BuiltValueField(wireName: r'filter_not_followers')
  bool get filterNotFollowers;

  /// Whether to filter notifications from accounts the user is not following.
  @BuiltValueField(wireName: r'filter_not_following')
  bool get filterNotFollowing;

  /// Whether to filter notifications from private mentions. Replies to private mentions initiated by the user, as well as accounts the user follows, are never filtered.
  @BuiltValueField(wireName: r'filter_private_mentions')
  bool get filterPrivateMentions;

  @BuiltValueField(wireName: r'summary')
  NotificationPolicySummary get summary;

  V1NotificationPolicy._();

  factory V1NotificationPolicy([void updates(V1NotificationPolicyBuilder b)]) =
      _$V1NotificationPolicy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1NotificationPolicyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1NotificationPolicy> get serializer =>
      _$V1NotificationPolicySerializer();
}

class _$V1NotificationPolicySerializer
    implements PrimitiveSerializer<V1NotificationPolicy> {
  @override
  final Iterable<Type> types = const [
    V1NotificationPolicy,
    _$V1NotificationPolicy
  ];

  @override
  final String wireName = r'V1NotificationPolicy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1NotificationPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'filter_new_accounts';
    yield serializers.serialize(
      object.filterNewAccounts,
      specifiedType: const FullType(bool),
    );
    yield r'filter_not_followers';
    yield serializers.serialize(
      object.filterNotFollowers,
      specifiedType: const FullType(bool),
    );
    yield r'filter_not_following';
    yield serializers.serialize(
      object.filterNotFollowing,
      specifiedType: const FullType(bool),
    );
    yield r'filter_private_mentions';
    yield serializers.serialize(
      object.filterPrivateMentions,
      specifiedType: const FullType(bool),
    );
    yield r'summary';
    yield serializers.serialize(
      object.summary,
      specifiedType: const FullType(NotificationPolicySummary),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1NotificationPolicy object, {
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
    required V1NotificationPolicyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'filter_new_accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.filterNewAccounts = valueDes;
          break;
        case r'filter_not_followers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.filterNotFollowers = valueDes;
          break;
        case r'filter_not_following':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.filterNotFollowing = valueDes;
          break;
        case r'filter_private_mentions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.filterPrivateMentions = valueDes;
          break;
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationPolicySummary),
          ) as NotificationPolicySummary;
          result.summary.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1NotificationPolicy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1NotificationPolicyBuilder();
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
