//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/custom_emoji.dart';
import 'package:mastodon_openapi/src/model/status_tag.dart';
import 'package:mastodon_openapi/src/model/announcement_account.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/reaction.dart';
import 'package:mastodon_openapi/src/model/announcement_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'announcement.g.dart';

/// Represents an announcement set by an administrator.
///
/// Properties:
/// * [allDay] - Whether the announcement should start and end on dates only instead of datetimes. Will be false if there is no `starts_at` or `ends_at` time.
/// * [content] - The text of the announcement.
/// * [emojis] - Custom emoji used in the announcement text.
/// * [id] - The ID of the announcement in the database.
/// * [mentions] - Accounts mentioned in the announcement text.
/// * [publishedAt] - When the announcement was published.
/// * [reactions] - Emoji reactions attached to the announcement.
/// * [statuses] - Statuses linked in the announcement text.
/// * [tags] - Tags linked in the announcement text.
/// * [updatedAt] - When the announcement was last updated.
/// * [endsAt] - When the announcement will end.
/// * [read] - Whether the announcement has been read by the current user.
/// * [startsAt] - When the announcement will start.
@BuiltValue()
abstract class Announcement
    implements Built<Announcement, AnnouncementBuilder> {
  /// Whether the announcement should start and end on dates only instead of datetimes. Will be false if there is no `starts_at` or `ends_at` time.
  @BuiltValueField(wireName: r'all_day')
  bool get allDay;

  /// The text of the announcement.
  @BuiltValueField(wireName: r'content')
  String get content;

  /// Custom emoji used in the announcement text.
  @BuiltValueField(wireName: r'emojis')
  BuiltList<CustomEmoji> get emojis;

  /// The ID of the announcement in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Accounts mentioned in the announcement text.
  @BuiltValueField(wireName: r'mentions')
  BuiltList<AnnouncementAccount> get mentions;

  /// When the announcement was published.
  @BuiltValueField(wireName: r'published_at')
  DateTime get publishedAt;

  /// Emoji reactions attached to the announcement.
  @BuiltValueField(wireName: r'reactions')
  BuiltList<Reaction> get reactions;

  /// Statuses linked in the announcement text.
  @BuiltValueField(wireName: r'statuses')
  BuiltList<AnnouncementStatus> get statuses;

  /// Tags linked in the announcement text.
  @BuiltValueField(wireName: r'tags')
  BuiltList<StatusTag> get tags;

  /// When the announcement was last updated.
  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  /// When the announcement will end.
  @BuiltValueField(wireName: r'ends_at')
  DateTime? get endsAt;

  /// Whether the announcement has been read by the current user.
  @BuiltValueField(wireName: r'read')
  bool? get read;

  /// When the announcement will start.
  @BuiltValueField(wireName: r'starts_at')
  DateTime? get startsAt;

  Announcement._();

  factory Announcement([void updates(AnnouncementBuilder b)]) = _$Announcement;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnnouncementBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Announcement> get serializer => _$AnnouncementSerializer();
}

class _$AnnouncementSerializer implements PrimitiveSerializer<Announcement> {
  @override
  final Iterable<Type> types = const [Announcement, _$Announcement];

  @override
  final String wireName = r'Announcement';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Announcement object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'all_day';
    yield serializers.serialize(
      object.allDay,
      specifiedType: const FullType(bool),
    );
    yield r'content';
    yield serializers.serialize(
      object.content,
      specifiedType: const FullType(String),
    );
    yield r'emojis';
    yield serializers.serialize(
      object.emojis,
      specifiedType: const FullType(BuiltList, [FullType(CustomEmoji)]),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'mentions';
    yield serializers.serialize(
      object.mentions,
      specifiedType: const FullType(BuiltList, [FullType(AnnouncementAccount)]),
    );
    yield r'published_at';
    yield serializers.serialize(
      object.publishedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'reactions';
    yield serializers.serialize(
      object.reactions,
      specifiedType: const FullType(BuiltList, [FullType(Reaction)]),
    );
    yield r'statuses';
    yield serializers.serialize(
      object.statuses,
      specifiedType: const FullType(BuiltList, [FullType(AnnouncementStatus)]),
    );
    yield r'tags';
    yield serializers.serialize(
      object.tags,
      specifiedType: const FullType(BuiltList, [FullType(StatusTag)]),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.endsAt != null) {
      yield r'ends_at';
      yield serializers.serialize(
        object.endsAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.read != null) {
      yield r'read';
      yield serializers.serialize(
        object.read,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.startsAt != null) {
      yield r'starts_at';
      yield serializers.serialize(
        object.startsAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Announcement object, {
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
    required AnnouncementBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'all_day':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allDay = valueDes;
          break;
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        case r'emojis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CustomEmoji)]),
          ) as BuiltList<CustomEmoji>;
          result.emojis.replace(valueDes);
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'mentions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(AnnouncementAccount)]),
          ) as BuiltList<AnnouncementAccount>;
          result.mentions.replace(valueDes);
          break;
        case r'published_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.publishedAt = valueDes;
          break;
        case r'reactions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Reaction)]),
          ) as BuiltList<Reaction>;
          result.reactions.replace(valueDes);
          break;
        case r'statuses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(AnnouncementStatus)]),
          ) as BuiltList<AnnouncementStatus>;
          result.statuses.replace(valueDes);
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(StatusTag)]),
          ) as BuiltList<StatusTag>;
          result.tags.replace(valueDes);
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'ends_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.endsAt = valueDes;
          break;
        case r'read':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.read = valueDes;
          break;
        case r'starts_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.startsAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Announcement deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnnouncementBuilder();
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
