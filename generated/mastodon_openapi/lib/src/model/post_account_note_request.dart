//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_account_note_request.g.dart';

/// PostAccountNoteRequest
///
/// Properties:
/// * [comment] - The comment to be set on that user. Provide an empty string or leave out this parameter to clear the currently set note.
@BuiltValue()
abstract class PostAccountNoteRequest
    implements Built<PostAccountNoteRequest, PostAccountNoteRequestBuilder> {
  /// The comment to be set on that user. Provide an empty string or leave out this parameter to clear the currently set note.
  @BuiltValueField(wireName: r'comment')
  String? get comment;

  PostAccountNoteRequest._();

  factory PostAccountNoteRequest(
          [void updates(PostAccountNoteRequestBuilder b)]) =
      _$PostAccountNoteRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostAccountNoteRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostAccountNoteRequest> get serializer =>
      _$PostAccountNoteRequestSerializer();
}

class _$PostAccountNoteRequestSerializer
    implements PrimitiveSerializer<PostAccountNoteRequest> {
  @override
  final Iterable<Type> types = const [
    PostAccountNoteRequest,
    _$PostAccountNoteRequest
  ];

  @override
  final String wireName = r'PostAccountNoteRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostAccountNoteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostAccountNoteRequest object, {
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
    required PostAccountNoteRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.comment = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostAccountNoteRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostAccountNoteRequestBuilder();
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
