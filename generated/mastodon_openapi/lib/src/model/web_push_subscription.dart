//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/web_push_subscription_alerts.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'web_push_subscription.g.dart';

/// Represents a subscription to the push streaming server.
///
/// Properties:
/// * [alerts]
/// * [endpoint] - Where push alerts will be sent to.
/// * [id] - The ID of the Web Push subscription in the database.
/// * [serverKey] - The streaming server's VAPID key.
/// * [standard] - If the push messages follow the standardized specifications (RFC8030+RFC8291+RFC8292). Else they follow a legacy version of the specifications (4th draft of RFC8291 and 1st draft of RFC8292).
@BuiltValue()
abstract class WebPushSubscription
    implements Built<WebPushSubscription, WebPushSubscriptionBuilder> {
  @BuiltValueField(wireName: r'alerts')
  WebPushSubscriptionAlerts get alerts;

  /// Where push alerts will be sent to.
  @BuiltValueField(wireName: r'endpoint')
  String get endpoint;

  /// The ID of the Web Push subscription in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The streaming server's VAPID key.
  @BuiltValueField(wireName: r'server_key')
  String get serverKey;

  /// If the push messages follow the standardized specifications (RFC8030+RFC8291+RFC8292). Else they follow a legacy version of the specifications (4th draft of RFC8291 and 1st draft of RFC8292).
  @BuiltValueField(wireName: r'standard')
  bool? get standard;

  WebPushSubscription._();

  factory WebPushSubscription([void updates(WebPushSubscriptionBuilder b)]) =
      _$WebPushSubscription;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebPushSubscriptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebPushSubscription> get serializer =>
      _$WebPushSubscriptionSerializer();
}

class _$WebPushSubscriptionSerializer
    implements PrimitiveSerializer<WebPushSubscription> {
  @override
  final Iterable<Type> types = const [
    WebPushSubscription,
    _$WebPushSubscription
  ];

  @override
  final String wireName = r'WebPushSubscription';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebPushSubscription object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'alerts';
    yield serializers.serialize(
      object.alerts,
      specifiedType: const FullType(WebPushSubscriptionAlerts),
    );
    yield r'endpoint';
    yield serializers.serialize(
      object.endpoint,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'server_key';
    yield serializers.serialize(
      object.serverKey,
      specifiedType: const FullType(String),
    );
    if (object.standard != null) {
      yield r'standard';
      yield serializers.serialize(
        object.standard,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WebPushSubscription object, {
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
    required WebPushSubscriptionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'alerts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WebPushSubscriptionAlerts),
          ) as WebPushSubscriptionAlerts;
          result.alerts.replace(valueDes);
          break;
        case r'endpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endpoint = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'server_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serverKey = valueDes;
          break;
        case r'standard':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.standard = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebPushSubscription deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebPushSubscriptionBuilder();
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
