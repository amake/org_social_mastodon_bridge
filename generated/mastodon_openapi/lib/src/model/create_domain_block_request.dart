//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_domain_block_request.g.dart';

/// CreateDomainBlockRequest
///
/// Properties:
/// * [domain] - Domain to block.
@BuiltValue()
abstract class CreateDomainBlockRequest
    implements
        Built<CreateDomainBlockRequest, CreateDomainBlockRequestBuilder> {
  /// Domain to block.
  @BuiltValueField(wireName: r'domain')
  String get domain;

  CreateDomainBlockRequest._();

  factory CreateDomainBlockRequest(
          [void updates(CreateDomainBlockRequestBuilder b)]) =
      _$CreateDomainBlockRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateDomainBlockRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateDomainBlockRequest> get serializer =>
      _$CreateDomainBlockRequestSerializer();
}

class _$CreateDomainBlockRequestSerializer
    implements PrimitiveSerializer<CreateDomainBlockRequest> {
  @override
  final Iterable<Type> types = const [
    CreateDomainBlockRequest,
    _$CreateDomainBlockRequest
  ];

  @override
  final String wireName = r'CreateDomainBlockRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateDomainBlockRequest object, {
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
    CreateDomainBlockRequest object, {
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
    required CreateDomainBlockRequestBuilder result,
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
  CreateDomainBlockRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDomainBlockRequestBuilder();
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
