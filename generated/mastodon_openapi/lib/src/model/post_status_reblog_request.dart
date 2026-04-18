//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/status_visibility_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_status_reblog_request.g.dart';

/// PostStatusReblogRequest
///
/// Properties:
/// * [visibility] - String (Enumerable, oneOf `public`, `unlisted`, or `private`). Defaults to public.
@BuiltValue()
abstract class PostStatusReblogRequest
    implements Built<PostStatusReblogRequest, PostStatusReblogRequestBuilder> {
  /// String (Enumerable, oneOf `public`, `unlisted`, or `private`). Defaults to public.
  @BuiltValueField(wireName: r'visibility')
  StatusVisibilityEnum? get visibility;
  // enum visibilityEnum {  public,  unlisted,  private,  direct,  };

  PostStatusReblogRequest._();

  factory PostStatusReblogRequest(
          [void updates(PostStatusReblogRequestBuilder b)]) =
      _$PostStatusReblogRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostStatusReblogRequestBuilder b) =>
      b..visibility = StatusVisibilityEnum.public;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostStatusReblogRequest> get serializer =>
      _$PostStatusReblogRequestSerializer();
}

class _$PostStatusReblogRequestSerializer
    implements PrimitiveSerializer<PostStatusReblogRequest> {
  @override
  final Iterable<Type> types = const [
    PostStatusReblogRequest,
    _$PostStatusReblogRequest
  ];

  @override
  final String wireName = r'PostStatusReblogRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostStatusReblogRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.visibility != null) {
      yield r'visibility';
      yield serializers.serialize(
        object.visibility,
        specifiedType: const FullType(StatusVisibilityEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostStatusReblogRequest object, {
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
    required PostStatusReblogRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'visibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StatusVisibilityEnum),
          ) as StatusVisibilityEnum;
          result.visibility = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostStatusReblogRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostStatusReblogRequestBuilder();
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
