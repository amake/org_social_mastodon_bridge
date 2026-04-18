//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/scheduled_status_params.dart';
import 'package:mastodon_openapi/src/model/status_mention.dart';
import 'package:mastodon_openapi/src/model/status_quote.dart';
import 'package:mastodon_openapi/src/model/status_visibility_enum.dart';
import 'package:mastodon_openapi/src/model/filter_result.dart';
import 'package:mastodon_openapi/src/model/scheduled_status.dart';
import 'package:mastodon_openapi/src/model/status.dart';
import 'package:mastodon_openapi/src/model/status_application.dart';
import 'package:mastodon_openapi/src/model/preview_card.dart';
import 'package:mastodon_openapi/src/model/custom_emoji.dart';
import 'package:mastodon_openapi/src/model/media_attachment.dart';
import 'package:mastodon_openapi/src/model/status_tag.dart';
import 'package:mastodon_openapi/src/model/poll.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/account.dart';
import 'package:mastodon_openapi/src/model/quote_approval.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'create_status200_response.g.dart';

/// CreateStatus200Response
///
/// Properties:
/// * [account] - The account that authored this status.
/// * [content] - HTML-encoded status content.
/// * [createdAt] - The date when this status was created.
/// * [emojis] - Custom emoji to be used when rendering status content.
/// * [favouritesCount] - How many favourites this status has received.
/// * [id] - ID of the scheduled status in the database.
/// * [mediaAttachments] - Media that will be attached when the status is posted.
/// * [mentions] - Mentions of users within the status content.
/// * [reblogsCount] - How many boosts this status has received.
/// * [repliesCount] - How many replies this status has received.
/// * [sensitive] - Is this status marked as sensitive content?
/// * [spoilerText] - Subject or summary line, below which status content is collapsed until expanded.
/// * [tags] - Hashtags used within the status content.
/// * [uri] - URI of the status used for federation.
/// * [visibility] - Visibility of this status.
/// * [params]
/// * [scheduledAt] - The timestamp for when the status will be posted.
/// * [application]
/// * [bookmarked] - If the current token has an authorized user: Have you bookmarked this status?
/// * [card]
/// * [editedAt] - Timestamp of when the status was last edited.
/// * [favourited] - If the current token has an authorized user: Have you favourited this status?
/// * [filtered] - If the current token has an authorized user: The filter and keywords that matched this status.
/// * [inReplyToAccountId] - Might be the ID of the account that authored the status being replied to. This sometimes skips over self-replies. If status A was posted by account 1, and account 2 posts statuses B, C, and D as a chain of replies to status A, statuses B, C, and D will all have `in_reply_to_account_id` = 1 (instead of C and D having `in_reply_to_account_id` = 2). However, if status A was posted by account 1, and account 1 posts status B as a direct reply to A, B will have an `in_reply_to_account_id` = 1 (instead of null).
/// * [inReplyToId] - ID of the status being replied to.
/// * [language] - Primary language of this status.
/// * [muted] - If the current token has an authorized user: Have you muted notifications for this status's conversation?
/// * [pinned] - If the current token has an authorized user: Have you pinned this status? Only appears if the status is pinnable.
/// * [poll]
/// * [quote]
/// * [quoteApproval]
/// * [quotesCount] - How many accepted quotes this status has.
/// * [reblog]
/// * [reblogged] - If the current token has an authorized user: Have you boosted this status?
/// * [text] - Plain-text source of a status. Returned instead of `content` when status is deleted, so the user may redraft from the source text without the client having to reverse-engineer the original text from the HTML content.
/// * [url] - A link to the status's HTML representation.
@BuiltValue()
abstract class CreateStatus200Response
    implements Built<CreateStatus200Response, CreateStatus200ResponseBuilder> {
  /// One Of [ScheduledStatus], [Status]
  OneOf get oneOf;

  CreateStatus200Response._();

  factory CreateStatus200Response(
          [void updates(CreateStatus200ResponseBuilder b)]) =
      _$CreateStatus200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateStatus200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateStatus200Response> get serializer =>
      _$CreateStatus200ResponseSerializer();
}

class _$CreateStatus200ResponseSerializer
    implements PrimitiveSerializer<CreateStatus200Response> {
  @override
  final Iterable<Type> types = const [
    CreateStatus200Response,
    _$CreateStatus200Response
  ];

  @override
  final String wireName = r'CreateStatus200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateStatus200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    CreateStatus200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  CreateStatus200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateStatus200ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(Status),
      FullType(ScheduledStatus),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
