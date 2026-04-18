//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_push_subscription_request_subscription_keys.g.dart';

/// CreatePushSubscriptionRequestSubscriptionKeys
///
/// Properties:
/// * [p256dh] - User agent public key. Base64 encoded string of a public key from a ECDH keypair using the `prime256v1` curve.
/// * [auth] - Auth secret. Base64 encoded string of 16 bytes of random data.
@BuiltValue()
abstract class CreatePushSubscriptionRequestSubscriptionKeys
    implements
        Built<CreatePushSubscriptionRequestSubscriptionKeys,
            CreatePushSubscriptionRequestSubscriptionKeysBuilder> {
  /// User agent public key. Base64 encoded string of a public key from a ECDH keypair using the `prime256v1` curve.
  @BuiltValueField(wireName: r'p256dh')
  String? get p256dh;

  /// Auth secret. Base64 encoded string of 16 bytes of random data.
  @BuiltValueField(wireName: r'auth')
  String? get auth;

  CreatePushSubscriptionRequestSubscriptionKeys._();

  factory CreatePushSubscriptionRequestSubscriptionKeys(
          [void updates(
              CreatePushSubscriptionRequestSubscriptionKeysBuilder b)]) =
      _$CreatePushSubscriptionRequestSubscriptionKeys;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          CreatePushSubscriptionRequestSubscriptionKeysBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePushSubscriptionRequestSubscriptionKeys>
      get serializer =>
          _$CreatePushSubscriptionRequestSubscriptionKeysSerializer();
}

class _$CreatePushSubscriptionRequestSubscriptionKeysSerializer
    implements
        PrimitiveSerializer<CreatePushSubscriptionRequestSubscriptionKeys> {
  @override
  final Iterable<Type> types = const [
    CreatePushSubscriptionRequestSubscriptionKeys,
    _$CreatePushSubscriptionRequestSubscriptionKeys
  ];

  @override
  final String wireName = r'CreatePushSubscriptionRequestSubscriptionKeys';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePushSubscriptionRequestSubscriptionKeys object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.p256dh != null) {
      yield r'p256dh';
      yield serializers.serialize(
        object.p256dh,
        specifiedType: const FullType(String),
      );
    }
    if (object.auth != null) {
      yield r'auth';
      yield serializers.serialize(
        object.auth,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreatePushSubscriptionRequestSubscriptionKeys object, {
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
    required CreatePushSubscriptionRequestSubscriptionKeysBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'p256dh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.p256dh = valueDes;
          break;
        case r'auth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.auth = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreatePushSubscriptionRequestSubscriptionKeys deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePushSubscriptionRequestSubscriptionKeysBuilder();
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
