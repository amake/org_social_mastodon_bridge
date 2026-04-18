//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/admin_email_domain_block_history.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_email_domain_block.g.dart';

/// Represents an email domain that cannot be used to sign up.
///
/// Properties:
/// * [createdAt] - When the email domain was disallowed from signups.
/// * [domain] - The email domain that is not allowed to be used for signups.
/// * [history] - Usage statistics for given days (typically the past week).
/// * [id] - The ID of the EmailDomainBlock in the database.
@BuiltValue()
abstract class AdminEmailDomainBlock
    implements Built<AdminEmailDomainBlock, AdminEmailDomainBlockBuilder> {
  /// When the email domain was disallowed from signups.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// The email domain that is not allowed to be used for signups.
  @BuiltValueField(wireName: r'domain')
  String get domain;

  /// Usage statistics for given days (typically the past week).
  @BuiltValueField(wireName: r'history')
  BuiltList<AdminEmailDomainBlockHistory> get history;

  /// The ID of the EmailDomainBlock in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  AdminEmailDomainBlock._();

  factory AdminEmailDomainBlock(
      [void updates(AdminEmailDomainBlockBuilder b)]) = _$AdminEmailDomainBlock;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminEmailDomainBlockBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminEmailDomainBlock> get serializer =>
      _$AdminEmailDomainBlockSerializer();
}

class _$AdminEmailDomainBlockSerializer
    implements PrimitiveSerializer<AdminEmailDomainBlock> {
  @override
  final Iterable<Type> types = const [
    AdminEmailDomainBlock,
    _$AdminEmailDomainBlock
  ];

  @override
  final String wireName = r'AdminEmailDomainBlock';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminEmailDomainBlock object, {
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
    yield r'history';
    yield serializers.serialize(
      object.history,
      specifiedType:
          const FullType(BuiltList, [FullType(AdminEmailDomainBlockHistory)]),
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
    AdminEmailDomainBlock object, {
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
    required AdminEmailDomainBlockBuilder result,
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
        case r'history':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(AdminEmailDomainBlockHistory)]),
          ) as BuiltList<AdminEmailDomainBlockHistory>;
          result.history.replace(valueDes);
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
  AdminEmailDomainBlock deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminEmailDomainBlockBuilder();
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
