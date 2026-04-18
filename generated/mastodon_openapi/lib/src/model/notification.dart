//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/relationship_severance_event.dart';
import 'package:mastodon_openapi/src/model/account.dart';
import 'package:mastodon_openapi/src/model/status.dart';
import 'package:mastodon_openapi/src/model/report.dart';
import 'package:mastodon_openapi/src/model/notification_type_enum.dart';
import 'package:mastodon_openapi/src/model/account_warning.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification.g.dart';

/// Represents a notification of an event relevant to the user.
///
/// Properties:
/// * [account] - The account that performed the action that generated the notification.
/// * [createdAt] - The timestamp of the notification.
/// * [id] - The id of the notification in the database.
/// * [type] - The type of event that resulted in the notification.
/// * [event]
/// * [groupKey] - Group key shared by similar notifications, to be used in the grouped notifications feature. Should be considered opaque, but ungrouped notifications can be assumed to have a `group_key` of the form `ungrouped-{notification_id}`.
/// * [moderationWarning]
/// * [report]
/// * [status]
@BuiltValue()
abstract class Notification
    implements Built<Notification, NotificationBuilder> {
  /// The account that performed the action that generated the notification.
  @BuiltValueField(wireName: r'account')
  Account get account;

  /// The timestamp of the notification.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// The id of the notification in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The type of event that resulted in the notification.
  @BuiltValueField(wireName: r'type')
  NotificationTypeEnum get type;
  // enum typeEnum {  mention,  status,  reblog,  follow,  follow_request,  favourite,  poll,  update,  admin.sign_up,  admin.report,  severed_relationships,  moderation_warning,  quote,  quoted_update,  };

  @BuiltValueField(wireName: r'event')
  RelationshipSeveranceEvent? get event;

  /// Group key shared by similar notifications, to be used in the grouped notifications feature. Should be considered opaque, but ungrouped notifications can be assumed to have a `group_key` of the form `ungrouped-{notification_id}`.
  @BuiltValueField(wireName: r'group_key')
  String? get groupKey;

  @BuiltValueField(wireName: r'moderation_warning')
  AccountWarning? get moderationWarning;

  @BuiltValueField(wireName: r'report')
  Report? get report;

  @BuiltValueField(wireName: r'status')
  Status? get status;

  Notification._();

  factory Notification([void updates(NotificationBuilder b)]) = _$Notification;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Notification> get serializer => _$NotificationSerializer();
}

class _$NotificationSerializer implements PrimitiveSerializer<Notification> {
  @override
  final Iterable<Type> types = const [Notification, _$Notification];

  @override
  final String wireName = r'Notification';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Notification object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account';
    yield serializers.serialize(
      object.account,
      specifiedType: const FullType(Account),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
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
    if (object.groupKey != null) {
      yield r'group_key';
      yield serializers.serialize(
        object.groupKey,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.moderationWarning != null) {
      yield r'moderation_warning';
      yield serializers.serialize(
        object.moderationWarning,
        specifiedType: const FullType.nullable(AccountWarning),
      );
    }
    if (object.report != null) {
      yield r'report';
      yield serializers.serialize(
        object.report,
        specifiedType: const FullType.nullable(Report),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType.nullable(Status),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Notification object, {
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
    required NotificationBuilder result,
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
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
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
        case r'group_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.groupKey = valueDes;
          break;
        case r'moderation_warning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AccountWarning),
          ) as AccountWarning?;
          if (valueDes == null) continue;
          result.moderationWarning.replace(valueDes);
          break;
        case r'report':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Report),
          ) as Report?;
          if (valueDes == null) continue;
          result.report.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Status),
          ) as Status?;
          if (valueDes == null) continue;
          result.status.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Notification deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationBuilder();
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
