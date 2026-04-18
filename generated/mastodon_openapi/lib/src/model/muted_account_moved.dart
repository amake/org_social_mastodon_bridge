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
import 'package:one_of/one_of.dart';

part 'muted_account_moved.g.dart';

/// Indicates that the profile is currently inactive and that its user has moved to a new account.
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
/// * [noindex] - Whether the local user has opted out of being indexed by search engines.
/// * [roles] - An array of roles assigned to the user that are publicly visible (highlighted roles only), if the account is local. Will be an empty array if no roles are highlighted or null if the account is remote.
/// * [showFeatured] - Whether the account wishes to have a “Featured” tab on their profile.
/// * [showMedia] - Whether the account wishes to have a “Media” tab with media attachments on their profile.
/// * [showMediaReplies] - Whether the account wishes to have replies in the “Media” tab on their profile.
/// * [suspended] - An extra attribute returned only when an account is suspended.
/// * [url] - The location of the user's profile page (web interface URL).
@BuiltValue()
abstract class MutedAccountMoved
    implements Built<MutedAccountMoved, MutedAccountMovedBuilder> {
  /// One Of [Account]
  OneOf get oneOf;

  MutedAccountMoved._();

  factory MutedAccountMoved([void updates(MutedAccountMovedBuilder b)]) =
      _$MutedAccountMoved;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MutedAccountMovedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MutedAccountMoved> get serializer =>
      _$MutedAccountMovedSerializer();
}

class _$MutedAccountMovedSerializer
    implements PrimitiveSerializer<MutedAccountMoved> {
  @override
  final Iterable<Type> types = const [MutedAccountMoved, _$MutedAccountMoved];

  @override
  final String wireName = r'MutedAccountMoved';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MutedAccountMoved object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    MutedAccountMoved object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  MutedAccountMoved deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MutedAccountMovedBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType.nullable(Account),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
