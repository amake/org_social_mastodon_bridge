//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/account_warning_action_enum.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/account.dart';
import 'package:mastodon_openapi/src/model/appeal.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_warning.g.dart';

/// Moderation warning against a particular account.
///
/// Properties:
/// * [action] - Action taken against the account.
/// * [createdAt] - When the event took place.
/// * [id] - The ID of the account warning.
/// * [targetAccount] - Account against which a moderation decision has been taken. If this `AccountWarning` is present in a [Notification](/entities/Notification/) then this is always the same as the authenticated account that requested the notification.
/// * [text] - Message from the moderator to the target account.
/// * [appeal]
/// * [statusIds] - List of status IDs that are relevant to the warning. When `action` is `mark_statuses_as_sensitive` or `delete_statuses`, those are the affected statuses. If the action is `delete_statuses` then they have been irrevocably deleted (irrespective of the appeal state), and will be inaccessible to the client.
@BuiltValue()
abstract class AccountWarning
    implements Built<AccountWarning, AccountWarningBuilder> {
  /// Action taken against the account.
  @BuiltValueField(wireName: r'action')
  AccountWarningActionEnum get action;
  // enum actionEnum {  none,  disable,  mark_statuses_as_sensitive,  delete_statuses,  sensitive,  silence,  suspend,  };

  /// When the event took place.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// The ID of the account warning.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Account against which a moderation decision has been taken. If this `AccountWarning` is present in a [Notification](/entities/Notification/) then this is always the same as the authenticated account that requested the notification.
  @BuiltValueField(wireName: r'target_account')
  Account get targetAccount;

  /// Message from the moderator to the target account.
  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'appeal')
  Appeal? get appeal;

  /// List of status IDs that are relevant to the warning. When `action` is `mark_statuses_as_sensitive` or `delete_statuses`, those are the affected statuses. If the action is `delete_statuses` then they have been irrevocably deleted (irrespective of the appeal state), and will be inaccessible to the client.
  @BuiltValueField(wireName: r'status_ids')
  BuiltList<String>? get statusIds;

  AccountWarning._();

  factory AccountWarning([void updates(AccountWarningBuilder b)]) =
      _$AccountWarning;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountWarningBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountWarning> get serializer =>
      _$AccountWarningSerializer();
}

class _$AccountWarningSerializer
    implements PrimitiveSerializer<AccountWarning> {
  @override
  final Iterable<Type> types = const [AccountWarning, _$AccountWarning];

  @override
  final String wireName = r'AccountWarning';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountWarning object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(AccountWarningActionEnum),
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
    yield r'target_account';
    yield serializers.serialize(
      object.targetAccount,
      specifiedType: const FullType(Account),
    );
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.appeal != null) {
      yield r'appeal';
      yield serializers.serialize(
        object.appeal,
        specifiedType: const FullType.nullable(Appeal),
      );
    }
    if (object.statusIds != null) {
      yield r'status_ids';
      yield serializers.serialize(
        object.statusIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountWarning object, {
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
    required AccountWarningBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccountWarningActionEnum),
          ) as AccountWarningActionEnum;
          result.action = valueDes;
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
        case r'target_account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Account),
          ) as Account;
          result.targetAccount.replace(valueDes);
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'appeal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Appeal),
          ) as Appeal?;
          if (valueDes == null) continue;
          result.appeal.replace(valueDes);
          break;
        case r'status_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.statusIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountWarning deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountWarningBuilder();
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
