//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/put_push_subscription_request_data_alerts.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'put_push_subscription_request_data.g.dart';

/// Object containing properties
///
/// Properties:
/// * [alerts]
@BuiltValue()
abstract class PutPushSubscriptionRequestData
    implements
        Built<PutPushSubscriptionRequestData,
            PutPushSubscriptionRequestDataBuilder> {
  @BuiltValueField(wireName: r'alerts')
  PutPushSubscriptionRequestDataAlerts? get alerts;

  PutPushSubscriptionRequestData._();

  factory PutPushSubscriptionRequestData(
          [void updates(PutPushSubscriptionRequestDataBuilder b)]) =
      _$PutPushSubscriptionRequestData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PutPushSubscriptionRequestDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PutPushSubscriptionRequestData> get serializer =>
      _$PutPushSubscriptionRequestDataSerializer();
}

class _$PutPushSubscriptionRequestDataSerializer
    implements PrimitiveSerializer<PutPushSubscriptionRequestData> {
  @override
  final Iterable<Type> types = const [
    PutPushSubscriptionRequestData,
    _$PutPushSubscriptionRequestData
  ];

  @override
  final String wireName = r'PutPushSubscriptionRequestData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PutPushSubscriptionRequestData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.alerts != null) {
      yield r'alerts';
      yield serializers.serialize(
        object.alerts,
        specifiedType: const FullType(PutPushSubscriptionRequestDataAlerts),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PutPushSubscriptionRequestData object, {
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
    required PutPushSubscriptionRequestDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'alerts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PutPushSubscriptionRequestDataAlerts),
          ) as PutPushSubscriptionRequestDataAlerts;
          result.alerts.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PutPushSubscriptionRequestData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutPushSubscriptionRequestDataBuilder();
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
