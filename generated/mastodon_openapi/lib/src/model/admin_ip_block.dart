//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/admin_ip_block_severity_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_ip_block.g.dart';

/// Represents an IP address range that cannot be used to sign up.
///
/// Properties:
/// * [comment] - The recorded reason for this IP block.
/// * [createdAt] - When the IP block was created.
/// * [id] - The ID of the DomainBlock in the database.
/// * [ip] - The IP address range that is not allowed to federate.
/// * [severity] - The associated policy with this IP block.
/// * [expiresAt] - When the IP block will expire.
@BuiltValue()
abstract class AdminIpBlock
    implements Built<AdminIpBlock, AdminIpBlockBuilder> {
  /// The recorded reason for this IP block.
  @BuiltValueField(wireName: r'comment')
  String get comment;

  /// When the IP block was created.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// The ID of the DomainBlock in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The IP address range that is not allowed to federate.
  @BuiltValueField(wireName: r'ip')
  String get ip;

  /// The associated policy with this IP block.
  @BuiltValueField(wireName: r'severity')
  AdminIpBlockSeverityEnum get severity;
  // enum severityEnum {  sign_up_requires_approval,  sign_up_block,  no_access,  };

  /// When the IP block will expire.
  @BuiltValueField(wireName: r'expires_at')
  DateTime? get expiresAt;

  AdminIpBlock._();

  factory AdminIpBlock([void updates(AdminIpBlockBuilder b)]) = _$AdminIpBlock;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminIpBlockBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminIpBlock> get serializer => _$AdminIpBlockSerializer();
}

class _$AdminIpBlockSerializer implements PrimitiveSerializer<AdminIpBlock> {
  @override
  final Iterable<Type> types = const [AdminIpBlock, _$AdminIpBlock];

  @override
  final String wireName = r'AdminIpBlock';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminIpBlock object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'comment';
    yield serializers.serialize(
      object.comment,
      specifiedType: const FullType(String),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'ip';
    yield serializers.serialize(
      object.ip,
      specifiedType: const FullType(String),
    );
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(AdminIpBlockSeverityEnum),
    );
    if (object.expiresAt != null) {
      yield r'expires_at';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminIpBlock object, {
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
    required AdminIpBlockBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.comment = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'ip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ip = valueDes;
          break;
        case r'severity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdminIpBlockSeverityEnum),
          ) as AdminIpBlockSeverityEnum;
          result.severity = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminIpBlock deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminIpBlockBuilder();
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
