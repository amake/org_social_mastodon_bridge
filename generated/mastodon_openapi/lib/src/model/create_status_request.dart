//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/status_visibility_enum.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/update_status_request_poll.dart';
import 'package:mastodon_openapi/src/model/media_status.dart';
import 'package:mastodon_openapi/src/model/poll_status.dart';
import 'package:mastodon_openapi/src/model/text_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'create_status_request.g.dart';

/// CreateStatusRequest
///
/// Properties:
/// * [status] - The text content of the status. If `media_ids` is provided, this becomes optional. Attaching a `poll` is optional while `status` is provided.
/// * [mediaIds] - Include Attachment IDs to be attached as media. If provided, `status` becomes optional, and `poll` cannot be used.
/// * [poll]
/// * [inReplyToId] - ID of the status being replied to, if status is a reply.
/// * [language] - ISO 639-1 language code for this status.
/// * [quoteApprovalPolicy] - String (Enumerable, oneOf). Sets who is allowed to quote the status. When omitted, the user's [default setting] will be used instead. Ignored if `visibility` is `private` or `direct`, in which case the policy will always be set to `nobody`.
/// * [quotedStatusId] - ID of the status being quoted, if any. Will raise an error if the status does not exist, the author does not have access to it, or quoting is denied by Mastodon's understanding of the attached quote policy. All posts except Private Mentions (`direct` visibility) are quotable by their author. Quoting a `private` post will restrict the quoting post's `visibility` to `private` or `direct` (if the given `visibility` is `public` or `unlisted`, `private` will be used instead). An error will be returned when making a quote post with `direct` visibility and the quote author is not explicitly mentioned. If the `status` text doesn't include a link to the quoted post, Mastodon will prepend a `<p class=\"quote-inline\">RE: <a href=\"…\">…</a></p>` paragraph for backward compatibility (such a paragraph will be hidden by Mastodon's web interface).
/// * [scheduledAt] - [Datetime] at which to schedule a status. Providing this parameter will cause ScheduledStatus to be returned instead of Status. Must be at least 5 minutes in the future.
/// * [sensitive] - Mark status and attached media as sensitive? Defaults to false.
/// * [spoilerText] - Text to be shown as a warning or subject before the actual content. Statuses are generally collapsed behind this field.
/// * [visibility] - Sets the visibility of the posted status to `public`, `unlisted`, `private`, `direct`.
@BuiltValue()
abstract class CreateStatusRequest
    implements Built<CreateStatusRequest, CreateStatusRequestBuilder> {
  /// One Of [MediaStatus], [PollStatus], [TextStatus]
  OneOf get oneOf;

  CreateStatusRequest._();

  factory CreateStatusRequest([void updates(CreateStatusRequestBuilder b)]) =
      _$CreateStatusRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateStatusRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateStatusRequest> get serializer =>
      _$CreateStatusRequestSerializer();
}

class _$CreateStatusRequestSerializer
    implements PrimitiveSerializer<CreateStatusRequest> {
  @override
  final Iterable<Type> types = const [
    CreateStatusRequest,
    _$CreateStatusRequest
  ];

  @override
  final String wireName = r'CreateStatusRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    CreateStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  CreateStatusRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateStatusRequestBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(TextStatus),
      FullType(MediaStatus),
      FullType(PollStatus),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
