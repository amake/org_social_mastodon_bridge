//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/custom_emoji.dart';
import 'package:mastodon_openapi/src/model/field.dart';
import 'package:mastodon_openapi/src/model/date.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/account.dart';
import 'package:mastodon_openapi/src/model/account_role.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'muted_account.g.dart';

/// Additional entity definition for MutedAccount
///
/// Properties:
/// * [acct] - The WebFinger account URI. Equal to `username` for local users, or `username@domain` for remote users.
/// * [avatar] - An image icon that is shown next to statuses and in the profile.
/// * [avatarStatic] - A static version of the avatar. Equal to `avatar` if its value is a static image; different if `avatar` is an animated GIF.
/// * [bot] - Indicates that the account may perform automated actions, may not be monitored, or identifies as a robot. This is determined by the account's `actor_type` being set to 'Application' or 'Service'.
/// * [createdAt] - When the account was created.
/// * [displayName] - The profile's display name.
/// * [emojis] - Custom emoji entities to be used when rendering the profile.
/// * [fields] - Additional metadata attached to a profile as name-value pairs.
/// * [followersCount] - The reported followers of this profile.
/// * [followingCount] - The reported follows of this profile.
/// * [group] - Indicates that the account represents a Group actor.
/// * [header] - An image banner that is shown above the profile and in profile cards. Will end `/headers/original/missing.png` if the user has not set a header image.
/// * [headerStatic] - A static version of the header. Equal to `header` if its value is a static image; different if `header` is an animated GIF.
/// * [id] - The account id.
/// * [locked] - Whether the account manually approves follow requests.
/// * [note] - The profile's bio or description.
/// * [statusesCount] - How many statuses are attached to this account.
/// * [uri] - The user's ActivityPub actor identifier (used for federation).
/// * [username] - The username of the account, not including domain.
/// * [discoverable] - Whether the account has opted into discovery features such as the profile directory.
/// * [hideCollections] - Whether the user hides the contents of their follows and followers collections.
/// * [indexable] - Whether the account allows indexing by search engines.
/// * [lastStatusAt] - When the most recent status was posted.
/// * [limited] - An extra attribute returned only when an account is silenced. If true, indicates that the account should be hidden behind a warning screen.
/// * [memorial] - An extra attribute returned only when an account is memorialized (when `memorial` is true).
/// * [moved]
/// * [muteExpiresAt] - When a timed mute will expire, if applicable.
/// * [noindex] - Whether the local user has opted out of being indexed by search engines.
/// * [roles] - An array of roles assigned to the user that are publicly visible (highlighted roles only), if the account is local. Will be an empty array if no roles are highlighted or null if the account is remote.
/// * [showFeatured] - Whether the account wishes to have a “Featured” tab on their profile.
/// * [showMedia] - Whether the account wishes to have a “Media” tab with media attachments on their profile.
/// * [showMediaReplies] - Whether the account wishes to have replies in the “Media” tab on their profile.
/// * [suspended] - An extra attribute returned only when an account is suspended.
/// * [url] - The location of the user's profile page (web interface URL).
@BuiltValue()
abstract class MutedAccount
    implements Built<MutedAccount, MutedAccountBuilder> {
  /// The WebFinger account URI. Equal to `username` for local users, or `username@domain` for remote users.
  @BuiltValueField(wireName: r'acct')
  String get acct;

  /// An image icon that is shown next to statuses and in the profile.
  @BuiltValueField(wireName: r'avatar')
  String get avatar;

  /// A static version of the avatar. Equal to `avatar` if its value is a static image; different if `avatar` is an animated GIF.
  @BuiltValueField(wireName: r'avatar_static')
  String get avatarStatic;

  /// Indicates that the account may perform automated actions, may not be monitored, or identifies as a robot. This is determined by the account's `actor_type` being set to 'Application' or 'Service'.
  @BuiltValueField(wireName: r'bot')
  bool get bot;

  /// When the account was created.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// The profile's display name.
  @BuiltValueField(wireName: r'display_name')
  String get displayName;

  /// Custom emoji entities to be used when rendering the profile.
  @BuiltValueField(wireName: r'emojis')
  BuiltList<CustomEmoji> get emojis;

  /// Additional metadata attached to a profile as name-value pairs.
  @BuiltValueField(wireName: r'fields')
  BuiltList<Field> get fields;

  /// The reported followers of this profile.
  @BuiltValueField(wireName: r'followers_count')
  int get followersCount;

  /// The reported follows of this profile.
  @BuiltValueField(wireName: r'following_count')
  int get followingCount;

  /// Indicates that the account represents a Group actor.
  @BuiltValueField(wireName: r'group')
  bool get group;

  /// An image banner that is shown above the profile and in profile cards. Will end `/headers/original/missing.png` if the user has not set a header image.
  @BuiltValueField(wireName: r'header')
  String get header;

  /// A static version of the header. Equal to `header` if its value is a static image; different if `header` is an animated GIF.
  @BuiltValueField(wireName: r'header_static')
  String get headerStatic;

  /// The account id.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Whether the account manually approves follow requests.
  @BuiltValueField(wireName: r'locked')
  bool get locked;

  /// The profile's bio or description.
  @BuiltValueField(wireName: r'note')
  String get note;

  /// How many statuses are attached to this account.
  @BuiltValueField(wireName: r'statuses_count')
  int get statusesCount;

  /// The user's ActivityPub actor identifier (used for federation).
  @BuiltValueField(wireName: r'uri')
  String get uri;

  /// The username of the account, not including domain.
  @BuiltValueField(wireName: r'username')
  String get username;

  /// Whether the account has opted into discovery features such as the profile directory.
  @BuiltValueField(wireName: r'discoverable')
  bool? get discoverable;

  /// Whether the user hides the contents of their follows and followers collections.
  @BuiltValueField(wireName: r'hide_collections')
  bool? get hideCollections;

  /// Whether the account allows indexing by search engines.
  @BuiltValueField(wireName: r'indexable')
  bool? get indexable;

  /// When the most recent status was posted.
  @BuiltValueField(wireName: r'last_status_at')
  Date? get lastStatusAt;

  /// An extra attribute returned only when an account is silenced. If true, indicates that the account should be hidden behind a warning screen.
  @BuiltValueField(wireName: r'limited')
  bool? get limited;

  /// An extra attribute returned only when an account is memorialized (when `memorial` is true).
  @BuiltValueField(wireName: r'memorial')
  bool? get memorial;

  @BuiltValueField(wireName: r'moved')
  Account? get moved;

  /// When a timed mute will expire, if applicable.
  @BuiltValueField(wireName: r'mute_expires_at')
  DateTime? get muteExpiresAt;

  /// Whether the local user has opted out of being indexed by search engines.
  @BuiltValueField(wireName: r'noindex')
  bool? get noindex;

  /// An array of roles assigned to the user that are publicly visible (highlighted roles only), if the account is local. Will be an empty array if no roles are highlighted or null if the account is remote.
  @BuiltValueField(wireName: r'roles')
  BuiltList<AccountRole>? get roles;

  /// Whether the account wishes to have a “Featured” tab on their profile.
  @BuiltValueField(wireName: r'show_featured')
  bool? get showFeatured;

  /// Whether the account wishes to have a “Media” tab with media attachments on their profile.
  @BuiltValueField(wireName: r'show_media')
  bool? get showMedia;

  /// Whether the account wishes to have replies in the “Media” tab on their profile.
  @BuiltValueField(wireName: r'show_media_replies')
  bool? get showMediaReplies;

  /// An extra attribute returned only when an account is suspended.
  @BuiltValueField(wireName: r'suspended')
  bool? get suspended;

  /// The location of the user's profile page (web interface URL).
  @BuiltValueField(wireName: r'url')
  String? get url;

  MutedAccount._();

  factory MutedAccount([void updates(MutedAccountBuilder b)]) = _$MutedAccount;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MutedAccountBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MutedAccount> get serializer => _$MutedAccountSerializer();
}

