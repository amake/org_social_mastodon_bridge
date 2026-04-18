//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_list_accounts_request.g.dart';

/// DeleteListAccountsRequest
///
/// Properties:
/// * [accountIds] - The accounts that should be removed from the list.
@BuiltValue()
abstract class DeleteListAccountsRequest
    implements
        Built<DeleteListAccountsRequest, DeleteListAccountsRequestBuilder> {
  /// The accounts that should be removed from the list.
  @BuiltValueField(wireName: r'account_ids')
  BuiltList<String> get accountIds;

  DeleteListAccountsRequest._();

  factory DeleteListAccountsRequest(
          [void updates(DeleteListAccountsRequestBuilder b)]) =
      _$DeleteListAccountsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeleteListAccountsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeleteListAccountsRequest> get serializer =>
      _$DeleteListAccountsRequestSerializer();
}

class _$DeleteListAccountsRequestSerializer
    implements PrimitiveSerializer<DeleteListAccountsRequest> {
  @override
  final Iterable<Type> types = const [
    DeleteListAccountsRequest,
    _$DeleteListAccountsRequest
  ];

  @override
  final String wireName = r'DeleteListAccountsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeleteListAccountsRequest object, {
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
    DeleteListAccountsRequest object, {
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
    required DeleteListAccountsRequestBuilder result,
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
  DeleteListAccountsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteListAccountsRequestBuilder();
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
