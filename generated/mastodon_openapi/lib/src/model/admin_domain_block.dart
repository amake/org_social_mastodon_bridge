//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/admin_domain_block_severity_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_domain_block.g.dart';

/// Represents a domain limited from federating.
///
/// Properties:
/// * [createdAt] - When the domain was blocked from federating.
/// * [domain] - The domain that is not allowed to federate.
/// * [id] - The ID of the DomainBlock in the database.
/// * [obfuscate] - Whether to obfuscate public displays of this domain block
/// * [rejectMedia] - Whether to reject media attachments from this domain
/// * [rejectReports] - Whether to reject reports from this domain
/// * [severity] - The policy to be applied by this domain block.
/// * [digest] - The sha256 hex digest of the domain that is not allowed to federated.
/// * [privateComment] -
/// * [publicComment] -
@BuiltValue()
abstract class AdminDomainBlock
    implements Built<AdminDomainBlock, AdminDomainBlockBuilder> {
  /// When the domain was blocked from federating.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// The domain that is not allowed to federate.
  @BuiltValueField(wireName: r'domain')
  String get domain;

  /// The ID of the DomainBlock in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Whether to obfuscate public displays of this domain block
  @BuiltValueField(wireName: r'obfuscate')
  bool get obfuscate;

  /// Whether to reject media attachments from this domain
  @BuiltValueField(wireName: r'reject_media')
  bool get rejectMedia;

  /// Whether to reject reports from this domain
  @BuiltValueField(wireName: r'reject_reports')
  bool get rejectReports;

  /// The policy to be applied by this domain block.
  @BuiltValueField(wireName: r'severity')
  AdminDomainBlockSeverityEnum get severity;
  // enum severityEnum {  silence,  suspend,  noop,  };

  /// The sha256 hex digest of the domain that is not allowed to federated.
  @BuiltValueField(wireName: r'digest')
  String? get digest;

  ///
  @BuiltValueField(wireName: r'private_comment')
  String? get privateComment;

  ///
  @BuiltValueField(wireName: r'public_comment')
  String? get publicComment;

  AdminDomainBlock._();

  factory AdminDomainBlock([void updates(AdminDomainBlockBuilder b)]) =
      _$AdminDomainBlock;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminDomainBlockBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminDomainBlock> get serializer =>
      _$AdminDomainBlockSerializer();
}

class _$AdminDomainBlockSerializer
    implements PrimitiveSerializer<AdminDomainBlock> {
  @override
  final Iterable<Type> types = const [AdminDomainBlock, _$AdminDomainBlock];

  @override
  final String wireName = r'AdminDomainBlock';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminDomainBlock object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'obfuscate';
    yield serializers.serialize(
      object.obfuscate,
      specifiedType: const FullType(bool),
    );
    yield r'reject_media';
    yield serializers.serialize(
      object.rejectMedia,
      specifiedType: const FullType(bool),
    );
    yield r'reject_reports';
    yield serializers.serialize(
      object.rejectReports,
      specifiedType: const FullType(bool),
    );
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(AdminDomainBlockSeverityEnum),
    );
    if (object.digest != null) {
      yield r'digest';
      yield serializers.serialize(
        object.digest,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.privateComment != null) {
      yield r'private_comment';
      yield serializers.serialize(
        object.privateComment,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.publicComment != null) {
      yield r'public_comment';
      yield serializers.serialize(
        object.publicComment,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminDomainBlock object, {
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
    required AdminDomainBlockBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'obfuscate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.obfuscate = valueDes;
          break;
        case r'reject_media':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.rejectMedia = valueDes;
          break;
        case r'reject_reports':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.rejectReports = valueDes;
          break;
        case r'severity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdminDomainBlockSeverityEnum),
          ) as AdminDomainBlockSeverityEnum;
          result.severity = valueDes;
          break;
        case r'digest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.digest = valueDes;
          break;
        case r'private_comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.privateComment = valueDes;
          break;
        case r'public_comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.publicComment = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminDomainBlock deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminDomainBlockBuilder();
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
