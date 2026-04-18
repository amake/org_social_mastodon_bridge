//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/create_push_subscription_request_data_alerts.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_push_subscription_request_data.g.dart';

/// Object containing properties
///
/// Properties:
/// * [alerts]
/// * [policy] - Specify whether to receive push notifications from `all`, `followed`, `follower`, or `none` users.
@BuiltValue()
abstract class CreatePushSubscriptionRequestData
    implements
        Built<CreatePushSubscriptionRequestData,
            CreatePushSubscriptionRequestDataBuilder> {
  @BuiltValueField(wireName: r'alerts')
  CreatePushSubscriptionRequestDataAlerts? get alerts;

  /// Specify whether to receive push notifications from `all`, `followed`, `follower`, or `none` users.
  @BuiltValueField(wireName: r'policy')
  String? get policy;

  CreatePushSubscriptionRequestData._();

  factory CreatePushSubscriptionRequestData(
          [void updates(CreatePushSubscriptionRequestDataBuilder b)]) =
      _$CreatePushSubscriptionRequestData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePushSubscriptionRequestDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePushSubscriptionRequestData> get serializer =>
      _$CreatePushSubscriptionRequestDataSerializer();
}

class _$CreatePushSubscriptionRequestDataSerializer
    implements PrimitiveSerializer<CreatePushSubscriptionRequestData> {
  @override
  final Iterable<Type> types = const [
    CreatePushSubscriptionRequestData,
    _$CreatePushSubscriptionRequestData
  ];

  @override
  final String wireName = r'CreatePushSubscriptionRequestData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePushSubscriptionRequestData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.alerts != null) {
      yield r'alerts';
      yield serializers.serialize(
        object.alerts,
        specifiedType: const FullType(CreatePushSubscriptionRequestDataAlerts),
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
    CreatePushSubscriptionRequestData object, {
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
    required CreatePushSubscriptionRequestDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'alerts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(CreatePushSubscriptionRequestDataAlerts),
          ) as CreatePushSubscriptionRequestDataAlerts;
          result.alerts.replace(valueDes);
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
  CreatePushSubscriptionRequestData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePushSubscriptionRequestDataBuilder();
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
