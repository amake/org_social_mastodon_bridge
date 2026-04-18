//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patch_profile_request.g.dart';

/// PatchProfileRequest
///
/// Properties:
/// * [attributionDomains] - Domains of websites allowed to credit the account. Maximum of 10 domains.
/// * [avatar] - Avatar image encoded using `multipart/form-data`
/// * [avatarDescription] - A plain-text description of the avatar, for accessibility purposes.
/// * [bot] - Whether the account has a bot flag.
/// * [discoverable] - Whether the account should be shown in the profile directory.
/// * [displayName] - The display name to use for the profile.
/// * [fieldsAttributes] - The profile fields to be set. Each hash includes `name` and `value`. By default, max 4 fields (specified in [Instance#max_profile_fields]).
/// * [header] - Header image encoded using `multipart/form-data`
/// * [headerDescription] - A plain-text description of the header, for accessibility purposes.
/// * [hideCollections] - Whether to hide followers and followed accounts.
/// * [indexable] - Whether public posts should be searchable to anyone.
/// * [locked] - Whether manual approval of follow requests is required.
/// * [note] - The account bio.
/// * [showFeatured] - Whether a “Featured” tab should be shown on this profile.
/// * [showMedia] - Whether a “Media” tab with media attachments should be shown on this profile.
/// * [showMediaReplies] - Whether media attachments in replies should be shown in the “Media” tab of this profile.
@BuiltValue()
abstract class PatchProfileRequest
    implements Built<PatchProfileRequest, PatchProfileRequestBuilder> {
  /// Domains of websites allowed to credit the account. Maximum of 10 domains.
  @BuiltValueField(wireName: r'attribution_domains')
  BuiltList<String>? get attributionDomains;

  /// Avatar image encoded using `multipart/form-data`
  @BuiltValueField(wireName: r'avatar')
  String? get avatar;

  /// A plain-text description of the avatar, for accessibility purposes.
  @BuiltValueField(wireName: r'avatar_description')
  String? get avatarDescription;

  /// Whether the account has a bot flag.
  @BuiltValueField(wireName: r'bot')
  bool? get bot;

  /// Whether the account should be shown in the profile directory.
  @BuiltValueField(wireName: r'discoverable')
  bool? get discoverable;

  /// The display name to use for the profile.
  @BuiltValueField(wireName: r'display_name')
  String? get displayName;

  /// The profile fields to be set. Each hash includes `name` and `value`. By default, max 4 fields (specified in [Instance#max_profile_fields]).
  @BuiltValueField(wireName: r'fields_attributes')
  JsonObject? get fieldsAttributes;

  /// Header image encoded using `multipart/form-data`
  @BuiltValueField(wireName: r'header')
  String? get header;

  /// A plain-text description of the header, for accessibility purposes.
  @BuiltValueField(wireName: r'header_description')
  String? get headerDescription;

  /// Whether to hide followers and followed accounts.
  @BuiltValueField(wireName: r'hide_collections')
  bool? get hideCollections;

  /// Whether public posts should be searchable to anyone.
  @BuiltValueField(wireName: r'indexable')
  bool? get indexable;

  /// Whether manual approval of follow requests is required.
  @BuiltValueField(wireName: r'locked')
  bool? get locked;

  /// The account bio.
  @BuiltValueField(wireName: r'note')
  String? get note;

  /// Whether a “Featured” tab should be shown on this profile.
  @BuiltValueField(wireName: r'show_featured')
  bool? get showFeatured;

  /// Whether a “Media” tab with media attachments should be shown on this profile.
  @BuiltValueField(wireName: r'show_media')
  bool? get showMedia;

  /// Whether media attachments in replies should be shown in the “Media” tab of this profile.
  @BuiltValueField(wireName: r'show_media_replies')
  bool? get showMediaReplies;

  PatchProfileRequest._();

  factory PatchProfileRequest([void updates(PatchProfileRequestBuilder b)]) =
      _$PatchProfileRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchProfileRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchProfileRequest> get serializer =>
      _$PatchProfileRequestSerializer();
}

class _$PatchProfileRequestSerializer
    implements PrimitiveSerializer<PatchProfileRequest> {
  @override
  final Iterable<Type> types = const [
    PatchProfileRequest,
    _$PatchProfileRequest
  ];

  @override
  final String wireName = r'PatchProfileRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchProfileRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.attributionDomains != null) {
      yield r'attribution_domains';
      yield serializers.serialize(
        object.attributionDomains,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.avatar != null) {
      yield r'avatar';
      yield serializers.serialize(
        object.avatar,
        specifiedType: const FullType(String),
      );
    }
    if (object.avatarDescription != null) {
      yield r'avatar_description';
      yield serializers.serialize(
        object.avatarDescription,
        specifiedType: const FullType(String),
      );
    }
    if (object.bot != null) {
      yield r'bot';
      yield serializers.serialize(
        object.bot,
        specifiedType: const FullType(bool),
      );
    }
    if (object.discoverable != null) {
      yield r'discoverable';
      yield serializers.serialize(
        object.discoverable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.displayName != null) {
      yield r'display_name';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
      );
    }
    if (object.fieldsAttributes != null) {
      yield r'fields_attributes';
      yield serializers.serialize(
        object.fieldsAttributes,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.header != null) {
      yield r'header';
      yield serializers.serialize(
        object.header,
        specifiedType: const FullType(String),
      );
    }
    if (object.headerDescription != null) {
      yield r'header_description';
      yield serializers.serialize(
        object.headerDescription,
        specifiedType: const FullType(String),
      );
    }
    if (object.hideCollections != null) {
      yield r'hide_collections';
      yield serializers.serialize(
        object.hideCollections,
        specifiedType: const FullType(bool),
      );
    }
    if (object.indexable != null) {
      yield r'indexable';
      yield serializers.serialize(
        object.indexable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.locked != null) {
      yield r'locked';
      yield serializers.serialize(
        object.locked,
        specifiedType: const FullType(bool),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType(String),
      );
    }
    if (object.showFeatured != null) {
      yield r'show_featured';
      yield serializers.serialize(
        object.showFeatured,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showMedia != null) {
      yield r'show_media';
      yield serializers.serialize(
        object.showMedia,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showMediaReplies != null) {
      yield r'show_media_replies';
      yield serializers.serialize(
        object.showMediaReplies,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchProfileRequest object, {
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
    required PatchProfileRequestBuilder result,
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
        case r'avatar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.avatar = valueDes;
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
        case r'discoverable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.discoverable = valueDes;
          break;
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'fields_attributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.fieldsAttributes = valueDes;
          break;
        case r'header':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.header = valueDes;
          break;
        case r'header_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.headerDescription = valueDes;
          break;
        case r'hide_collections':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideCollections = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchProfileRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchProfileRequestBuilder();
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
