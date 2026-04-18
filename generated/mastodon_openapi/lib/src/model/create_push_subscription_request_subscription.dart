//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/create_push_subscription_request_subscription_keys.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_push_subscription_request_subscription.g.dart';

/// Object containing properties
///
/// Properties:
/// * [keys]
/// * [endpoint] - The endpoint URL that is called when a notification event occurs.
/// * [standard] - Follow standardized webpush (RFC8030+RFC8291+RFC8292) ? Else follow legacy webpush (unpublished version, 4th draft of RFC8291 and 1st draft of RFC8292). Defaults to false.
@BuiltValue()
abstract class CreatePushSubscriptionRequestSubscription
    implements
        Built<CreatePushSubscriptionRequestSubscription,
            CreatePushSubscriptionRequestSubscriptionBuilder> {
  @BuiltValueField(wireName: r'keys')
  CreatePushSubscriptionRequestSubscriptionKeys? get keys;

  /// The endpoint URL that is called when a notification event occurs.
  @BuiltValueField(wireName: r'endpoint')
  String? get endpoint;

  /// Follow standardized webpush (RFC8030+RFC8291+RFC8292) ? Else follow legacy webpush (unpublished version, 4th draft of RFC8291 and 1st draft of RFC8292). Defaults to false.
  @BuiltValueField(wireName: r'standard')
  bool? get standard;

  CreatePushSubscriptionRequestSubscription._();

  factory CreatePushSubscriptionRequestSubscription(
          [void updates(CreatePushSubscriptionRequestSubscriptionBuilder b)]) =
      _$CreatePushSubscriptionRequestSubscription;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePushSubscriptionRequestSubscriptionBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePushSubscriptionRequestSubscription> get serializer =>
      _$CreatePushSubscriptionRequestSubscriptionSerializer();
}

class _$CreatePushSubscriptionRequestSubscriptionSerializer
    implements PrimitiveSerializer<CreatePushSubscriptionRequestSubscription> {
  @override
  final Iterable<Type> types = const [
    CreatePushSubscriptionRequestSubscription,
    _$CreatePushSubscriptionRequestSubscription
  ];

  @override
  final String wireName = r'CreatePushSubscriptionRequestSubscription';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePushSubscriptionRequestSubscription object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.keys != null) {
      yield r'keys';
      yield serializers.serialize(
        object.keys,
        specifiedType:
            const FullType(CreatePushSubscriptionRequestSubscriptionKeys),
      );
    }
    if (object.endpoint != null) {
      yield r'endpoint';
      yield serializers.serialize(
        object.endpoint,
        specifiedType: const FullType(String),
      );
    }
    if (object.standard != null) {
      yield r'standard';
      yield serializers.serialize(
        object.standard,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreatePushSubscriptionRequestSubscription object, {
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
    required CreatePushSubscriptionRequestSubscriptionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'keys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(CreatePushSubscriptionRequestSubscriptionKeys),
          ) as CreatePushSubscriptionRequestSubscriptionKeys;
          result.keys.replace(valueDes);
          break;
        case r'endpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endpoint = valueDes;
          break;
        case r'standard':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
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
  CreatePushSubscriptionRequestSubscription deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePushSubscriptionRequestSubscriptionBuilder();
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
