//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_poll_votes_request.g.dart';

/// PostPollVotesRequest
///
/// Properties:
/// * [choices] - Provide your own votes as an index for each option (starting from 0).
@BuiltValue()
abstract class PostPollVotesRequest
    implements Built<PostPollVotesRequest, PostPollVotesRequestBuilder> {
  /// Provide your own votes as an index for each option (starting from 0).
  @BuiltValueField(wireName: r'choices')
  BuiltList<int> get choices;

  PostPollVotesRequest._();

  factory PostPollVotesRequest([void updates(PostPollVotesRequestBuilder b)]) =
      _$PostPollVotesRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostPollVotesRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostPollVotesRequest> get serializer =>
      _$PostPollVotesRequestSerializer();
}

class _$PostPollVotesRequestSerializer
    implements PrimitiveSerializer<PostPollVotesRequest> {
  @override
  final Iterable<Type> types = const [
    PostPollVotesRequest,
    _$PostPollVotesRequest
  ];

  @override
  final String wireName = r'PostPollVotesRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostPollVotesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'choices';
    yield serializers.serialize(
      object.choices,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostPollVotesRequest object, {
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
    required PostPollVotesRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'choices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.choices.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostPollVotesRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostPollVotesRequestBuilder();
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
