//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_oauth_revoke_request.g.dart';

/// PostOauthRevokeRequest
///
/// Properties:
/// * [clientId] - The client ID, obtained during app registration.
/// * [clientSecret] - The client secret, obtained during app registration.
/// * [token] - The previously obtained token, to be invalidated.
@BuiltValue()
abstract class PostOauthRevokeRequest
    implements Built<PostOauthRevokeRequest, PostOauthRevokeRequestBuilder> {
  /// The client ID, obtained during app registration.
  @BuiltValueField(wireName: r'client_id')
  String get clientId;

  /// The client secret, obtained during app registration.
  @BuiltValueField(wireName: r'client_secret')
  String get clientSecret;

  /// The previously obtained token, to be invalidated.
  @BuiltValueField(wireName: r'token')
  String get token;

  PostOauthRevokeRequest._();

  factory PostOauthRevokeRequest(
          [void updates(PostOauthRevokeRequestBuilder b)]) =
      _$PostOauthRevokeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostOauthRevokeRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostOauthRevokeRequest> get serializer =>
      _$PostOauthRevokeRequestSerializer();
}

class _$PostOauthRevokeRequestSerializer
    implements PrimitiveSerializer<PostOauthRevokeRequest> {
  @override
  final Iterable<Type> types = const [
    PostOauthRevokeRequest,
    _$PostOauthRevokeRequest
  ];

  @override
  final String wireName = r'PostOauthRevokeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostOauthRevokeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'client_id';
    yield serializers.serialize(
      object.clientId,
      specifiedType: const FullType(String),
    );
    yield r'client_secret';
    yield serializers.serialize(
      object.clientSecret,
      specifiedType: const FullType(String),
    );
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostOauthRevokeRequest object, {
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
    required PostOauthRevokeRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'client_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientId = valueDes;
          break;
        case r'client_secret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientSecret = valueDes;
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostOauthRevokeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostOauthRevokeRequestBuilder();
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
