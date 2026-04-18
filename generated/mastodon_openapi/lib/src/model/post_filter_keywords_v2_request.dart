//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_filter_keywords_v2_request.g.dart';

/// PostFilterKeywordsV2Request
///
/// Properties:
/// * [keyword] - The keyword to be added to the filter group.
/// * [wholeWord] - Whether the keyword should consider word boundaries.
@BuiltValue()
abstract class PostFilterKeywordsV2Request
    implements
        Built<PostFilterKeywordsV2Request, PostFilterKeywordsV2RequestBuilder> {
  /// The keyword to be added to the filter group.
  @BuiltValueField(wireName: r'keyword')
  String get keyword;

  /// Whether the keyword should consider word boundaries.
  @BuiltValueField(wireName: r'whole_word')
  bool? get wholeWord;

  PostFilterKeywordsV2Request._();

  factory PostFilterKeywordsV2Request(
          [void updates(PostFilterKeywordsV2RequestBuilder b)]) =
      _$PostFilterKeywordsV2Request;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostFilterKeywordsV2RequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostFilterKeywordsV2Request> get serializer =>
      _$PostFilterKeywordsV2RequestSerializer();
}

class _$PostFilterKeywordsV2RequestSerializer
    implements PrimitiveSerializer<PostFilterKeywordsV2Request> {
  @override
  final Iterable<Type> types = const [
    PostFilterKeywordsV2Request,
    _$PostFilterKeywordsV2Request
  ];

  @override
  final String wireName = r'PostFilterKeywordsV2Request';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostFilterKeywordsV2Request object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'keyword';
    yield serializers.serialize(
      object.keyword,
      specifiedType: const FullType(String),
    );
    if (object.wholeWord != null) {
      yield r'whole_word';
      yield serializers.serialize(
        object.wholeWord,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostFilterKeywordsV2Request object, {
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
    required PostFilterKeywordsV2RequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'keyword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyword = valueDes;
          break;
        case r'whole_word':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.wholeWord = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostFilterKeywordsV2Request deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostFilterKeywordsV2RequestBuilder();
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
