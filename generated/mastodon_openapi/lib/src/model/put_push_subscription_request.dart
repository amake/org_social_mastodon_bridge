//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/put_push_subscription_request_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'put_push_subscription_request.g.dart';

/// PutPushSubscriptionRequest
///
/// Properties:
/// * [data]
/// * [policy] - Specify whether to receive push notifications from `all`, `followed`, `follower`, or `none` users.
@BuiltValue()
abstract class PutPushSubscriptionRequest
    implements
        Built<PutPushSubscriptionRequest, PutPushSubscriptionRequestBuilder> {
  @BuiltValueField(wireName: r'data')
  PutPushSubscriptionRequestData? get data;

  /// Specify whether to receive push notifications from `all`, `followed`, `follower`, or `none` users.
  @BuiltValueField(wireName: r'policy')
  String? get policy;

  PutPushSubscriptionRequest._();

  factory PutPushSubscriptionRequest(
          [void updates(PutPushSubscriptionRequestBuilder b)]) =
      _$PutPushSubscriptionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PutPushSubscriptionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PutPushSubscriptionRequest> get serializer =>
      _$PutPushSubscriptionRequestSerializer();
}

class _$PutPushSubscriptionRequestSerializer
    implements PrimitiveSerializer<PutPushSubscriptionRequest> {
  @override
  final Iterable<Type> types = const [
    PutPushSubscriptionRequest,
    _$PutPushSubscriptionRequest
  ];

  @override
  final String wireName = r'PutPushSubscriptionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PutPushSubscriptionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(PutPushSubscriptionRequestData),
      );
    }
    if (object.policy != null) {
      yield r'policy';
      yield serializers.serialize(
        object.policy,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PutPushSubscriptionRequest object, {
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
    required PutPushSubscriptionRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PutPushSubscriptionRequestData),
          ) as PutPushSubscriptionRequestData;
          result.data.replace(valueDes);
          break;
        case r'policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.policy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PutPushSubscriptionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutPushSubscriptionRequestBuilder();
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
