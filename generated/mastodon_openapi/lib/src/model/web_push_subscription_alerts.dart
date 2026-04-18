//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'web_push_subscription_alerts.g.dart';

/// Which alerts should be delivered to the `endpoint`.
///
/// Properties:
/// * [adminPeriodReport] - Receive a push notification when a new report has been filed?
/// * [adminPeriodSignUp] - Receive a push notification when a new user has signed up?
/// * [favourite] - Receive a push notification when a status you created has been favourited by someone else?
/// * [follow] - Receive a push notification when someone has followed you?
/// * [followRequest] - Receive a push notification when someone has requested to followed you?
/// * [mention] - Receive a push notification when someone else has mentioned you in a status?
/// * [poll] - Receive a push notification when a poll you voted in or created has ended?
/// * [reblog] - Receive a push notification when a status you created has been boosted by someone else?
/// * [status] - Receive a push notification when a subscribed account posts a status?
/// * [updateValue] - Receive a push notification when a status you interacted with has been edited?
@BuiltValue()
abstract class WebPushSubscriptionAlerts
    implements
        Built<WebPushSubscriptionAlerts, WebPushSubscriptionAlertsBuilder> {
  /// Receive a push notification when a new report has been filed?
  @BuiltValueField(wireName: r'admin.report')
  bool get adminPeriodReport;

  /// Receive a push notification when a new user has signed up?
  @BuiltValueField(wireName: r'admin.sign_up')
  bool get adminPeriodSignUp;

  /// Receive a push notification when a status you created has been favourited by someone else?
  @BuiltValueField(wireName: r'favourite')
  bool get favourite;

  /// Receive a push notification when someone has followed you?
  @BuiltValueField(wireName: r'follow')
  bool get follow;

  /// Receive a push notification when someone has requested to followed you?
  @BuiltValueField(wireName: r'follow_request')
  bool get followRequest;

  /// Receive a push notification when someone else has mentioned you in a status?
  @BuiltValueField(wireName: r'mention')
  bool get mention;

  /// Receive a push notification when a poll you voted in or created has ended?
  @BuiltValueField(wireName: r'poll')
  bool get poll;

  /// Receive a push notification when a status you created has been boosted by someone else?
  @BuiltValueField(wireName: r'reblog')
  bool get reblog;

  /// Receive a push notification when a subscribed account posts a status?
  @BuiltValueField(wireName: r'status')
  bool get status;

  /// Receive a push notification when a status you interacted with has been edited?
  @BuiltValueField(wireName: r'update')
  bool get updateValue;

  WebPushSubscriptionAlerts._();

  factory WebPushSubscriptionAlerts(
          [void updates(WebPushSubscriptionAlertsBuilder b)]) =
      _$WebPushSubscriptionAlerts;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebPushSubscriptionAlertsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebPushSubscriptionAlerts> get serializer =>
      _$WebPushSubscriptionAlertsSerializer();
}

class _$WebPushSubscriptionAlertsSerializer
    implements PrimitiveSerializer<WebPushSubscriptionAlerts> {
  @override
  final Iterable<Type> types = const [
    WebPushSubscriptionAlerts,
    _$WebPushSubscriptionAlerts
  ];

  @override
  final String wireName = r'WebPushSubscriptionAlerts';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebPushSubscriptionAlerts object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'admin.report';
    yield serializers.serialize(
      object.adminPeriodReport,
      specifiedType: const FullType(bool),
    );
    yield r'admin.sign_up';
    yield serializers.serialize(
      object.adminPeriodSignUp,
      specifiedType: const FullType(bool),
    );
    yield r'favourite';
    yield serializers.serialize(
      object.favourite,
      specifiedType: const FullType(bool),
    );
    yield r'follow';
    yield serializers.serialize(
      object.follow,
      specifiedType: const FullType(bool),
    );
    yield r'follow_request';
    yield serializers.serialize(
      object.followRequest,
      specifiedType: const FullType(bool),
    );
    yield r'mention';
    yield serializers.serialize(
      object.mention,
      specifiedType: const FullType(bool),
    );
    yield r'poll';
    yield serializers.serialize(
      object.poll,
      specifiedType: const FullType(bool),
    );
    yield r'reblog';
    yield serializers.serialize(
      object.reblog,
      specifiedType: const FullType(bool),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(bool),
    );
    yield r'update';
    yield serializers.serialize(
      object.updateValue,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WebPushSubscriptionAlerts object, {
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
    required WebPushSubscriptionAlertsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'admin.report':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.adminPeriodReport = valueDes;
          break;
        case r'admin.sign_up':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.adminPeriodSignUp = valueDes;
          break;
        case r'favourite':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.favourite = valueDes;
          break;
        case r'follow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.follow = valueDes;
          break;
        case r'follow_request':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.followRequest = valueDes;
          break;
        case r'mention':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.mention = valueDes;
          break;
        case r'poll':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.poll = valueDes;
          break;
        case r'reblog':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.reblog = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.status = valueDes;
          break;
        case r'update':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.updateValue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebPushSubscriptionAlerts deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebPushSubscriptionAlertsBuilder();
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
