//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/status_mention.dart';
import 'package:mastodon_openapi/src/model/status_quote.dart';
import 'package:mastodon_openapi/src/model/status_visibility_enum.dart';
import 'package:mastodon_openapi/src/model/filter_result.dart';
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

part 'status.g.dart';

/// Represents a status posted by an account.
///
/// Properties:
/// * [account] - The account that authored this status.
/// * [content] - HTML-encoded status content.
/// * [createdAt] - The date when this status was created.
/// * [emojis] - Custom emoji to be used when rendering status content.
/// * [favouritesCount] - How many favourites this status has received.
/// * [id] - ID of the status in the database.
/// * [mediaAttachments] - Media that is attached to this status.
/// * [mentions] - Mentions of users within the status content.
/// * [reblogsCount] - How many boosts this status has received.
/// * [repliesCount] - How many replies this status has received.
/// * [sensitive] - Is this status marked as sensitive content?
/// * [spoilerText] - Subject or summary line, below which status content is collapsed until expanded.
/// * [tags] - Hashtags used within the status content.
/// * [uri] - URI of the status used for federation.
/// * [visibility] - Visibility of this status.
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
abstract class Status implements Built<Status, StatusBuilder> {
  /// The account that authored this status.
  @BuiltValueField(wireName: r'account')
  Account get account;

  /// HTML-encoded status content.
  @BuiltValueField(wireName: r'content')
  String get content;

  /// The date when this status was created.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// Custom emoji to be used when rendering status content.
  @BuiltValueField(wireName: r'emojis')
  BuiltList<CustomEmoji> get emojis;

  /// How many favourites this status has received.
  @BuiltValueField(wireName: r'favourites_count')
  int get favouritesCount;

  /// ID of the status in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Media that is attached to this status.
  @BuiltValueField(wireName: r'media_attachments')
  BuiltList<MediaAttachment> get mediaAttachments;

  /// Mentions of users within the status content.
  @BuiltValueField(wireName: r'mentions')
  BuiltList<StatusMention> get mentions;

  /// How many boosts this status has received.
  @BuiltValueField(wireName: r'reblogs_count')
  int get reblogsCount;

  /// How many replies this status has received.
  @BuiltValueField(wireName: r'replies_count')
  int get repliesCount;

  /// Is this status marked as sensitive content?
  @BuiltValueField(wireName: r'sensitive')
  bool get sensitive;

  /// Subject or summary line, below which status content is collapsed until expanded.
  @BuiltValueField(wireName: r'spoiler_text')
  String get spoilerText;

  /// Hashtags used within the status content.
  @BuiltValueField(wireName: r'tags')
  BuiltList<StatusTag> get tags;

  /// URI of the status used for federation.
  @BuiltValueField(wireName: r'uri')
  String get uri;

  /// Visibility of this status.
  @BuiltValueField(wireName: r'visibility')
  StatusVisibilityEnum get visibility;
  // enum visibilityEnum {  public,  unlisted,  private,  direct,  };

  @BuiltValueField(wireName: r'application')
  StatusApplication? get application;

  /// If the current token has an authorized user: Have you bookmarked this status?
  @BuiltValueField(wireName: r'bookmarked')
  bool? get bookmarked;

  @BuiltValueField(wireName: r'card')
  PreviewCard? get card;

  /// Timestamp of when the status was last edited.
  @BuiltValueField(wireName: r'edited_at')
  DateTime? get editedAt;

  /// If the current token has an authorized user: Have you favourited this status?
  @BuiltValueField(wireName: r'favourited')
  bool? get favourited;

  /// If the current token has an authorized user: The filter and keywords that matched this status.
  @BuiltValueField(wireName: r'filtered')
  BuiltList<FilterResult>? get filtered;

  /// Might be the ID of the account that authored the status being replied to. This sometimes skips over self-replies. If status A was posted by account 1, and account 2 posts statuses B, C, and D as a chain of replies to status A, statuses B, C, and D will all have `in_reply_to_account_id` = 1 (instead of C and D having `in_reply_to_account_id` = 2). However, if status A was posted by account 1, and account 1 posts status B as a direct reply to A, B will have an `in_reply_to_account_id` = 1 (instead of null).
  @BuiltValueField(wireName: r'in_reply_to_account_id')
  String? get inReplyToAccountId;

