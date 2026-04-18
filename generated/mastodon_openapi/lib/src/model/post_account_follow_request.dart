//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_account_follow_request.g.dart';

/// PostAccountFollowRequest
///
/// Properties:
/// * [languages] - Array of String (ISO 639-1 language two-letter code). Filter received statuses for these languages. If not provided, you will receive this account's posts in all languages.
/// * [notify] - Receive notifications when this account posts a status? Defaults to false.
/// * [reblogs] - Receive this account's reblogs in home timeline? Defaults to true.
@BuiltValue()
abstract class PostAccountFollowRequest
    implements
        Built<PostAccountFollowRequest, PostAccountFollowRequestBuilder> {
  /// Array of String (ISO 639-1 language two-letter code). Filter received statuses for these languages. If not provided, you will receive this account's posts in all languages.
  @BuiltValueField(wireName: r'languages')
  BuiltList<String>? get languages;

  /// Receive notifications when this account posts a status? Defaults to false.
  @BuiltValueField(wireName: r'notify')
  bool? get notify;

  /// Receive this account's reblogs in home timeline? Defaults to true.
  @BuiltValueField(wireName: r'reblogs')
  bool? get reblogs;

  PostAccountFollowRequest._();

  factory PostAccountFollowRequest(
          [void updates(PostAccountFollowRequestBuilder b)]) =
      _$PostAccountFollowRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostAccountFollowRequestBuilder b) => b
    ..notify = false
    ..reblogs = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostAccountFollowRequest> get serializer =>
      _$PostAccountFollowRequestSerializer();
}

class _$PostAccountFollowRequestSerializer
    implements PrimitiveSerializer<PostAccountFollowRequest> {
  @override
  final Iterable<Type> types = const [
    PostAccountFollowRequest,
    _$PostAccountFollowRequest
  ];

  @override
  final String wireName = r'PostAccountFollowRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostAccountFollowRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.notify != null) {
      yield r'notify';
      yield serializers.serialize(
        object.notify,
        specifiedType: const FullType(bool),
      );
    }
    if (object.reblogs != null) {
      yield r'reblogs';
      yield serializers.serialize(
        object.reblogs,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostAccountFollowRequest object, {
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
    required PostAccountFollowRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'languages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.languages.replace(valueDes);
          break;
        case r'notify':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.notify = valueDes;
          break;
        case r'reblogs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.reblogs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostAccountFollowRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostAccountFollowRequestBuilder();
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
