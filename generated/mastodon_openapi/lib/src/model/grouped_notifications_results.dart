//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/account.dart';
import 'package:mastodon_openapi/src/model/partial_account_with_avatar.dart';
import 'package:mastodon_openapi/src/model/status.dart';
import 'package:mastodon_openapi/src/model/notification_group.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'grouped_notifications_results.g.dart';

/// ### Attributes
///
/// Properties:
/// * [accounts] - Accounts referenced by grouped notifications.
/// * [notificationGroups] - The grouped notifications themselves.
/// * [statuses] - Statuses referenced by grouped notifications.
/// * [partialAccounts] - Partial accounts referenced by grouped notifications. Those are only returned when requesting grouped notifications with `expand_accounts=partial_avatars`.
@BuiltValue()
abstract class GroupedNotificationsResults
    implements
        Built<GroupedNotificationsResults, GroupedNotificationsResultsBuilder> {
  /// Accounts referenced by grouped notifications.
  @BuiltValueField(wireName: r'accounts')
  BuiltList<Account> get accounts;

  /// The grouped notifications themselves.
  @BuiltValueField(wireName: r'notification_groups')
  BuiltList<NotificationGroup> get notificationGroups;

  /// Statuses referenced by grouped notifications.
  @BuiltValueField(wireName: r'statuses')
  BuiltList<Status> get statuses;

  /// Partial accounts referenced by grouped notifications. Those are only returned when requesting grouped notifications with `expand_accounts=partial_avatars`.
  @BuiltValueField(wireName: r'partial_accounts')
  BuiltList<PartialAccountWithAvatar>? get partialAccounts;

  GroupedNotificationsResults._();

  factory GroupedNotificationsResults(
          [void updates(GroupedNotificationsResultsBuilder b)]) =
      _$GroupedNotificationsResults;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupedNotificationsResultsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupedNotificationsResults> get serializer =>
      _$GroupedNotificationsResultsSerializer();
}

class _$GroupedNotificationsResultsSerializer
    implements PrimitiveSerializer<GroupedNotificationsResults> {
  @override
  final Iterable<Type> types = const [
    GroupedNotificationsResults,
    _$GroupedNotificationsResults
  ];

  @override
  final String wireName = r'GroupedNotificationsResults';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupedNotificationsResults object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accounts';
    yield serializers.serialize(
      object.accounts,
      specifiedType: const FullType(BuiltList, [FullType(Account)]),
    );
    yield r'notification_groups';
    yield serializers.serialize(
      object.notificationGroups,
      specifiedType: const FullType(BuiltList, [FullType(NotificationGroup)]),
    );
    yield r'statuses';
    yield serializers.serialize(
      object.statuses,
      specifiedType: const FullType(BuiltList, [FullType(Status)]),
    );
    if (object.partialAccounts != null) {
      yield r'partial_accounts';
      yield serializers.serialize(
        object.partialAccounts,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(PartialAccountWithAvatar)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupedNotificationsResults object, {
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
    required GroupedNotificationsResultsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Account)]),
          ) as BuiltList<Account>;
          result.accounts.replace(valueDes);
          break;
        case r'notification_groups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(NotificationGroup)]),
          ) as BuiltList<NotificationGroup>;
          result.notificationGroups.replace(valueDes);
          break;
        case r'statuses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Status)]),
          ) as BuiltList<Status>;
          result.statuses.replace(valueDes);
          break;
        case r'partial_accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(PartialAccountWithAvatar)]),
          ) as BuiltList<PartialAccountWithAvatar>?;
          if (valueDes == null) continue;
          result.partialAccounts.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupedNotificationsResults deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupedNotificationsResultsBuilder();
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
