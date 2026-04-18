//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/update_status_request_poll.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_status_request.g.dart';

/// UpdateStatusRequest
///
/// Properties:
/// * [language] - ISO 639-1 language code for the status.
/// * [mediaAttributesLeftSquareBracketRightSquareBracket] - Each array includes id, description, and focus.
/// * [mediaIds] - Include Attachment IDs to be attached as media. If provided, `status` becomes optional, and `poll` cannot be used.
/// * [poll]
/// * [quoteApprovalPolicy] - String (Enumerable, oneOf). Sets who is allowed to quote the status. Ignored if `visibility` is `private` or `direct`, in which case the policy will always be set to `nobody`. Changing the policy does not invalidate past quotes.
/// * [sensitive] - Whether the status should be marked as sensitive.
/// * [spoilerText] - The plain text subject or content warning of the status.
/// * [status] - The plain text content of the status.
@BuiltValue()
abstract class UpdateStatusRequest
    implements Built<UpdateStatusRequest, UpdateStatusRequestBuilder> {
  /// ISO 639-1 language code for the status.
  @BuiltValueField(wireName: r'language')
  String? get language;

  /// Each array includes id, description, and focus.
  @BuiltValueField(wireName: r'media_attributes[]')
  BuiltList<String>? get mediaAttributesLeftSquareBracketRightSquareBracket;

  /// Include Attachment IDs to be attached as media. If provided, `status` becomes optional, and `poll` cannot be used.
  @BuiltValueField(wireName: r'media_ids')
  BuiltList<String>? get mediaIds;

  @BuiltValueField(wireName: r'poll')
  UpdateStatusRequestPoll? get poll;

  /// String (Enumerable, oneOf). Sets who is allowed to quote the status. Ignored if `visibility` is `private` or `direct`, in which case the policy will always be set to `nobody`. Changing the policy does not invalidate past quotes.
  @BuiltValueField(wireName: r'quote_approval_policy')
  String? get quoteApprovalPolicy;

  /// Whether the status should be marked as sensitive.
  @BuiltValueField(wireName: r'sensitive')
  bool? get sensitive;

  /// The plain text subject or content warning of the status.
  @BuiltValueField(wireName: r'spoiler_text')
  String? get spoilerText;

  /// The plain text content of the status.
  @BuiltValueField(wireName: r'status')
  String? get status;

  UpdateStatusRequest._();

  factory UpdateStatusRequest([void updates(UpdateStatusRequestBuilder b)]) =
      _$UpdateStatusRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateStatusRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateStatusRequest> get serializer =>
      _$UpdateStatusRequestSerializer();
}

class _$UpdateStatusRequestSerializer
    implements PrimitiveSerializer<UpdateStatusRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateStatusRequest,
    _$UpdateStatusRequest
  ];

  @override
  final String wireName = r'UpdateStatusRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      );
    }
    if (object.mediaAttributesLeftSquareBracketRightSquareBracket != null) {
      yield r'media_attributes[]';
      yield serializers.serialize(
        object.mediaAttributesLeftSquareBracketRightSquareBracket,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.mediaIds != null) {
      yield r'media_ids';
      yield serializers.serialize(
        object.mediaIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.poll != null) {
      yield r'poll';
      yield serializers.serialize(
        object.poll,
        specifiedType: const FullType(UpdateStatusRequestPoll),
      );
    }
    if (object.quoteApprovalPolicy != null) {
      yield r'quote_approval_policy';
      yield serializers.serialize(
        object.quoteApprovalPolicy,
        specifiedType: const FullType(String),
      );
    }
    if (object.sensitive != null) {
      yield r'sensitive';
      yield serializers.serialize(
        object.sensitive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.spoilerText != null) {
      yield r'spoiler_text';
      yield serializers.serialize(
        object.spoilerText,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateStatusRequest object, {
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
    required UpdateStatusRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.language = valueDes;
          break;
        case r'media_attributes[]':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.mediaAttributesLeftSquareBracketRightSquareBracket
              .replace(valueDes);
          break;
        case r'media_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.mediaIds.replace(valueDes);
          break;
        case r'poll':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateStatusRequestPoll),
          ) as UpdateStatusRequestPoll;
          result.poll.replace(valueDes);
          break;
        case r'quote_approval_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.quoteApprovalPolicy = valueDes;
          break;
        case r'sensitive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sensitive = valueDes;
          break;
        case r'spoiler_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.spoilerText = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateStatusRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateStatusRequestBuilder();
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
