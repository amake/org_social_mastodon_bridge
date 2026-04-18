//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_instance_urls.g.dart';

/// URLs of interest for clients apps.
///
/// Properties:
/// * [streamingApi] - The Websockets URL for connecting to the streaming API.
@BuiltValue()
abstract class V1InstanceUrls
    implements Built<V1InstanceUrls, V1InstanceUrlsBuilder> {
  /// The Websockets URL for connecting to the streaming API.
  @BuiltValueField(wireName: r'streaming_api')
  String get streamingApi;

  V1InstanceUrls._();

  factory V1InstanceUrls([void updates(V1InstanceUrlsBuilder b)]) =
      _$V1InstanceUrls;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1InstanceUrlsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1InstanceUrls> get serializer =>
      _$V1InstanceUrlsSerializer();
}

class _$V1InstanceUrlsSerializer
    implements PrimitiveSerializer<V1InstanceUrls> {
  @override
  final Iterable<Type> types = const [V1InstanceUrls, _$V1InstanceUrls];

  @override
  final String wireName = r'V1InstanceUrls';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1InstanceUrls object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'streaming_api';
    yield serializers.serialize(
      object.streamingApi,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1InstanceUrls object, {
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
    required V1InstanceUrlsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'streaming_api':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.streamingApi = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1InstanceUrls deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1InstanceUrlsBuilder();
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
