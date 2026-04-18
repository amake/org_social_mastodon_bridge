//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_status_interaction_policy_request.g.dart';

/// UpdateStatusInteractionPolicyRequest
///
/// Properties:
/// * [quoteApprovalPolicy] - String (Enumerable, oneOf). Sets who is allowed to quote the status. Ignored if `visibility` is `private` or `direct`, in which case the policy will always be set to `nobody`. Changing the policy does not invalidate past quotes.
@BuiltValue()
abstract class UpdateStatusInteractionPolicyRequest
    implements
        Built<UpdateStatusInteractionPolicyRequest,
            UpdateStatusInteractionPolicyRequestBuilder> {
  /// String (Enumerable, oneOf). Sets who is allowed to quote the status. Ignored if `visibility` is `private` or `direct`, in which case the policy will always be set to `nobody`. Changing the policy does not invalidate past quotes.
  @BuiltValueField(wireName: r'quote_approval_policy')
  String? get quoteApprovalPolicy;

  UpdateStatusInteractionPolicyRequest._();

  factory UpdateStatusInteractionPolicyRequest(
          [void updates(UpdateStatusInteractionPolicyRequestBuilder b)]) =
      _$UpdateStatusInteractionPolicyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateStatusInteractionPolicyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateStatusInteractionPolicyRequest> get serializer =>
      _$UpdateStatusInteractionPolicyRequestSerializer();
}

class _$UpdateStatusInteractionPolicyRequestSerializer
    implements PrimitiveSerializer<UpdateStatusInteractionPolicyRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateStatusInteractionPolicyRequest,
    _$UpdateStatusInteractionPolicyRequest
  ];

  @override
  final String wireName = r'UpdateStatusInteractionPolicyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateStatusInteractionPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.quoteApprovalPolicy != null) {
      yield r'quote_approval_policy';
      yield serializers.serialize(
        object.quoteApprovalPolicy,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateStatusInteractionPolicyRequest object, {
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
    required UpdateStatusInteractionPolicyRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'quote_approval_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.quoteApprovalPolicy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateStatusInteractionPolicyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateStatusInteractionPolicyRequestBuilder();
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
