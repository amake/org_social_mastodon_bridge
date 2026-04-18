//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_domain_allow.g.dart';

/// Represents a domain allowed to federate.
///
/// Properties:
/// * [createdAt] - When the domain was allowed to federate.
/// * [domain] - The domain that is allowed to federate.
/// * [id] - The ID of the DomainAllow in the database.
@BuiltValue()
abstract class AdminDomainAllow
    implements Built<AdminDomainAllow, AdminDomainAllowBuilder> {
  /// When the domain was allowed to federate.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// The domain that is allowed to federate.
  @BuiltValueField(wireName: r'domain')
  String get domain;

  /// The ID of the DomainAllow in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  AdminDomainAllow._();

  factory AdminDomainAllow([void updates(AdminDomainAllowBuilder b)]) =
      _$AdminDomainAllow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminDomainAllowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminDomainAllow> get serializer =>
      _$AdminDomainAllowSerializer();
}

class _$AdminDomainAllowSerializer
    implements PrimitiveSerializer<AdminDomainAllow> {
  @override
  final Iterable<Type> types = const [AdminDomainAllow, _$AdminDomainAllow];

  @override
  final String wireName = r'AdminDomainAllow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminDomainAllow object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminDomainAllow object, {
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
    required AdminDomainAllowBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminDomainAllow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminDomainAllowBuilder();
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
