//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_filter_statuses_v2_request.g.dart';

/// PostFilterStatusesV2Request
///
/// Properties:
/// * [statusId] - The status ID to be added to the filter group.
@BuiltValue()
abstract class PostFilterStatusesV2Request
    implements
        Built<PostFilterStatusesV2Request, PostFilterStatusesV2RequestBuilder> {
  /// The status ID to be added to the filter group.
  @BuiltValueField(wireName: r'status_id')
  String get statusId;

  PostFilterStatusesV2Request._();

  factory PostFilterStatusesV2Request(
          [void updates(PostFilterStatusesV2RequestBuilder b)]) =
      _$PostFilterStatusesV2Request;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostFilterStatusesV2RequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostFilterStatusesV2Request> get serializer =>
      _$PostFilterStatusesV2RequestSerializer();
}

class _$PostFilterStatusesV2RequestSerializer
    implements PrimitiveSerializer<PostFilterStatusesV2Request> {
  @override
  final Iterable<Type> types = const [
    PostFilterStatusesV2Request,
    _$PostFilterStatusesV2Request
  ];

  @override
  final String wireName = r'PostFilterStatusesV2Request';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostFilterStatusesV2Request object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status_id';
    yield serializers.serialize(
      object.statusId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostFilterStatusesV2Request object, {
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
    required PostFilterStatusesV2RequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statusId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostFilterStatusesV2Request deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostFilterStatusesV2RequestBuilder();
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
