//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_account_mute_request.g.dart';

/// PostAccountMuteRequest
///
/// Properties:
/// * [duration] - How long the mute should last, in seconds. Defaults to 0 (indefinite).
/// * [notifications] - Mute notifications in addition to statuses? Defaults to true.
@BuiltValue()
abstract class PostAccountMuteRequest
    implements Built<PostAccountMuteRequest, PostAccountMuteRequestBuilder> {
  /// How long the mute should last, in seconds. Defaults to 0 (indefinite).
  @BuiltValueField(wireName: r'duration')
  int? get duration;

  /// Mute notifications in addition to statuses? Defaults to true.
  @BuiltValueField(wireName: r'notifications')
  bool? get notifications;

  PostAccountMuteRequest._();

  factory PostAccountMuteRequest(
          [void updates(PostAccountMuteRequestBuilder b)]) =
      _$PostAccountMuteRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostAccountMuteRequestBuilder b) => b
    ..duration = 0
    ..notifications = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostAccountMuteRequest> get serializer =>
      _$PostAccountMuteRequestSerializer();
}

class _$PostAccountMuteRequestSerializer
    implements PrimitiveSerializer<PostAccountMuteRequest> {
  @override
  final Iterable<Type> types = const [
    PostAccountMuteRequest,
    _$PostAccountMuteRequest
  ];

  @override
  final String wireName = r'PostAccountMuteRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostAccountMuteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(int),
      );
    }
    if (object.notifications != null) {
      yield r'notifications';
      yield serializers.serialize(
        object.notifications,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostAccountMuteRequest object, {
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
    required PostAccountMuteRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.duration = valueDes;
          break;
        case r'notifications':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.notifications = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostAccountMuteRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostAccountMuteRequestBuilder();
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
