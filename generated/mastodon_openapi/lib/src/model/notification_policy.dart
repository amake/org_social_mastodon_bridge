//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/notification_policy_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_policy.g.dart';

/// Represents the notification filtering policy of the user.
///
/// Properties:
/// * [forLimitedAccounts] - Whether to `accept`, `filter` or `drop` notifications from accounts that were limited by a moderator. `drop` will prevent creation of the notification object altogether (without preventing the underlying activity), `filter` will cause it to be marked as filtered, and `accept` will not affect its processing.
/// * [forNewAccounts] - Whether to `accept`, `filter` or `drop` notifications from accounts created in the past 30 days. `drop` will prevent creation of the notification object altogether (without preventing the underlying activity), `filter` will cause it to be marked as filtered, and `accept` will not affect its processing.
/// * [forNotFollowers] - Whether to `accept`, `filter` or `drop` notifications from accounts that are not following the user. `drop` will prevent creation of the notification object altogether (without preventing the underlying activity), `filter` will cause it to be marked as filtered, and `accept` will not affect its processing.
/// * [forNotFollowing] - Whether to `accept`, `filter` or `drop` notifications from accounts the user is not following. `drop` will prevent creation of the notification object altogether (without preventing the underlying activity), `filter` will cause it to be marked as filtered, and `accept` will not affect its processing.
/// * [forPrivateMentions] - Whether to `accept`, `filter` or `drop` notifications from private mentions. `drop` will prevent creation of the notification object altogether (without preventing the underlying activity), `filter` will cause it to be marked as filtered, and `accept` will not affect its processing. Replies to private mentions initiated by the user, as well as accounts the user follows, are always allowed, regardless of this value.
/// * [summary]
@BuiltValue()
abstract class NotificationPolicy
    implements Built<NotificationPolicy, NotificationPolicyBuilder> {
  /// Whether to `accept`, `filter` or `drop` notifications from accounts that were limited by a moderator. `drop` will prevent creation of the notification object altogether (without preventing the underlying activity), `filter` will cause it to be marked as filtered, and `accept` will not affect its processing.
  @BuiltValueField(wireName: r'for_limited_accounts')
  String get forLimitedAccounts;

  /// Whether to `accept`, `filter` or `drop` notifications from accounts created in the past 30 days. `drop` will prevent creation of the notification object altogether (without preventing the underlying activity), `filter` will cause it to be marked as filtered, and `accept` will not affect its processing.
  @BuiltValueField(wireName: r'for_new_accounts')
  String get forNewAccounts;

  /// Whether to `accept`, `filter` or `drop` notifications from accounts that are not following the user. `drop` will prevent creation of the notification object altogether (without preventing the underlying activity), `filter` will cause it to be marked as filtered, and `accept` will not affect its processing.
  @BuiltValueField(wireName: r'for_not_followers')
  String get forNotFollowers;

  /// Whether to `accept`, `filter` or `drop` notifications from accounts the user is not following. `drop` will prevent creation of the notification object altogether (without preventing the underlying activity), `filter` will cause it to be marked as filtered, and `accept` will not affect its processing.
  @BuiltValueField(wireName: r'for_not_following')
  String get forNotFollowing;

  /// Whether to `accept`, `filter` or `drop` notifications from private mentions. `drop` will prevent creation of the notification object altogether (without preventing the underlying activity), `filter` will cause it to be marked as filtered, and `accept` will not affect its processing. Replies to private mentions initiated by the user, as well as accounts the user follows, are always allowed, regardless of this value.
  @BuiltValueField(wireName: r'for_private_mentions')
  String get forPrivateMentions;

  @BuiltValueField(wireName: r'summary')
  NotificationPolicySummary get summary;

  NotificationPolicy._();

  factory NotificationPolicy([void updates(NotificationPolicyBuilder b)]) =
      _$NotificationPolicy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationPolicyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationPolicy> get serializer =>
      _$NotificationPolicySerializer();
}

class _$NotificationPolicySerializer
    implements PrimitiveSerializer<NotificationPolicy> {
  @override
  final Iterable<Type> types = const [NotificationPolicy, _$NotificationPolicy];

  @override
  final String wireName = r'NotificationPolicy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'for_limited_accounts';
    yield serializers.serialize(
      object.forLimitedAccounts,
      specifiedType: const FullType(String),
    );
    yield r'for_new_accounts';
    yield serializers.serialize(
      object.forNewAccounts,
      specifiedType: const FullType(String),
    );
    yield r'for_not_followers';
    yield serializers.serialize(
      object.forNotFollowers,
      specifiedType: const FullType(String),
    );
    yield r'for_not_following';
    yield serializers.serialize(
      object.forNotFollowing,
      specifiedType: const FullType(String),
    );
    yield r'for_private_mentions';
    yield serializers.serialize(
      object.forPrivateMentions,
      specifiedType: const FullType(String),
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
    NotificationPolicy object, {
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
    required NotificationPolicyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'for_limited_accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.forLimitedAccounts = valueDes;
          break;
        case r'for_new_accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.forNewAccounts = valueDes;
          break;
        case r'for_not_followers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.forNotFollowers = valueDes;
          break;
        case r'for_not_following':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.forNotFollowing = valueDes;
          break;
        case r'for_private_mentions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.forPrivateMentions = valueDes;
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
  NotificationPolicy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationPolicyBuilder();
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
