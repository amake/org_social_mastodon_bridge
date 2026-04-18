//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_ip.g.dart';

/// Represents an IP address associated with a user.
///
/// Properties:
/// * [ip] - The IP address.
/// * [usedAt] - The timestamp of when the IP address was last used for this account.
@BuiltValue()
abstract class AdminIp implements Built<AdminIp, AdminIpBuilder> {
  /// The IP address.
  @BuiltValueField(wireName: r'ip')
  String get ip;

  /// The timestamp of when the IP address was last used for this account.
  @BuiltValueField(wireName: r'used_at')
  DateTime get usedAt;

  AdminIp._();

  factory AdminIp([void updates(AdminIpBuilder b)]) = _$AdminIp;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminIpBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminIp> get serializer => _$AdminIpSerializer();
}

class _$AdminIpSerializer implements PrimitiveSerializer<AdminIp> {
  @override
  final Iterable<Type> types = const [AdminIp, _$AdminIp];

  @override
  final String wireName = r'AdminIp';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminIp object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ip';
    yield serializers.serialize(
      object.ip,
      specifiedType: const FullType(String),
    );
    yield r'used_at';
    yield serializers.serialize(
      object.usedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminIp object, {
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
    required AdminIpBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ip = valueDes;
          break;
        case r'used_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.usedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminIp deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminIpBuilder();
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