  /// ID of the status being replied to.
  @BuiltValueField(wireName: r'in_reply_to_id')
  String? get inReplyToId;

  /// Primary language of this status.
  @BuiltValueField(wireName: r'language')
  String? get language;

  /// If the current token has an authorized user: Have you muted notifications for this status's conversation?
  @BuiltValueField(wireName: r'muted')
  bool? get muted;

  /// If the current token has an authorized user: Have you pinned this status? Only appears if the status is pinnable.
  @BuiltValueField(wireName: r'pinned')
  bool? get pinned;

  @BuiltValueField(wireName: r'poll')
  Poll? get poll;

  @BuiltValueField(wireName: r'quote')
  StatusQuote? get quote;

  @BuiltValueField(wireName: r'quote_approval')
  QuoteApproval? get quoteApproval;

  /// How many accepted quotes this status has.
  @BuiltValueField(wireName: r'quotes_count')
  int? get quotesCount;

  @BuiltValueField(wireName: r'reblog')
  Status? get reblog;

  /// If the current token has an authorized user: Have you boosted this status?
  @BuiltValueField(wireName: r'reblogged')
  bool? get reblogged;

  /// Plain-text source of a status. Returned instead of `content` when status is deleted, so the user may redraft from the source text without the client having to reverse-engineer the original text from the HTML content.
  @BuiltValueField(wireName: r'text')
  String? get text;

  /// A link to the status's HTML representation.
  @BuiltValueField(wireName: r'url')
  String? get url;

  Status._();

  factory Status([void updates(StatusBuilder b)]) = _$Status;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Status> get serializer => _$StatusSerializer();
}

class _$StatusSerializer implements PrimitiveSerializer<Status> {
  @override
  final Iterable<Type> types = const [Status, _$Status];

