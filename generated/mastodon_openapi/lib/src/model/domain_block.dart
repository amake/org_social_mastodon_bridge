//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/domain_block_severity_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'domain_block.g.dart';

/// Represents a domain that is blocked by the instance.
///
/// Properties:
/// * [digest] - The SHA256 hash digest of the domain string.
/// * [domain] - The domain which is blocked. This may be obfuscated or partially censored.
/// * [severity] - The level to which the domain is blocked.
/// * [comment] - An optional reason for the domain block.
@BuiltValue()
abstract class DomainBlock implements Built<DomainBlock, DomainBlockBuilder> {
  /// The SHA256 hash digest of the domain string.
  @BuiltValueField(wireName: r'digest')
  String get digest;

  /// The domain which is blocked. This may be obfuscated or partially censored.
  @BuiltValueField(wireName: r'domain')
  String get domain;

  /// The level to which the domain is blocked.
  @BuiltValueField(wireName: r'severity')
  DomainBlockSeverityEnum get severity;
  // enum severityEnum {  silence,  suspend,  };

  /// An optional reason for the domain block.
  @BuiltValueField(wireName: r'comment')
  String? get comment;

  DomainBlock._();

  factory DomainBlock([void updates(DomainBlockBuilder b)]) = _$DomainBlock;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DomainBlockBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DomainBlock> get serializer => _$DomainBlockSerializer();
}

class _$DomainBlockSerializer implements PrimitiveSerializer<DomainBlock> {
  @override
  final Iterable<Type> types = const [DomainBlock, _$DomainBlock];

  @override
  final String wireName = r'DomainBlock';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DomainBlock object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'digest';
    yield serializers.serialize(
      object.digest,
      specifiedType: const FullType(String),
    );
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(String),
    );
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(DomainBlockSeverityEnum),
    );
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DomainBlock object, {
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
    required DomainBlockBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'digest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.digest = valueDes;
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        case r'severity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DomainBlockSeverityEnum),
          ) as DomainBlockSeverityEnum;
          result.severity = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.comment = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DomainBlock deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DomainBlockBuilder();
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
