//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/o_auth_scope.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application.g.dart';

/// Represents an application that interfaces with the REST API, for example to access account information or post statuses.
///
/// Properties:
/// * [id] - The numeric ID of the application.
/// * [name] - The name of the application.
/// * [redirectUri] - The registered redirection URI(s) for the application stored as a single string. Multiple URIs are separated by whitespace characters. May contain `\\n` characters when multiple redirect URIs are registered.
/// * [redirectUris] - The registered redirection URI(s) for the application.
/// * [scopes] - Array of OAuth scopes
/// * [vapidKey] - Used for Push Streaming API. Returned with [POST /api/v1/apps]({{< relref \"methods/apps#create\" >}}). Equivalent to [WebPushSubscription#server_key]({{< relref \"entities/WebPushSubscription#server_key\" >}}) and [Instance#vapid_public_key]({{< relref \"entities/Instance#vapid_public_key\" >}})
/// * [website] - The website associated with the application.
@BuiltValue()
abstract class Application implements Built<Application, ApplicationBuilder> {
  /// The numeric ID of the application.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The name of the application.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// The registered redirection URI(s) for the application stored as a single string. Multiple URIs are separated by whitespace characters. May contain `\\n` characters when multiple redirect URIs are registered.
  @Deprecated('redirectUri has been deprecated')
  @BuiltValueField(wireName: r'redirect_uri')
  String? get redirectUri;

  /// The registered redirection URI(s) for the application.
  @BuiltValueField(wireName: r'redirect_uris')
  BuiltList<String>? get redirectUris;

  /// Array of OAuth scopes
  @BuiltValueField(wireName: r'scopes')
  BuiltList<OAuthScope>? get scopes;

  /// Used for Push Streaming API. Returned with [POST /api/v1/apps]({{< relref \"methods/apps#create\" >}}). Equivalent to [WebPushSubscription#server_key]({{< relref \"entities/WebPushSubscription#server_key\" >}}) and [Instance#vapid_public_key]({{< relref \"entities/Instance#vapid_public_key\" >}})
  @Deprecated('vapidKey has been deprecated')
  @BuiltValueField(wireName: r'vapid_key')
  String? get vapidKey;

  /// The website associated with the application.
  @BuiltValueField(wireName: r'website')
  String? get website;

  Application._();

  factory Application([void updates(ApplicationBuilder b)]) = _$Application;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApplicationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Application> get serializer => _$ApplicationSerializer();
}

class _$ApplicationSerializer implements PrimitiveSerializer<Application> {
  @override
  final Iterable<Type> types = const [Application, _$Application];

  @override
  final String wireName = r'Application';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Application object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.redirectUri != null) {
      yield r'redirect_uri';
      yield serializers.serialize(
        object.redirectUri,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.redirectUris != null) {
      yield r'redirect_uris';
      yield serializers.serialize(
        object.redirectUris,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.scopes != null) {
      yield r'scopes';
      yield serializers.serialize(
        object.scopes,
        specifiedType: const FullType(BuiltList, [FullType(OAuthScope)]),
      );
    }
    if (object.vapidKey != null) {
      yield r'vapid_key';
      yield serializers.serialize(
        object.vapidKey,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.website != null) {
      yield r'website';
      yield serializers.serialize(
        object.website,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Application object, {
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
    required ApplicationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'redirect_uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.redirectUri = valueDes;
          break;
        case r'redirect_uris':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.redirectUris.replace(valueDes);
          break;
        case r'scopes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OAuthScope)]),
          ) as BuiltList<OAuthScope>;
          result.scopes.replace(valueDes);
          break;
        case r'vapid_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.vapidKey = valueDes;
          break;
        case r'website':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.website = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Application deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApplicationBuilder();
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
