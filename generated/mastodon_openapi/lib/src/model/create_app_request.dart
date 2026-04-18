//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_app_request.g.dart';

/// CreateAppRequest
///
/// Properties:
/// * [clientName] - A name for your application
/// * [redirectUris] - Where the user should be redirected after authorization. To display the authorization code to the user instead of redirecting to a web page, use `urn:ietf:wg:oauth:2.0:oob` in this parameter.
/// * [scopes] - Space separated list of scopes. If none is provided, defaults to `read`. See [OAuth Scopes] for a list of possible scopes.
/// * [website] - A URL to the homepage of your app
@BuiltValue()
abstract class CreateAppRequest
    implements Built<CreateAppRequest, CreateAppRequestBuilder> {
  /// A name for your application
  @BuiltValueField(wireName: r'client_name')
  String get clientName;

  /// Where the user should be redirected after authorization. To display the authorization code to the user instead of redirecting to a web page, use `urn:ietf:wg:oauth:2.0:oob` in this parameter.
  @BuiltValueField(wireName: r'redirect_uris')
  BuiltList<String> get redirectUris;

  /// Space separated list of scopes. If none is provided, defaults to `read`. See [OAuth Scopes] for a list of possible scopes.
  @BuiltValueField(wireName: r'scopes')
  String? get scopes;

  /// A URL to the homepage of your app
  @BuiltValueField(wireName: r'website')
  String? get website;

  CreateAppRequest._();

  factory CreateAppRequest([void updates(CreateAppRequestBuilder b)]) =
      _$CreateAppRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateAppRequestBuilder b) => b..scopes = 'read';

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateAppRequest> get serializer =>
      _$CreateAppRequestSerializer();
}

class _$CreateAppRequestSerializer
    implements PrimitiveSerializer<CreateAppRequest> {
  @override
  final Iterable<Type> types = const [CreateAppRequest, _$CreateAppRequest];

  @override
  final String wireName = r'CreateAppRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateAppRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'client_name';
    yield serializers.serialize(
      object.clientName,
      specifiedType: const FullType(String),
    );
    yield r'redirect_uris';
    yield serializers.serialize(
      object.redirectUris,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.scopes != null) {
      yield r'scopes';
      yield serializers.serialize(
        object.scopes,
        specifiedType: const FullType(String),
      );
    }
    if (object.website != null) {
      yield r'website';
      yield serializers.serialize(
        object.website,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateAppRequest object, {
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
    required CreateAppRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'client_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientName = valueDes;
          break;
        case r'redirect_uris':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.redirectUris.replace(valueDes);
          break;
        case r'scopes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.scopes = valueDes;
          break;
        case r'website':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  CreateAppRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateAppRequestBuilder();
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
