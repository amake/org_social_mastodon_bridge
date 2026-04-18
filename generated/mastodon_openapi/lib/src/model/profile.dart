//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/field.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'profile.g.dart';

/// Represents the current user's profile, with source values for all the editable fields.
///
/// Properties:
/// * [attributionDomains] - Domains of websites allowed to credit the account.
/// * [avatarDescription] - A textual description of the avatar, to be used for the visually impaired or when avatars do not load.
/// * [bot] - Indicates that the account may perform automated actions, may not be monitored, or identifies as a robot. This is determined by the account's `actor_type` being set to 'Application' or 'Service'.
/// * [displayName] - The profile's display name.
/// * [fields] - Metadata about the account. Those contain the raw unprocessed names and values.
/// * [headerDescription] - A textual description of the profile header, to be used for the visually impaired or when avatars do not load.
/// * [id] - The account id.
/// * [indexable] - Whether the account allows indexing by search engines.
/// * [locked] - Whether the account manually approves follow requests.
/// * [note] - The profile's bio or description. Unlike for [Account]({{< relref \"entities/Account\">}}), this is the raw unprocessed text, not the rendered HTML.
/// * [showFeatured] - Whether the account wishes to have a “Featured” tab on their profile.
/// * [showMedia] - Whether the account wishes to have a “Media” tab with media attachments on their profile.
/// * [showMediaReplies] - Whether the account wishes to have replies in the “Media” tab on their profile.
/// * [avatar] - An image icon that is shown next to statuses and in the profile. Unlike for [Account]({{< relref \"entities/Account\">}}), this is nullable and will be null if the avatar is unset.
/// * [avatarStatic] - A static version of the avatar. Unlike for [Account]({{< relref \"entities/Account\">}}), this is nullable and will be null if the avatar is unset.
/// * [discoverable] - Whether the account has opted into discovery features such as the profile directory.
/// * [header] - An image banner that is shown above the profile and in profile cards. Unlike for [Account]({{< relref \"entities/Account\">}}), this is nullable and will be null if the header is unset.
/// * [headerStatic] - A static version of the header. Unlike for [Account]({{< relref \"entities/Account\">}}), this is nullable and will be null if the header is unset.
/// * [hideCollections] - Whether the user hides the contents of their follows and followers collections.
@BuiltValue()
abstract class Profile implements Built<Profile, ProfileBuilder> {
  /// Domains of websites allowed to credit the account.
  @BuiltValueField(wireName: r'attribution_domains')
  BuiltList<String> get attributionDomains;

  /// A textual description of the avatar, to be used for the visually impaired or when avatars do not load.
  @BuiltValueField(wireName: r'avatar_description')
  String get avatarDescription;

  /// Indicates that the account may perform automated actions, may not be monitored, or identifies as a robot. This is determined by the account's `actor_type` being set to 'Application' or 'Service'.
  @BuiltValueField(wireName: r'bot')
  bool get bot;

  /// The profile's display name.
  @BuiltValueField(wireName: r'display_name')
  String get displayName;

  /// Metadata about the account. Those contain the raw unprocessed names and values.
  @BuiltValueField(wireName: r'fields')
  BuiltList<Field> get fields;

  /// A textual description of the profile header, to be used for the visually impaired or when avatars do not load.
  @BuiltValueField(wireName: r'header_description')
  String get headerDescription;

  /// The account id.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Whether the account allows indexing by search engines.
  @BuiltValueField(wireName: r'indexable')
  bool get indexable;

  /// Whether the account manually approves follow requests.
  @BuiltValueField(wireName: r'locked')
  bool get locked;

  /// The profile's bio or description. Unlike for [Account]({{< relref \"entities/Account\">}}), this is the raw unprocessed text, not the rendered HTML.
  @BuiltValueField(wireName: r'note')
  String get note;

  /// Whether the account wishes to have a “Featured” tab on their profile.
  @BuiltValueField(wireName: r'show_featured')
  bool get showFeatured;

  /// Whether the account wishes to have a “Media” tab with media attachments on their profile.
  @BuiltValueField(wireName: r'show_media')
  bool get showMedia;

  /// Whether the account wishes to have replies in the “Media” tab on their profile.
  @BuiltValueField(wireName: r'show_media_replies')
  bool get showMediaReplies;

