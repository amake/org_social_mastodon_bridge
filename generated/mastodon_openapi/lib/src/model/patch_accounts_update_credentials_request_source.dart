//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/status_visibility_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patch_accounts_update_credentials_request_source.g.dart';

/// Object containing properties
///
/// Properties:
/// * [privacy] - String (Enumerable, oneOf `public`, `unlisted`, or `private`). Default post privacy for authored statuses.
/// * [sensitive] - Whether to mark authored statuses as sensitive by default.
/// * [language] - Default language to use for authored statuses (ISO 639-1)
/// * [quotePolicy] - String (Enumerable, oneOf `public` `followers` `nobody`). Default quote policy for new posts.
@BuiltValue()
abstract class PatchAccountsUpdateCredentialsRequestSource
    implements
        Built<PatchAccountsUpdateCredentialsRequestSource,
            PatchAccountsUpdateCredentialsRequestSourceBuilder> {
  /// String (Enumerable, oneOf `public`, `unlisted`, or `private`). Default post privacy for authored statuses.
  @BuiltValueField(wireName: r'privacy')
  StatusVisibilityEnum? get privacy;
  // enum privacyEnum {  public,  unlisted,  private,  direct,  };

  /// Whether to mark authored statuses as sensitive by default.
  @BuiltValueField(wireName: r'sensitive')
  bool? get sensitive;

  /// Default language to use for authored statuses (ISO 639-1)
  @BuiltValueField(wireName: r'language')
  String? get language;

  /// String (Enumerable, oneOf `public` `followers` `nobody`). Default quote policy for new posts.
  @BuiltValueField(wireName: r'quote_policy')
  String? get quotePolicy;

  PatchAccountsUpdateCredentialsRequestSource._();

  factory PatchAccountsUpdateCredentialsRequestSource(
          [void updates(
              PatchAccountsUpdateCredentialsRequestSourceBuilder b)]) =
      _$PatchAccountsUpdateCredentialsRequestSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchAccountsUpdateCredentialsRequestSourceBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchAccountsUpdateCredentialsRequestSource>
      get serializer =>
          _$PatchAccountsUpdateCredentialsRequestSourceSerializer();
}

class _$PatchAccountsUpdateCredentialsRequestSourceSerializer
    implements
        PrimitiveSerializer<PatchAccountsUpdateCredentialsRequestSource> {
  @override
  final Iterable<Type> types = const [
    PatchAccountsUpdateCredentialsRequestSource,
    _$PatchAccountsUpdateCredentialsRequestSource
  ];

  @override
  final String wireName = r'PatchAccountsUpdateCredentialsRequestSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchAccountsUpdateCredentialsRequestSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.privacy != null) {
      yield r'privacy';
      yield serializers.serialize(
        object.privacy,
        specifiedType: const FullType(StatusVisibilityEnum),
      );
    }
    if (object.sensitive != null) {
      yield r'sensitive';
      yield serializers.serialize(
        object.sensitive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      );
    }
    if (object.quotePolicy != null) {
      yield r'quote_policy';
      yield serializers.serialize(
        object.quotePolicy,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchAccountsUpdateCredentialsRequestSource object, {
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
    required PatchAccountsUpdateCredentialsRequestSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.language = valueDes;
          break;
        case r'quote_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  PatchAccountsUpdateCredentialsRequestSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchAccountsUpdateCredentialsRequestSourceBuilder();
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
