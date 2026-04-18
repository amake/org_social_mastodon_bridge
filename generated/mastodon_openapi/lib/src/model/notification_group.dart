//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/relationship_severance_event.dart';
import 'package:mastodon_openapi/src/model/report.dart';
import 'package:mastodon_openapi/src/model/notification_type_enum.dart';
import 'package:mastodon_openapi/src/model/account_warning.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_group.g.dart';

/// ### Attributes
///
/// Properties:
/// * [groupKey] - Group key identifying the grouped notifications. Should be treated as an opaque value.
/// * [mostRecentNotificationId] - ID of the most recent notification in the group.
/// * [notificationsCount] - Total number of individual notifications that are part of this notification group.
/// * [sampleAccountIds] - IDs of some of the accounts who most recently triggered notifications in this group.
/// * [type] - The type of event that resulted in the notifications in this group.
/// * [event]
/// * [latestPageNotificationAt] - Date at which the most recent notification from this group within the current page has been created. This is only returned when paginating through notification groups.
/// * [moderationWarning]
/// * [pageMaxId] - ID of the newest notification from this group represented within the current page. This is only returned when paginating through notification groups. Useful when polling new notifications.
/// * [pageMinId] - ID of the oldest notification from this group represented within the current page. This is only returned when paginating through notification groups. Useful when polling new notifications.
/// * [report]
/// * [statusId] - ID of the [Status]({{< relref \"entities/Status\" >}}) that was the object of the notification. Attached when `type` of the notification is `favourite`, `reblog`, `status`, `mention`, `poll`, `update`, `quote` or `quoted_update`. In the case of `quoted_update`, your quote of the edited status is attached, not the status that was edited.
@BuiltValue()
abstract class NotificationGroup
    implements Built<NotificationGroup, NotificationGroupBuilder> {
  /// Group key identifying the grouped notifications. Should be treated as an opaque value.
  @BuiltValueField(wireName: r'group_key')
  String get groupKey;

  /// ID of the most recent notification in the group.
  @BuiltValueField(wireName: r'most_recent_notification_id')
  int get mostRecentNotificationId;

  /// Total number of individual notifications that are part of this notification group.
  @BuiltValueField(wireName: r'notifications_count')
  int get notificationsCount;

  /// IDs of some of the accounts who most recently triggered notifications in this group.
  @BuiltValueField(wireName: r'sample_account_ids')
  BuiltList<String> get sampleAccountIds;

  /// The type of event that resulted in the notifications in this group.
  @BuiltValueField(wireName: r'type')
  NotificationTypeEnum get type;
  // enum typeEnum {  mention,  status,  reblog,  follow,  follow_request,  favourite,  poll,  update,  admin.sign_up,  admin.report,  severed_relationships,  moderation_warning,  quote,  quoted_update,  };

  @BuiltValueField(wireName: r'event')
  RelationshipSeveranceEvent? get event;

  /// Date at which the most recent notification from this group within the current page has been created. This is only returned when paginating through notification groups.
  @BuiltValueField(wireName: r'latest_page_notification_at')
  DateTime? get latestPageNotificationAt;

  @BuiltValueField(wireName: r'moderation_warning')
  AccountWarning? get moderationWarning;

  /// ID of the newest notification from this group represented within the current page. This is only returned when paginating through notification groups. Useful when polling new notifications.
  @BuiltValueField(wireName: r'page_max_id')
  String? get pageMaxId;

  /// ID of the oldest notification from this group represented within the current page. This is only returned when paginating through notification groups. Useful when polling new notifications.
  @BuiltValueField(wireName: r'page_min_id')
  String? get pageMinId;

  @BuiltValueField(wireName: r'report')
  Report? get report;

  /// ID of the [Status]({{< relref \"entities/Status\" >}}) that was the object of the notification. Attached when `type` of the notification is `favourite`, `reblog`, `status`, `mention`, `poll`, `update`, `quote` or `quoted_update`. In the case of `quoted_update`, your quote of the edited status is attached, not the status that was edited.
  @BuiltValueField(wireName: r'status_id')
  String? get statusId;

  NotificationGroup._();

  factory NotificationGroup([void updates(NotificationGroupBuilder b)]) =
      _$NotificationGroup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationGroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationGroup> get serializer =>
      _$NotificationGroupSerializer();
}

class _$NotificationGroupSerializer
    implements PrimitiveSerializer<NotificationGroup> {
  @override
  final Iterable<Type> types = const [NotificationGroup, _$NotificationGroup];

  @override
  final String wireName = r'NotificationGroup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'group_key';
    yield serializers.serialize(
      object.groupKey,
      specifiedType: const FullType(String),
    );
    yield r'most_recent_notification_id';
    yield serializers.serialize(
      object.mostRecentNotificationId,
      specifiedType: const FullType(int),
    );
    yield r'notifications_count';
    yield serializers.serialize(
      object.notificationsCount,
      specifiedType: const FullType(int),
    );
    yield r'sample_account_ids';
    yield serializers.serialize(
      object.sampleAccountIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(NotificationTypeEnum),
    );
    if (object.event != null) {
      yield r'event';
      yield serializers.serialize(
        object.event,
        specifiedType: const FullType.nullable(RelationshipSeveranceEvent),
      );
    }
    if (object.latestPageNotificationAt != null) {
      yield r'latest_page_notification_at';
      yield serializers.serialize(
        object.latestPageNotificationAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.moderationWarning != null) {
      yield r'moderation_warning';
      yield serializers.serialize(
        object.moderationWarning,
        specifiedType: const FullType.nullable(AccountWarning),
      );
    }
    if (object.pageMaxId != null) {
      yield r'page_max_id';
      yield serializers.serialize(
        object.pageMaxId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.pageMinId != null) {
      yield r'page_min_id';
      yield serializers.serialize(
        object.pageMinId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.report != null) {
      yield r'report';
      yield serializers.serialize(
        object.report,
        specifiedType: const FullType.nullable(Report),
      );
    }
    if (object.statusId != null) {
      yield r'status_id';
      yield serializers.serialize(
        object.statusId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationGroup object, {
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
    required NotificationGroupBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'group_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.groupKey = valueDes;
          break;
        case r'most_recent_notification_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mostRecentNotificationId = valueDes;
          break;
        case r'notifications_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.notificationsCount = valueDes;
          break;
        case r'sample_account_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.sampleAccountIds.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationTypeEnum),
          ) as NotificationTypeEnum;
          result.type = valueDes;
          break;
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RelationshipSeveranceEvent),
          ) as RelationshipSeveranceEvent?;
          if (valueDes == null) continue;
          result.event.replace(valueDes);
          break;
        case r'latest_page_notification_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.latestPageNotificationAt = valueDes;
          break;
        case r'moderation_warning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AccountWarning),
          ) as AccountWarning?;
          if (valueDes == null) continue;
          result.moderationWarning.replace(valueDes);
          break;
        case r'page_max_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pageMaxId = valueDes;
          break;
        case r'page_min_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pageMinId = valueDes;
          break;
        case r'report':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Report),
          ) as Report?;
          if (valueDes == null) continue;
          result.report.replace(valueDes);
          break;
        case r'status_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.statusId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationGroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationGroupBuilder();
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