  /// An image icon that is shown next to statuses and in the profile. Unlike for [Account]({{< relref \"entities/Account\">}}), this is nullable and will be null if the avatar is unset.
  @BuiltValueField(wireName: r'avatar')
  String? get avatar;

  /// A static version of the avatar. Unlike for [Account]({{< relref \"entities/Account\">}}), this is nullable and will be null if the avatar is unset.
  @BuiltValueField(wireName: r'avatar_static')
  String? get avatarStatic;

  /// Whether the account has opted into discovery features such as the profile directory.
  @BuiltValueField(wireName: r'discoverable')
  bool? get discoverable;

  /// An image banner that is shown above the profile and in profile cards. Unlike for [Account]({{< relref \"entities/Account\">}}), this is nullable and will be null if the header is unset.
  @BuiltValueField(wireName: r'header')
  String? get header;

  /// A static version of the header. Unlike for [Account]({{< relref \"entities/Account\">}}), this is nullable and will be null if the header is unset.
  @BuiltValueField(wireName: r'header_static')
  String? get headerStatic;

  /// Whether the user hides the contents of their follows and followers collections.
  @BuiltValueField(wireName: r'hide_collections')
  bool? get hideCollections;

  Profile._();

  factory Profile([void updates(ProfileBuilder b)]) = _$Profile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProfileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Profile> get serializer => _$ProfileSerializer();
}

class _$ProfileSerializer implements PrimitiveSerializer<Profile> {
  @override
  final Iterable<Type> types = const [Profile, _$Profile];

  @override
  final String wireName = r'Profile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Profile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'attribution_domains';
    yield serializers.serialize(
      object.attributionDomains,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'avatar_description';
    yield serializers.serialize(
      object.avatarDescription,
      specifiedType: const FullType(String),
    );
    yield r'bot';
    yield serializers.serialize(
      object.bot,
      specifiedType: const FullType(bool),
    );
    yield r'display_name';
    yield serializers.serialize(
      object.displayName,
      specifiedType: const FullType(String),
    );
    yield r'fields';
    yield serializers.serialize(
      object.fields,
      specifiedType: const FullType(BuiltList, [FullType(Field)]),
    );
    yield r'header_description';
    yield serializers.serialize(
      object.headerDescription,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'indexable';
    yield serializers.serialize(
      object.indexable,
      specifiedType: const FullType(bool),
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
    yield r'show_featured';
    yield serializers.serialize(
      object.showFeatured,
      specifiedType: const FullType(bool),
    );
    yield r'show_media';
    yield serializers.serialize(
      object.showMedia,
      specifiedType: const FullType(bool),
    );
    yield r'show_media_replies';
    yield serializers.serialize(
      object.showMediaReplies,
      specifiedType: const FullType(bool),
    );
    if (object.avatar != null) {
      yield r'avatar';
      yield serializers.serialize(
        object.avatar,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.avatarStatic != null) {
      yield r'avatar_static';
      yield serializers.serialize(
        object.avatarStatic,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.discoverable != null) {
      yield r'discoverable';
      yield serializers.serialize(
        object.discoverable,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.header != null) {
      yield r'header';
      yield serializers.serialize(
        object.header,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.headerStatic != null) {
      yield r'header_static';
      yield serializers.serialize(
        object.headerStatic,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.hideCollections != null) {
      yield r'hide_collections';
      yield serializers.serialize(
        object.hideCollections,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Profile object, {
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
    required ProfileBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'attribution_domains':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.attributionDomains.replace(valueDes);
          break;
        case r'avatar_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.avatarDescription = valueDes;
          break;
        case r'bot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.bot = valueDes;
          break;
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Field)]),
          ) as BuiltList<Field>;
          result.fields.replace(valueDes);
          break;
        case r'header_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.headerDescription = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'indexable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.indexable = valueDes;
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
        case r'show_featured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showFeatured = valueDes;
          break;
        case r'show_media':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showMedia = valueDes;
          break;
        case r'show_media_replies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showMediaReplies = valueDes;
          break;
        case r'avatar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.avatar = valueDes;
          break;
        case r'avatar_static':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.avatarStatic = valueDes;
          break;
        case r'discoverable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.discoverable = valueDes;
          break;
        case r'header':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.header = valueDes;
          break;
        case r'header_static':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.headerStatic = valueDes;
          break;
        case r'hide_collections':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.hideCollections = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Profile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProfileBuilder();
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