class _$MutedAccountSerializer implements PrimitiveSerializer<MutedAccount> {
  @override
  final Iterable<Type> types = const [MutedAccount, _$MutedAccount];

  @override
  final String wireName = r'MutedAccount';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MutedAccount object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'acct';
    yield serializers.serialize(
      object.acct,
      specifiedType: const FullType(String),
    );
    yield r'avatar';
    yield serializers.serialize(
      object.avatar,
      specifiedType: const FullType(String),
    );
    yield r'avatar_static';
    yield serializers.serialize(
      object.avatarStatic,
      specifiedType: const FullType(String),
    );
    yield r'bot';
    yield serializers.serialize(
      object.bot,
      specifiedType: const FullType(bool),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'display_name';
    yield serializers.serialize(
      object.displayName,
      specifiedType: const FullType(String),
    );
    yield r'emojis';
    yield serializers.serialize(
      object.emojis,
      specifiedType: const FullType(BuiltList, [FullType(CustomEmoji)]),
    );
    yield r'fields';
    yield serializers.serialize(
      object.fields,
      specifiedType: const FullType(BuiltList, [FullType(Field)]),
    );
    yield r'followers_count';
    yield serializers.serialize(
      object.followersCount,
      specifiedType: const FullType(int),
    );
    yield r'following_count';
    yield serializers.serialize(
      object.followingCount,
      specifiedType: const FullType(int),
    );
    yield r'group';
    yield serializers.serialize(
      object.group,
      specifiedType: const FullType(bool),
    );
    yield r'header';
    yield serializers.serialize(
      object.header,
      specifiedType: const FullType(String),
    );
    yield r'header_static';
    yield serializers.serialize(
      object.headerStatic,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'locked';
    yield serializers.serialize(
      object.locked,
      specifiedType: const FullType(bool),
    );
    yield r'note';
    yield serializers.serialize(
      object.note,
      specifiedType: const FullType(String),
    );
    yield r'statuses_count';
    yield serializers.serialize(
      object.statusesCount,
      specifiedType: const FullType(int),
    );
    yield r'uri';
    yield serializers.serialize(
      object.uri,
      specifiedType: const FullType(String),
    );
    yield r'username';
    yield serializers.serialize(
      object.username,
      specifiedType: const FullType(String),
    );
    if (object.discoverable != null) {
      yield r'discoverable';
      yield serializers.serialize(
        object.discoverable,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.hideCollections != null) {
      yield r'hide_collections';
      yield serializers.serialize(
        object.hideCollections,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.indexable != null) {
      yield r'indexable';
      yield serializers.serialize(
        object.indexable,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.lastStatusAt != null) {
      yield r'last_status_at';
      yield serializers.serialize(
        object.lastStatusAt,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.limited != null) {
      yield r'limited';
      yield serializers.serialize(
        object.limited,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.memorial != null) {
      yield r'memorial';
      yield serializers.serialize(
        object.memorial,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.moved != null) {
      yield r'moved';
      yield serializers.serialize(
        object.moved,
        specifiedType: const FullType.nullable(Account),
      );
    }
    if (object.muteExpiresAt != null) {
      yield r'mute_expires_at';
      yield serializers.serialize(
        object.muteExpiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.noindex != null) {
      yield r'noindex';
      yield serializers.serialize(
        object.noindex,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.roles != null) {
      yield r'roles';
      yield serializers.serialize(
        object.roles,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(AccountRole)]),
      );
    }
    if (object.showFeatured != null) {
      yield r'show_featured';
      yield serializers.serialize(
        object.showFeatured,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.showMedia != null) {
      yield r'show_media';
      yield serializers.serialize(
        object.showMedia,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.showMediaReplies != null) {
      yield r'show_media_replies';
      yield serializers.serialize(
        object.showMediaReplies,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.suspended != null) {
      yield r'suspended';
      yield serializers.serialize(
        object.suspended,
        specifiedType: const FullType.nullable(bool),
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
    MutedAccount object, {
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
    required MutedAccountBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'acct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.acct = valueDes;
          break;
        case r'avatar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.avatar = valueDes;
          break;
        case r'avatar_static':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.avatarStatic = valueDes;
          break;
        case r'bot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.bot = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'emojis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CustomEmoji)]),
          ) as BuiltList<CustomEmoji>;
          result.emojis.replace(valueDes);
          break;
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Field)]),
          ) as BuiltList<Field>;
          result.fields.replace(valueDes);
          break;
        case r'followers_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.followersCount = valueDes;
          break;
        case r'following_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.followingCount = valueDes;
          break;
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.group = valueDes;
          break;
        case r'header':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.header = valueDes;
          break;
        case r'header_static':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.headerStatic = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'locked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.locked = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.note = valueDes;
          break;
        case r'statuses_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.statusesCount = valueDes;
          break;
        case r'uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uri = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        case r'discoverable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.discoverable = valueDes;
          break;
        case r'hide_collections':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.hideCollections = valueDes;
          break;
        case r'indexable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.indexable = valueDes;
          break;
        case r'last_status_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.lastStatusAt = valueDes;
          break;
        case r'limited':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.limited = valueDes;
          break;
        case r'memorial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.memorial = valueDes;
          break;
        case r'moved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Account),
          ) as Account?;
          if (valueDes == null) continue;
          result.moved.replace(valueDes);
          break;
        case r'mute_expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.muteExpiresAt = valueDes;
          break;
        case r'noindex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.noindex = valueDes;
          break;
        case r'roles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(AccountRole)]),
          ) as BuiltList<AccountRole>?;
          if (valueDes == null) continue;
          result.roles.replace(valueDes);
          break;
        case r'show_featured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.showFeatured = valueDes;
          break;
        case r'show_media':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.showMedia = valueDes;
          break;
        case r'show_media_replies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.showMediaReplies = valueDes;
          break;
        case r'suspended':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.suspended = valueDes;
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
  MutedAccount deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MutedAccountBuilder();
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
