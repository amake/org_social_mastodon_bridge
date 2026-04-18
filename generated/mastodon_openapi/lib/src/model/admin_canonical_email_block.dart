//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_canonical_email_block.g.dart';

/// Represents a canonical email block (hashed).
///
/// Properties:
/// * [canonicalEmailHash] - The SHA256 hash of the canonical email address.
/// * [id] - The ID of the email block in the database.
@BuiltValue()
abstract class AdminCanonicalEmailBlock
    implements
        Built<AdminCanonicalEmailBlock, AdminCanonicalEmailBlockBuilder> {
  /// The SHA256 hash of the canonical email address.
  @BuiltValueField(wireName: r'canonical_email_hash')
  String get canonicalEmailHash;

  /// The ID of the email block in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  AdminCanonicalEmailBlock._();

  factory AdminCanonicalEmailBlock(
          [void updates(AdminCanonicalEmailBlockBuilder b)]) =
      _$AdminCanonicalEmailBlock;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminCanonicalEmailBlockBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminCanonicalEmailBlock> get serializer =>
      _$AdminCanonicalEmailBlockSerializer();
}

class _$AdminCanonicalEmailBlockSerializer
    implements PrimitiveSerializer<AdminCanonicalEmailBlock> {
  @override
  final Iterable<Type> types = const [
    AdminCanonicalEmailBlock,
    _$AdminCanonicalEmailBlock
  ];

  @override
  final String wireName = r'AdminCanonicalEmailBlock';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminCanonicalEmailBlock object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'canonical_email_hash';
    yield serializers.serialize(
      object.canonicalEmailHash,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminCanonicalEmailBlock object, {
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
    required AdminCanonicalEmailBlockBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'canonical_email_hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.canonicalEmailHash = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminCanonicalEmailBlock deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminCanonicalEmailBlockBuilder();
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
