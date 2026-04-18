//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/credential_account_source_quote_policy_enum.dart';
import 'package:mastodon_openapi/src/model/field.dart';
import 'package:mastodon_openapi/src/model/status_visibility_enum.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credential_account_source.g.dart';

/// An extra attribute that contains source values to be used with API methods that [verify credentials]({{< relref \"methods/accounts#verify_credentials\" >}}) and [update credentials]({{< relref \"methods/accounts#update_credentials\" >}}).
///
/// Properties:
/// * [fields] - Metadata about the account.
/// * [followRequestsCount] - The number of pending follow requests.
/// * [note] - Profile bio, in plain text instead of HTML.
/// * [privacy] - The default post privacy to be used for new statuses.
/// * [sensitive] - Whether new statuses should be marked sensitive by default.
/// * [attributionDomains] - Domains of websites allowed to credit the account.
/// * [discoverable] - Whether the account has opted into discovery features such as the profile directory.
/// * [hideCollections] - Whether the user hides the contents of their follows and followers collections.
/// * [indexable] - Whether public posts should be searchable to anyone.
/// * [language] - The default posting language for new statuses.
/// * [quotePolicy] - The default quote policy to be used for new statuses.
@BuiltValue()
abstract class CredentialAccountSource
    implements Built<CredentialAccountSource, CredentialAccountSourceBuilder> {
  /// Metadata about the account.
  @BuiltValueField(wireName: r'fields')
  BuiltList<Field> get fields;

  /// The number of pending follow requests.
  @BuiltValueField(wireName: r'follow_requests_count')
  int get followRequestsCount;

  /// Profile bio, in plain text instead of HTML.
  @BuiltValueField(wireName: r'note')
  String get note;

  /// The default post privacy to be used for new statuses.
  @BuiltValueField(wireName: r'privacy')
  StatusVisibilityEnum get privacy;
  // enum privacyEnum {  public,  unlisted,  private,  direct,  };

  /// Whether new statuses should be marked sensitive by default.
  @BuiltValueField(wireName: r'sensitive')
  bool get sensitive;

  /// Domains of websites allowed to credit the account.
  @BuiltValueField(wireName: r'attribution_domains')
  BuiltList<String>? get attributionDomains;

  /// Whether the account has opted into discovery features such as the profile directory.
  @BuiltValueField(wireName: r'discoverable')
  bool? get discoverable;

  /// Whether the user hides the contents of their follows and followers collections.
  @BuiltValueField(wireName: r'hide_collections')
  bool? get hideCollections;

  /// Whether public posts should be searchable to anyone.
  @BuiltValueField(wireName: r'indexable')
  bool? get indexable;

  /// The default posting language for new statuses.
  @BuiltValueField(wireName: r'language')
  String? get language;

  /// The default quote policy to be used for new statuses.
  @BuiltValueField(wireName: r'quote_policy')
  CredentialAccountSourceQuotePolicyEnum? get quotePolicy;
  // enum quotePolicyEnum {  public,  followers,  nobody,  };

  CredentialAccountSource._();

  factory CredentialAccountSource(
          [void updates(CredentialAccountSourceBuilder b)]) =
      _$CredentialAccountSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialAccountSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialAccountSource> get serializer =>
      _$CredentialAccountSourceSerializer();
}

class _$CredentialAccountSourceSerializer
    implements PrimitiveSerializer<CredentialAccountSource> {
  @override
  final Iterable<Type> types = const [
    CredentialAccountSource,
    _$CredentialAccountSource
  ];

  @override
  final String wireName = r'CredentialAccountSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialAccountSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'fields';
    yield serializers.serialize(
      object.fields,
      specifiedType: const FullType(BuiltList, [FullType(Field)]),
    );
    yield r'follow_requests_count';
    yield serializers.serialize(
      object.followRequestsCount,
      specifiedType: const FullType(int),
    );
    yield r'note';
    yield serializers.serialize(
      object.note,
      specifiedType: const FullType(String),
    );
    yield r'privacy';
    yield serializers.serialize(
      object.privacy,
      specifiedType: const FullType(StatusVisibilityEnum),
    );
    yield r'sensitive';
    yield serializers.serialize(
      object.sensitive,
      specifiedType: const FullType(bool),
    );
    if (object.attributionDomains != null) {
      yield r'attribution_domains';
      yield serializers.serialize(
        object.attributionDomains,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
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
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.quotePolicy != null) {
      yield r'quote_policy';
      yield serializers.serialize(
        object.quotePolicy,
        specifiedType: const FullType(CredentialAccountSourceQuotePolicyEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialAccountSource object, {
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
    required CredentialAccountSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Field)]),
          ) as BuiltList<Field>;
          result.fields.replace(valueDes);
          break;
        case r'follow_requests_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.followRequestsCount = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.note = valueDes;
          break;
        case r'privacy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StatusVisibilityEnum),
          ) as StatusVisibilityEnum;
          result.privacy = valueDes;
          break;
        case r'sensitive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sensitive = valueDes;
          break;
        case r'attribution_domains':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.attributionDomains.replace(valueDes);
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
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'quote_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(CredentialAccountSourceQuotePolicyEnum),
          ) as CredentialAccountSourceQuotePolicyEnum;
          result.quotePolicy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CredentialAccountSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialAccountSourceBuilder();
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
