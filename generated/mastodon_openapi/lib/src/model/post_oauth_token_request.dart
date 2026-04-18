//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_oauth_token_request.g.dart';

/// PostOauthTokenRequest
///
/// Properties:
/// * [clientId] - The client ID, obtained during app registration.
/// * [clientSecret] - The client secret, obtained during app registration.
/// * [code] - A user authorization code, obtained from the redirect after an [Authorization request] is approved. May alternatively be displayed to the user if `urn:ietf:wg:oauth:2.0:oob` is used as the `redirect_uri`.
/// * [grantType] - Set equal to `authorization_code` if `code` is provided in order to gain user-level access. Otherwise, set equal to `client_credentials` to obtain app-level access only.
/// * [redirectUri] - Must match the `redirect_uri` used during the [Authorization request].
/// * [codeVerifier] - Required if [PKCE] is used during the authorization request. This is the code verifier which was used to create the `code_challenge` using the `code_challenge_method` for the authorization request.
/// * [scope] - When `grant_type` is set to `client_credentials`, the list of requested OAuth scopes, separated by spaces (or pluses, if using query parameters). Must be a subset of the scopes requested at the time the application was created. If omitted, it defaults to `read`. Has no effect when `grant_type` is `authorization_code`.
@BuiltValue()
abstract class PostOauthTokenRequest
    implements Built<PostOauthTokenRequest, PostOauthTokenRequestBuilder> {
  /// The client ID, obtained during app registration.
  @BuiltValueField(wireName: r'client_id')
  String get clientId;

  /// The client secret, obtained during app registration.
  @BuiltValueField(wireName: r'client_secret')
  String get clientSecret;

  /// A user authorization code, obtained from the redirect after an [Authorization request] is approved. May alternatively be displayed to the user if `urn:ietf:wg:oauth:2.0:oob` is used as the `redirect_uri`.
  @BuiltValueField(wireName: r'code')
  String get code;

  /// Set equal to `authorization_code` if `code` is provided in order to gain user-level access. Otherwise, set equal to `client_credentials` to obtain app-level access only.
  @BuiltValueField(wireName: r'grant_type')
  String get grantType;

  /// Must match the `redirect_uri` used during the [Authorization request].
  @BuiltValueField(wireName: r'redirect_uri')
  String get redirectUri;

  /// Required if [PKCE] is used during the authorization request. This is the code verifier which was used to create the `code_challenge` using the `code_challenge_method` for the authorization request.
  @BuiltValueField(wireName: r'code_verifier')
  String? get codeVerifier;

  /// When `grant_type` is set to `client_credentials`, the list of requested OAuth scopes, separated by spaces (or pluses, if using query parameters). Must be a subset of the scopes requested at the time the application was created. If omitted, it defaults to `read`. Has no effect when `grant_type` is `authorization_code`.
  @BuiltValueField(wireName: r'scope')
  String? get scope;

  PostOauthTokenRequest._();

  factory PostOauthTokenRequest(
      [void updates(PostOauthTokenRequestBuilder b)]) = _$PostOauthTokenRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostOauthTokenRequestBuilder b) => b..scope = 'read';

  @BuiltValueSerializer(custom: true)
  static Serializer<PostOauthTokenRequest> get serializer =>
      _$PostOauthTokenRequestSerializer();
}

class _$PostOauthTokenRequestSerializer
    implements PrimitiveSerializer<PostOauthTokenRequest> {
  @override
  final Iterable<Type> types = const [
    PostOauthTokenRequest,
    _$PostOauthTokenRequest
  ];

  @override
  final String wireName = r'PostOauthTokenRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostOauthTokenRequest object, {
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
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'grant_type';
    yield serializers.serialize(
      object.grantType,
      specifiedType: const FullType(String),
    );
    yield r'redirect_uri';
    yield serializers.serialize(
      object.redirectUri,
      specifiedType: const FullType(String),
    );
    if (object.codeVerifier != null) {
      yield r'code_verifier';
      yield serializers.serialize(
        object.codeVerifier,
        specifiedType: const FullType(String),
      );
    }
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostOauthTokenRequest object, {
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
    required PostOauthTokenRequestBuilder result,
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
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'grant_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.grantType = valueDes;
          break;
        case r'redirect_uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.redirectUri = valueDes;
          break;
        case r'code_verifier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codeVerifier = valueDes;
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.scope = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostOauthTokenRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostOauthTokenRequestBuilder();
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
