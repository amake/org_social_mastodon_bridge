//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/o_auth_scope.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'discover_oauth_server_configuration_response.g.dart';

/// Response schema for Discover OAuth Server Configuration
///
/// Properties:
/// * [appRegistrationEndpoint] - app_registration_endpoint field
/// * [authorizationEndpoint] - authorization_endpoint field
/// * [codeChallengeMethodsSupported] - Array of code_challenge_methods_supported
/// * [grantTypesSupported] - Array of grant_types_supported
/// * [issuer] - issuer field
/// * [responseModesSupported] - Array of response_modes_supported
/// * [responseTypesSupported] - Array of response_types_supported
/// * [revocationEndpoint] - revocation_endpoint field
/// * [scopesSupported] - Array of OAuth scopes
/// * [serviceDocumentation] - service_documentation field
/// * [tokenEndpoint] - token_endpoint field
/// * [tokenEndpointAuthMethodsSupported] - Array of token_endpoint_auth_methods_supported
/// * [userinfoEndpoint] - userinfo_endpoint field
@BuiltValue()
abstract class DiscoverOauthServerConfigurationResponse
    implements
        Built<DiscoverOauthServerConfigurationResponse,
            DiscoverOauthServerConfigurationResponseBuilder> {
  /// app_registration_endpoint field
  @BuiltValueField(wireName: r'app_registration_endpoint')
  String get appRegistrationEndpoint;

  /// authorization_endpoint field
  @BuiltValueField(wireName: r'authorization_endpoint')
  String get authorizationEndpoint;

  /// Array of code_challenge_methods_supported
  @BuiltValueField(wireName: r'code_challenge_methods_supported')
  BuiltList<String> get codeChallengeMethodsSupported;

  /// Array of grant_types_supported
  @BuiltValueField(wireName: r'grant_types_supported')
  BuiltList<String> get grantTypesSupported;

  /// issuer field
  @BuiltValueField(wireName: r'issuer')
  String get issuer;

  /// Array of response_modes_supported
  @BuiltValueField(wireName: r'response_modes_supported')
  BuiltList<String> get responseModesSupported;

  /// Array of response_types_supported
  @BuiltValueField(wireName: r'response_types_supported')
  BuiltList<String> get responseTypesSupported;

  /// revocation_endpoint field
  @BuiltValueField(wireName: r'revocation_endpoint')
  String get revocationEndpoint;

  /// Array of OAuth scopes
  @BuiltValueField(wireName: r'scopes_supported')
  BuiltList<OAuthScope> get scopesSupported;

  /// service_documentation field
  @BuiltValueField(wireName: r'service_documentation')
  String get serviceDocumentation;

  /// token_endpoint field
  @BuiltValueField(wireName: r'token_endpoint')
  String get tokenEndpoint;

  /// Array of token_endpoint_auth_methods_supported
  @BuiltValueField(wireName: r'token_endpoint_auth_methods_supported')
  BuiltList<String> get tokenEndpointAuthMethodsSupported;

  /// userinfo_endpoint field
  @BuiltValueField(wireName: r'userinfo_endpoint')
  String get userinfoEndpoint;

  DiscoverOauthServerConfigurationResponse._();

  factory DiscoverOauthServerConfigurationResponse(
          [void updates(DiscoverOauthServerConfigurationResponseBuilder b)]) =
      _$DiscoverOauthServerConfigurationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DiscoverOauthServerConfigurationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DiscoverOauthServerConfigurationResponse> get serializer =>
      _$DiscoverOauthServerConfigurationResponseSerializer();
}

class _$DiscoverOauthServerConfigurationResponseSerializer
    implements PrimitiveSerializer<DiscoverOauthServerConfigurationResponse> {
  @override
  final Iterable<Type> types = const [
    DiscoverOauthServerConfigurationResponse,
    _$DiscoverOauthServerConfigurationResponse
  ];

  @override
  final String wireName = r'DiscoverOauthServerConfigurationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DiscoverOauthServerConfigurationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'app_registration_endpoint';
    yield serializers.serialize(
      object.appRegistrationEndpoint,
      specifiedType: const FullType(String),
    );
    yield r'authorization_endpoint';
    yield serializers.serialize(
      object.authorizationEndpoint,
      specifiedType: const FullType(String),
    );
    yield r'code_challenge_methods_supported';
    yield serializers.serialize(
      object.codeChallengeMethodsSupported,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'grant_types_supported';
    yield serializers.serialize(
      object.grantTypesSupported,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'issuer';
    yield serializers.serialize(
      object.issuer,
      specifiedType: const FullType(String),
    );
    yield r'response_modes_supported';
    yield serializers.serialize(
      object.responseModesSupported,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'response_types_supported';
    yield serializers.serialize(
      object.responseTypesSupported,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'revocation_endpoint';
    yield serializers.serialize(
      object.revocationEndpoint,
      specifiedType: const FullType(String),
    );
    yield r'scopes_supported';
    yield serializers.serialize(
      object.scopesSupported,
      specifiedType: const FullType(BuiltList, [FullType(OAuthScope)]),
    );
    yield r'service_documentation';
    yield serializers.serialize(
      object.serviceDocumentation,
      specifiedType: const FullType(String),
    );
    yield r'token_endpoint';
    yield serializers.serialize(
      object.tokenEndpoint,
      specifiedType: const FullType(String),
    );
    yield r'token_endpoint_auth_methods_supported';
    yield serializers.serialize(
      object.tokenEndpointAuthMethodsSupported,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'userinfo_endpoint';
    yield serializers.serialize(
      object.userinfoEndpoint,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DiscoverOauthServerConfigurationResponse object, {
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
    required DiscoverOauthServerConfigurationResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'app_registration_endpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.appRegistrationEndpoint = valueDes;
          break;
        case r'authorization_endpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authorizationEndpoint = valueDes;
          break;
        case r'code_challenge_methods_supported':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.codeChallengeMethodsSupported.replace(valueDes);
          break;
        case r'grant_types_supported':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.grantTypesSupported.replace(valueDes);
          break;
        case r'issuer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.issuer = valueDes;
          break;
        case r'response_modes_supported':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.responseModesSupported.replace(valueDes);
          break;
        case r'response_types_supported':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.responseTypesSupported.replace(valueDes);
          break;
        case r'revocation_endpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.revocationEndpoint = valueDes;
          break;
        case r'scopes_supported':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OAuthScope)]),
          ) as BuiltList<OAuthScope>;
          result.scopesSupported.replace(valueDes);
          break;
        case r'service_documentation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serviceDocumentation = valueDes;
          break;
        case r'token_endpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tokenEndpoint = valueDes;
          break;
        case r'token_endpoint_auth_methods_supported':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tokenEndpointAuthMethodsSupported.replace(valueDes);
          break;
        case r'userinfo_endpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userinfoEndpoint = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DiscoverOauthServerConfigurationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DiscoverOauthServerConfigurationResponseBuilder();
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
