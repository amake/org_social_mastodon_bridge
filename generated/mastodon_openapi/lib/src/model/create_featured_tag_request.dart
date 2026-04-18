//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_featured_tag_request.g.dart';

/// CreateFeaturedTagRequest
///
/// Properties:
/// * [name] - The hashtag to be featured, without the hash sign.
@BuiltValue()
abstract class CreateFeaturedTagRequest
    implements
        Built<CreateFeaturedTagRequest, CreateFeaturedTagRequestBuilder> {
  /// The hashtag to be featured, without the hash sign.
  @BuiltValueField(wireName: r'name')
  String get name;

  CreateFeaturedTagRequest._();

  factory CreateFeaturedTagRequest(
          [void updates(CreateFeaturedTagRequestBuilder b)]) =
      _$CreateFeaturedTagRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateFeaturedTagRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateFeaturedTagRequest> get serializer =>
      _$CreateFeaturedTagRequestSerializer();
}

class _$CreateFeaturedTagRequestSerializer
    implements PrimitiveSerializer<CreateFeaturedTagRequest> {
  @override
  final Iterable<Type> types = const [
    CreateFeaturedTagRequest,
    _$CreateFeaturedTagRequest
  ];

  @override
  final String wireName = r'CreateFeaturedTagRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateFeaturedTagRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateFeaturedTagRequest object, {
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
    required CreateFeaturedTagRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateFeaturedTagRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFeaturedTagRequestBuilder();
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
