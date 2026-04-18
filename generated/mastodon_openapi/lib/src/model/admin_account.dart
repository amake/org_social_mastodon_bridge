//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/role.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/account.dart';
import 'package:mastodon_openapi/src/model/admin_ip.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_account.g.dart';

/// Admin-level information about a given account.
///
/// Properties:
/// * [account] - User-level information about the account.
/// * [approved] - Whether the account is currently approved.
/// * [confirmed] - Whether the account has confirmed their email address.
/// * [createdAt] - When the account was first discovered.
/// * [disabled] - Whether the account is currently disabled.
/// * [email] - The email address associated with the account.
/// * [id] - The ID of the account in the database.
/// * [ips] - All known IP addresses associated with this account.
/// * [locale] - The locale of the account.
/// * [role] - The current role of the account.
/// * [sensitized] - Whether the account is currently marked sensitive.
/// * [silenced] - Whether the account is currently silenced.
/// * [suspended] - Whether the account is currently suspended.
/// * [username] - The username of the account.
/// * [createdByApplicationId] - The ID of the [Application]({{< relref \"entities/application\" >}}) that created this account, if applicable.
/// * [domain] - The domain of the account, if it is remote.
/// * [inviteRequest] - The reason given when requesting an invite (for instances that require manual approval of registrations)
/// * [invitedByAccountId] - The ID of the [Account]({{< relref \"entities/account\" >}}) that invited this user, if applicable.
/// * [ip] - The IP address last used to login to this account.
@BuiltValue()
abstract class AdminAccount
    implements Built<AdminAccount, AdminAccountBuilder> {
  /// User-level information about the account.
  @BuiltValueField(wireName: r'account')
  Account get account;

  /// Whether the account is currently approved.
  @BuiltValueField(wireName: r'approved')
  bool get approved;

  /// Whether the account has confirmed their email address.
  @BuiltValueField(wireName: r'confirmed')
  bool get confirmed;

  /// When the account was first discovered.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// Whether the account is currently disabled.
  @BuiltValueField(wireName: r'disabled')
  bool get disabled;

  /// The email address associated with the account.
  @BuiltValueField(wireName: r'email')
  String get email;

  /// The ID of the account in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// All known IP addresses associated with this account.
  @BuiltValueField(wireName: r'ips')
  BuiltList<AdminIp> get ips;

  /// The locale of the account.
  @BuiltValueField(wireName: r'locale')
  String get locale;

  /// The current role of the account.
  @BuiltValueField(wireName: r'role')
  Role get role;

  /// Whether the account is currently marked sensitive.
  @BuiltValueField(wireName: r'sensitized')
  bool get sensitized;

  /// Whether the account is currently silenced.
  @BuiltValueField(wireName: r'silenced')
  bool get silenced;

  /// Whether the account is currently suspended.
  @BuiltValueField(wireName: r'suspended')
  bool get suspended;

  /// The username of the account.
  @BuiltValueField(wireName: r'username')
  String get username;

  /// The ID of the [Application]({{< relref \"entities/application\" >}}) that created this account, if applicable.
  @BuiltValueField(wireName: r'created_by_application_id')
  String? get createdByApplicationId;

  /// The domain of the account, if it is remote.
  @BuiltValueField(wireName: r'domain')
  String? get domain;

  /// The reason given when requesting an invite (for instances that require manual approval of registrations)
  @BuiltValueField(wireName: r'invite_request')
  String? get inviteRequest;

  /// The ID of the [Account]({{< relref \"entities/account\" >}}) that invited this user, if applicable.
  @BuiltValueField(wireName: r'invited_by_account_id')
  String? get invitedByAccountId;

  /// The IP address last used to login to this account.
  @BuiltValueField(wireName: r'ip')
  String? get ip;

  AdminAccount._();

  factory AdminAccount([void updates(AdminAccountBuilder b)]) = _$AdminAccount;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminAccountBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminAccount> get serializer => _$AdminAccountSerializer();
}

class _$AdminAccountSerializer implements PrimitiveSerializer<AdminAccount> {
  @override
  final Iterable<Type> types = const [AdminAccount, _$AdminAccount];

  @override
  final String wireName = r'AdminAccount';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminAccount object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account';
    yield serializers.serialize(
      object.account,
      specifiedType: const FullType(Account),
    );
    yield r'approved';
    yield serializers.serialize(
      object.approved,
      specifiedType: const FullType(bool),
    );
    yield r'confirmed';
    yield serializers.serialize(
      object.confirmed,
      specifiedType: const FullType(bool),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'disabled';
    yield serializers.serialize(
      object.disabled,
      specifiedType: const FullType(bool),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'ips';
    yield serializers.serialize(
      object.ips,
      specifiedType: const FullType(BuiltList, [FullType(AdminIp)]),
    );
    yield r'locale';
    yield serializers.serialize(
      object.locale,
      specifiedType: const FullType(String),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(Role),
    );
    yield r'sensitized';
    yield serializers.serialize(
      object.sensitized,
      specifiedType: const FullType(bool),
    );
    yield r'silenced';
    yield serializers.serialize(
      object.silenced,
      specifiedType: const FullType(bool),
    );
    yield r'suspended';
    yield serializers.serialize(
      object.suspended,
      specifiedType: const FullType(bool),
    );
    yield r'username';
    yield serializers.serialize(
      object.username,
      specifiedType: const FullType(String),
    );
    if (object.createdByApplicationId != null) {
      yield r'created_by_application_id';
      yield serializers.serialize(
        object.createdByApplicationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.domain != null) {
      yield r'domain';
      yield serializers.serialize(
        object.domain,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.inviteRequest != null) {
      yield r'invite_request';
      yield serializers.serialize(
        object.inviteRequest,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.invitedByAccountId != null) {
      yield r'invited_by_account_id';
      yield serializers.serialize(
        object.invitedByAccountId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ip != null) {
      yield r'ip';
      yield serializers.serialize(
        object.ip,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminAccount object, {
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
    required AdminAccountBuilder result,
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
        case r'approved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.approved = valueDes;
          break;
        case r'confirmed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.confirmed = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'disabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.disabled = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'ips':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AdminIp)]),
          ) as BuiltList<AdminIp>;
          result.ips.replace(valueDes);
          break;
        case r'locale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.locale = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Role),
          ) as Role;
          result.role.replace(valueDes);
          break;
        case r'sensitized':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sensitized = valueDes;
          break;
        case r'silenced':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.silenced = valueDes;
          break;
        case r'suspended':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.suspended = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        case r'created_by_application_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.createdByApplicationId = valueDes;
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.domain = valueDes;
          break;
        case r'invite_request':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.inviteRequest = valueDes;
          break;
        case r'invited_by_account_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.invitedByAccountId = valueDes;
          break;
        case r'ip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ip = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminAccount deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminAccountBuilder();
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
