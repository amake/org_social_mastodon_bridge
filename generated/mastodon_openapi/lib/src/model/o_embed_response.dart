//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'o_embed_response.g.dart';

/// Response schema for Get OEmbed info as JSON
///
/// Properties:
/// * [authorName] - author_name field
/// * [authorUrl] - author_url field
/// * [cacheAge] - cache_age field
/// * [html] - html field
/// * [providerName] - provider_name field
/// * [providerUrl] - provider_url field
/// * [title] - title field
/// * [type] - type field
/// * [version] - version field
/// * [width] - width field
/// * [height] - height field
@BuiltValue()
abstract class OEmbedResponse
    implements Built<OEmbedResponse, OEmbedResponseBuilder> {
  /// author_name field
  @BuiltValueField(wireName: r'author_name')
  String get authorName;

  /// author_url field
  @BuiltValueField(wireName: r'author_url')
  String get authorUrl;

  /// cache_age field
  @BuiltValueField(wireName: r'cache_age')
  int get cacheAge;

  /// html field
  @BuiltValueField(wireName: r'html')
  String get html;

  /// provider_name field
  @BuiltValueField(wireName: r'provider_name')
  String get providerName;

  /// provider_url field
  @BuiltValueField(wireName: r'provider_url')
  String get providerUrl;

  /// title field
  @BuiltValueField(wireName: r'title')
  String get title;

  /// type field
  @BuiltValueField(wireName: r'type')
  String get type;

  /// version field
  @BuiltValueField(wireName: r'version')
  String get version;

  /// width field
  @BuiltValueField(wireName: r'width')
  int get width;

  /// height field
  @BuiltValueField(wireName: r'height')
  String? get height;

  OEmbedResponse._();

  factory OEmbedResponse([void updates(OEmbedResponseBuilder b)]) =
      _$OEmbedResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OEmbedResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OEmbedResponse> get serializer =>
      _$OEmbedResponseSerializer();
}

class _$OEmbedResponseSerializer
    implements PrimitiveSerializer<OEmbedResponse> {
  @override
  final Iterable<Type> types = const [OEmbedResponse, _$OEmbedResponse];

  @override
  final String wireName = r'OEmbedResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OEmbedResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'author_name';
    yield serializers.serialize(
      object.authorName,
      specifiedType: const FullType(String),
    );
    yield r'author_url';
    yield serializers.serialize(
      object.authorUrl,
      specifiedType: const FullType(String),
    );
    yield r'cache_age';
    yield serializers.serialize(
      object.cacheAge,
      specifiedType: const FullType(int),
    );
    yield r'html';
    yield serializers.serialize(
      object.html,
      specifiedType: const FullType(String),
    );
    yield r'provider_name';
    yield serializers.serialize(
      object.providerName,
      specifiedType: const FullType(String),
    );
    yield r'provider_url';
    yield serializers.serialize(
      object.providerUrl,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    yield r'width';
    yield serializers.serialize(
      object.width,
      specifiedType: const FullType(int),
    );
    if (object.height != null) {
      yield r'height';
      yield serializers.serialize(
        object.height,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OEmbedResponse object, {
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
    required OEmbedResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'author_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authorName = valueDes;
          break;
        case r'author_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authorUrl = valueDes;
          break;
        case r'cache_age':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.cacheAge = valueDes;
          break;
        case r'html':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.html = valueDes;
          break;
        case r'provider_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.providerName = valueDes;
          break;
        case r'provider_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.providerUrl = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.width = valueDes;
          break;
        case r'height':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.height = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OEmbedResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OEmbedResponseBuilder();
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
