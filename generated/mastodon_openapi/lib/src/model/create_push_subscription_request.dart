//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/create_push_subscription_request_subscription.dart';
import 'package:mastodon_openapi/src/model/create_push_subscription_request_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_push_subscription_request.g.dart';

/// CreatePushSubscriptionRequest
///
/// Properties:
/// * [subscription]
/// * [data]
@BuiltValue()
abstract class CreatePushSubscriptionRequest
    implements
        Built<CreatePushSubscriptionRequest,
            CreatePushSubscriptionRequestBuilder> {
  @BuiltValueField(wireName: r'subscription')
  CreatePushSubscriptionRequestSubscription get subscription;

  @BuiltValueField(wireName: r'data')
  CreatePushSubscriptionRequestData? get data;

  CreatePushSubscriptionRequest._();

  factory CreatePushSubscriptionRequest(
          [void updates(CreatePushSubscriptionRequestBuilder b)]) =
      _$CreatePushSubscriptionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePushSubscriptionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePushSubscriptionRequest> get serializer =>
      _$CreatePushSubscriptionRequestSerializer();
}

class _$CreatePushSubscriptionRequestSerializer
    implements PrimitiveSerializer<CreatePushSubscriptionRequest> {
  @override
  final Iterable<Type> types = const [
    CreatePushSubscriptionRequest,
    _$CreatePushSubscriptionRequest
  ];

  @override
  final String wireName = r'CreatePushSubscriptionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePushSubscriptionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'subscription';
    yield serializers.serialize(
      object.subscription,
      specifiedType: const FullType(CreatePushSubscriptionRequestSubscription),
    );
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(CreatePushSubscriptionRequestData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreatePushSubscriptionRequest object, {
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
    required CreatePushSubscriptionRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'subscription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(CreatePushSubscriptionRequestSubscription),
          ) as CreatePushSubscriptionRequestSubscription;
          result.subscription.replace(valueDes);
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreatePushSubscriptionRequestData),
          ) as CreatePushSubscriptionRequestData;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreatePushSubscriptionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePushSubscriptionRequestBuilder();
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
