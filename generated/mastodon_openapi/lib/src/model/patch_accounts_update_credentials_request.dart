//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/patch_accounts_update_credentials_request_source.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patch_accounts_update_credentials_request.g.dart';

/// PatchAccountsUpdateCredentialsRequest
///
/// Properties:
/// * [attributionDomains] - Domains of websites allowed to credit the account. Maximum of 10 domains.
/// * [avatar] - Avatar image encoded using `multipart/form-data`
/// * [bot] - Whether the account has a bot flag.
/// * [discoverable] - Whether the account should be shown in the profile directory.
/// * [displayName] - The display name to use for the profile.
/// * [fieldsAttributes] - The profile fields to be set. Inside this hash, the key is an integer cast to a string (although the exact integer does not matter), and the value is another hash including `name` and `value`. By default, max 4 fields (specified in [Instance#max_profile_fields]).
/// * [header] - Header image encoded using `multipart/form-data`
/// * [hideCollections] - Whether to hide followers and followed accounts.
/// * [indexable] - Whether public posts should be searchable to anyone.
/// * [locked] - Whether manual approval of follow requests is required.
/// * [note] - The account bio.
/// * [source_]
@BuiltValue()
abstract class PatchAccountsUpdateCredentialsRequest
    implements
        Built<PatchAccountsUpdateCredentialsRequest,
            PatchAccountsUpdateCredentialsRequestBuilder> {
  /// Domains of websites allowed to credit the account. Maximum of 10 domains.
  @BuiltValueField(wireName: r'attribution_domains')
  BuiltList<String>? get attributionDomains;

  /// Avatar image encoded using `multipart/form-data`
  @BuiltValueField(wireName: r'avatar')
  String? get avatar;

  /// Whether the account has a bot flag.
  @BuiltValueField(wireName: r'bot')
  bool? get bot;

  /// Whether the account should be shown in the profile directory.
  @BuiltValueField(wireName: r'discoverable')
  bool? get discoverable;

  /// The display name to use for the profile.
  @BuiltValueField(wireName: r'display_name')
  String? get displayName;

  /// The profile fields to be set. Inside this hash, the key is an integer cast to a string (although the exact integer does not matter), and the value is another hash including `name` and `value`. By default, max 4 fields (specified in [Instance#max_profile_fields]).
  @BuiltValueField(wireName: r'fields_attributes')
  JsonObject? get fieldsAttributes;

  /// Header image encoded using `multipart/form-data`
  @BuiltValueField(wireName: r'header')
  String? get header;

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

  @BuiltValueField(wireName: r'source')
  PatchAccountsUpdateCredentialsRequestSource? get source_;

  PatchAccountsUpdateCredentialsRequest._();

  factory PatchAccountsUpdateCredentialsRequest(
          [void updates(PatchAccountsUpdateCredentialsRequestBuilder b)]) =
      _$PatchAccountsUpdateCredentialsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchAccountsUpdateCredentialsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchAccountsUpdateCredentialsRequest> get serializer =>
      _$PatchAccountsUpdateCredentialsRequestSerializer();
}

class _$PatchAccountsUpdateCredentialsRequestSerializer
    implements PrimitiveSerializer<PatchAccountsUpdateCredentialsRequest> {
  @override
  final Iterable<Type> types = const [
    PatchAccountsUpdateCredentialsRequest,
    _$PatchAccountsUpdateCredentialsRequest
  ];

  @override
  final String wireName = r'PatchAccountsUpdateCredentialsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchAccountsUpdateCredentialsRequest object, {
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
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType:
            const FullType(PatchAccountsUpdateCredentialsRequestSource),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchAccountsUpdateCredentialsRequest object, {
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
    required PatchAccountsUpdateCredentialsRequestBuilder result,
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
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(PatchAccountsUpdateCredentialsRequestSource),
          ) as PatchAccountsUpdateCredentialsRequestSource;
          result.source_.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchAccountsUpdateCredentialsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchAccountsUpdateCredentialsRequestBuilder();
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
