//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_email_confirmations_request.g.dart';

/// CreateEmailConfirmationsRequest
///
/// Properties:
/// * [email] - If provided, updates the unconfirmed user's email before resending the confirmation email.
@BuiltValue()
abstract class CreateEmailConfirmationsRequest
    implements
        Built<CreateEmailConfirmationsRequest,
            CreateEmailConfirmationsRequestBuilder> {
  /// If provided, updates the unconfirmed user's email before resending the confirmation email.
  @BuiltValueField(wireName: r'email')
  String? get email;

  CreateEmailConfirmationsRequest._();

  factory CreateEmailConfirmationsRequest(
          [void updates(CreateEmailConfirmationsRequestBuilder b)]) =
      _$CreateEmailConfirmationsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateEmailConfirmationsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateEmailConfirmationsRequest> get serializer =>
      _$CreateEmailConfirmationsRequestSerializer();
}

class _$CreateEmailConfirmationsRequestSerializer
    implements PrimitiveSerializer<CreateEmailConfirmationsRequest> {
  @override
  final Iterable<Type> types = const [
    CreateEmailConfirmationsRequest,
    _$CreateEmailConfirmationsRequest
  ];

  @override
  final String wireName = r'CreateEmailConfirmationsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateEmailConfirmationsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateEmailConfirmationsRequest object, {
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
    required CreateEmailConfirmationsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateEmailConfirmationsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateEmailConfirmationsRequestBuilder();
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
