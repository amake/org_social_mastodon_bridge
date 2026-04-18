//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_status_translate_request.g.dart';

/// PostStatusTranslateRequest
///
/// Properties:
/// * [lang] - String (ISO 639-1 language code). The status content will be translated into this language. Defaults to the user's current locale (which in turn falls back to server default).
@BuiltValue()
abstract class PostStatusTranslateRequest
    implements
        Built<PostStatusTranslateRequest, PostStatusTranslateRequestBuilder> {
  /// String (ISO 639-1 language code). The status content will be translated into this language. Defaults to the user's current locale (which in turn falls back to server default).
  @BuiltValueField(wireName: r'lang')
  String? get lang;

  PostStatusTranslateRequest._();

  factory PostStatusTranslateRequest(
          [void updates(PostStatusTranslateRequestBuilder b)]) =
      _$PostStatusTranslateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostStatusTranslateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostStatusTranslateRequest> get serializer =>
      _$PostStatusTranslateRequestSerializer();
}

class _$PostStatusTranslateRequestSerializer
    implements PrimitiveSerializer<PostStatusTranslateRequest> {
  @override
  final Iterable<Type> types = const [
    PostStatusTranslateRequest,
    _$PostStatusTranslateRequest
  ];

  @override
  final String wireName = r'PostStatusTranslateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostStatusTranslateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.lang != null) {
      yield r'lang';
      yield serializers.serialize(
        object.lang,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostStatusTranslateRequest object, {
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
    required PostStatusTranslateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lang':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lang = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostStatusTranslateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostStatusTranslateRequestBuilder();
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
