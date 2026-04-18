//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_list_accounts_request.g.dart';

/// PostListAccountsRequest
///
/// Properties:
/// * [accountIds] - The accounts that should be added to the list.
@BuiltValue()
abstract class PostListAccountsRequest
    implements Built<PostListAccountsRequest, PostListAccountsRequestBuilder> {
  /// The accounts that should be added to the list.
  @BuiltValueField(wireName: r'account_ids')
  BuiltList<String> get accountIds;

  PostListAccountsRequest._();

  factory PostListAccountsRequest(
          [void updates(PostListAccountsRequestBuilder b)]) =
      _$PostListAccountsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostListAccountsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostListAccountsRequest> get serializer =>
      _$PostListAccountsRequestSerializer();
}

class _$PostListAccountsRequestSerializer
    implements PrimitiveSerializer<PostListAccountsRequest> {
  @override
  final Iterable<Type> types = const [
    PostListAccountsRequest,
    _$PostListAccountsRequest
  ];

  @override
  final String wireName = r'PostListAccountsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostListAccountsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account_ids';
    yield serializers.serialize(
      object.accountIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostListAccountsRequest object, {
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
    required PostListAccountsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'account_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.accountIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostListAccountsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostListAccountsRequestBuilder();
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