  @override
  final String wireName = r'Status';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Status object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account';
    yield serializers.serialize(
      object.account,
      specifiedType: const FullType(Account),
    );
    yield r'content';
    yield serializers.serialize(
      object.content,
      specifiedType: const FullType(String),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'emojis';
    yield serializers.serialize(
      object.emojis,
      specifiedType: const FullType(BuiltList, [FullType(CustomEmoji)]),
    );
    yield r'favourites_count';
    yield serializers.serialize(
      object.favouritesCount,
      specifiedType: const FullType(int),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'media_attachments';
    yield serializers.serialize(
      object.mediaAttachments,
      specifiedType: const FullType(BuiltList, [FullType(MediaAttachment)]),
    );
    yield r'mentions';
    yield serializers.serialize(
      object.mentions,
      specifiedType: const FullType(BuiltList, [FullType(StatusMention)]),
    );
    yield r'reblogs_count';
    yield serializers.serialize(
      object.reblogsCount,
      specifiedType: const FullType(int),
    );
    yield r'replies_count';
    yield serializers.serialize(
      object.repliesCount,
      specifiedType: const FullType(int),
    );
    yield r'sensitive';
    yield serializers.serialize(
      object.sensitive,
      specifiedType: const FullType(bool),
    );
    yield r'spoiler_text';
    yield serializers.serialize(
      object.spoilerText,
      specifiedType: const FullType(String),
    );
    yield r'tags';
    yield serializers.serialize(
      object.tags,
      specifiedType: const FullType(BuiltList, [FullType(StatusTag)]),
    );
    yield r'uri';
    yield serializers.serialize(
      object.uri,
      specifiedType: const FullType(String),
    );
    yield r'visibility';
    yield serializers.serialize(
      object.visibility,
      specifiedType: const FullType(StatusVisibilityEnum),
    );
    if (object.application != null) {
      yield r'application';
      yield serializers.serialize(
        object.application,
        specifiedType: const FullType(StatusApplication),
      );
    }
    if (object.bookmarked != null) {
      yield r'bookmarked';
      yield serializers.serialize(
        object.bookmarked,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.card != null) {
      yield r'card';
      yield serializers.serialize(
        object.card,
        specifiedType: const FullType.nullable(PreviewCard),
      );
    }
    if (object.editedAt != null) {
      yield r'edited_at';
      yield serializers.serialize(
        object.editedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.favourited != null) {
      yield r'favourited';
      yield serializers.serialize(
        object.favourited,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.filtered != null) {
      yield r'filtered';
      yield serializers.serialize(
        object.filtered,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(FilterResult)]),
      );
    }
    if (object.inReplyToAccountId != null) {
      yield r'in_reply_to_account_id';
      yield serializers.serialize(
        object.inReplyToAccountId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.inReplyToId != null) {
      yield r'in_reply_to_id';
      yield serializers.serialize(
        object.inReplyToId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.muted != null) {
      yield r'muted';
      yield serializers.serialize(
        object.muted,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.pinned != null) {
      yield r'pinned';
      yield serializers.serialize(
        object.pinned,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.poll != null) {
      yield r'poll';
      yield serializers.serialize(
        object.poll,
        specifiedType: const FullType.nullable(Poll),
      );
    }
    if (object.quote != null) {
      yield r'quote';
      yield serializers.serialize(
        object.quote,
        specifiedType: const FullType.nullable(StatusQuote),
      );
    }
    if (object.quoteApproval != null) {
      yield r'quote_approval';
      yield serializers.serialize(
        object.quoteApproval,
        specifiedType: const FullType.nullable(QuoteApproval),
      );
    }
    if (object.quotesCount != null) {
      yield r'quotes_count';
      yield serializers.serialize(
        object.quotesCount,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.reblog != null) {
      yield r'reblog';
      yield serializers.serialize(
        object.reblog,
        specifiedType: const FullType.nullable(Status),
      );
    }
    if (object.reblogged != null) {
      yield r'reblogged';
      yield serializers.serialize(
        object.reblogged,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Status object, {
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
    required StatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Account),
          ) as Account;
          result.account.replace(valueDes);
          break;
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'emojis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CustomEmoji)]),
          ) as BuiltList<CustomEmoji>;
          result.emojis.replace(valueDes);
          break;
        case r'favourites_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.favouritesCount = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'media_attachments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(MediaAttachment)]),
          ) as BuiltList<MediaAttachment>;
          result.mediaAttachments.replace(valueDes);
          break;
        case r'mentions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(StatusMention)]),
          ) as BuiltList<StatusMention>;
          result.mentions.replace(valueDes);
          break;
        case r'reblogs_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.reblogsCount = valueDes;
          break;
        case r'replies_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.repliesCount = valueDes;
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
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(StatusTag)]),
          ) as BuiltList<StatusTag>;
          result.tags.replace(valueDes);
          break;
        case r'uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uri = valueDes;
          break;
        case r'visibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StatusVisibilityEnum),
          ) as StatusVisibilityEnum;
          result.visibility = valueDes;
          break;
        case r'application':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StatusApplication),
          ) as StatusApplication;
          result.application.replace(valueDes);
          break;
        case r'bookmarked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.bookmarked = valueDes;
          break;
        case r'card':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PreviewCard),
          ) as PreviewCard?;
          if (valueDes == null) continue;
          result.card.replace(valueDes);
          break;
        case r'edited_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.editedAt = valueDes;
          break;
        case r'favourited':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.favourited = valueDes;
          break;
        case r'filtered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(FilterResult)]),
          ) as BuiltList<FilterResult>?;
          if (valueDes == null) continue;
          result.filtered.replace(valueDes);
          break;
        case r'in_reply_to_account_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.inReplyToAccountId = valueDes;
          break;
        case r'in_reply_to_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.inReplyToId = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'muted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.muted = valueDes;
          break;
        case r'pinned':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.pinned = valueDes;
          break;
        case r'poll':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Poll),
          ) as Poll?;
          if (valueDes == null) continue;
          result.poll.replace(valueDes);
          break;
        case r'quote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(StatusQuote),
          ) as StatusQuote?;
          if (valueDes == null) continue;
          result.quote.replace(valueDes);
          break;
        case r'quote_approval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(QuoteApproval),
          ) as QuoteApproval?;
          if (valueDes == null) continue;
          result.quoteApproval.replace(valueDes);
          break;
        case r'quotes_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.quotesCount = valueDes;
          break;
        case r'reblog':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Status),
          ) as Status?;
          if (valueDes == null) continue;
          result.reblog.replace(valueDes);
          break;
        case r'reblogged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.reblogged = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Status deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatusBuilder();
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
