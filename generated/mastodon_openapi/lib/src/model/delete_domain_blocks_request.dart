//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_domain_blocks_request.g.dart';

/// DeleteDomainBlocksRequest
///
/// Properties:
/// * [domain] - Domain to unblock.
@BuiltValue()
abstract class DeleteDomainBlocksRequest
    implements
        Built<DeleteDomainBlocksRequest, DeleteDomainBlocksRequestBuilder> {
  /// Domain to unblock.
  @BuiltValueField(wireName: r'domain')
  String get domain;

  DeleteDomainBlocksRequest._();

  factory DeleteDomainBlocksRequest(
          [void updates(DeleteDomainBlocksRequestBuilder b)]) =
      _$DeleteDomainBlocksRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeleteDomainBlocksRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeleteDomainBlocksRequest> get serializer =>
      _$DeleteDomainBlocksRequestSerializer();
}

class _$DeleteDomainBlocksRequestSerializer
    implements PrimitiveSerializer<DeleteDomainBlocksRequest> {
  @override
  final Iterable<Type> types = const [
    DeleteDomainBlocksRequest,
    _$DeleteDomainBlocksRequest
  ];

  @override
  final String wireName = r'DeleteDomainBlocksRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeleteDomainBlocksRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeleteDomainBlocksRequest object, {
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
    required DeleteDomainBlocksRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeleteDomainBlocksRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteDomainBlocksRequestBuilder();
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
