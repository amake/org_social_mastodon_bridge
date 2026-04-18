//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'identity_proof.g.dart';

/// Represents a proof from an external identity provider.
///
/// Properties:
/// * [profileUrl] - The account owner's profile URL on the identity provider.
/// * [proofUrl] - A link to a statement of identity proof, hosted by the identity provider.
/// * [provider] - The name of the identity provider.
/// * [providerUsername] - The account owner's username on the identity provider's service.
/// * [updatedAt] - When the identity proof was last updated.
@BuiltValue()
abstract class IdentityProof
    implements Built<IdentityProof, IdentityProofBuilder> {
  /// The account owner's profile URL on the identity provider.
  @BuiltValueField(wireName: r'profile_url')
  String get profileUrl;

  /// A link to a statement of identity proof, hosted by the identity provider.
  @BuiltValueField(wireName: r'proof_url')
  String get proofUrl;

  /// The name of the identity provider.
  @BuiltValueField(wireName: r'provider')
  String get provider;

  /// The account owner's username on the identity provider's service.
  @BuiltValueField(wireName: r'provider_username')
  String get providerUsername;

  /// When the identity proof was last updated.
  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  IdentityProof._();

  factory IdentityProof([void updates(IdentityProofBuilder b)]) =
      _$IdentityProof;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IdentityProofBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IdentityProof> get serializer =>
      _$IdentityProofSerializer();
}

class _$IdentityProofSerializer implements PrimitiveSerializer<IdentityProof> {
  @override
  final Iterable<Type> types = const [IdentityProof, _$IdentityProof];

  @override
  final String wireName = r'IdentityProof';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IdentityProof object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'profile_url';
    yield serializers.serialize(
      object.profileUrl,
      specifiedType: const FullType(String),
    );
    yield r'proof_url';
    yield serializers.serialize(
      object.proofUrl,
      specifiedType: const FullType(String),
    );
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(String),
    );
    yield r'provider_username';
    yield serializers.serialize(
      object.providerUsername,
      specifiedType: const FullType(String),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IdentityProof object, {
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
    required IdentityProofBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'profile_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.profileUrl = valueDes;
          break;
        case r'proof_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.proofUrl = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provider = valueDes;
          break;
        case r'provider_username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.providerUsername = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IdentityProof deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdentityProofBuilder();
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
