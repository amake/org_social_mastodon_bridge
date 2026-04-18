//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_role.g.dart';

/// Additional entity definition for AccountRole
///
/// Properties:
/// * [color] - The hex code assigned to this role. If no hex code is assigned, the string will be empty.
/// * [id] - The ID of the Role in the database.
/// * [name] - The name of the role.
@BuiltValue()
abstract class AccountRole implements Built<AccountRole, AccountRoleBuilder> {
  /// The hex code assigned to this role. If no hex code is assigned, the string will be empty.
  @BuiltValueField(wireName: r'color')
  String get color;

  /// The ID of the Role in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The name of the role.
  @BuiltValueField(wireName: r'name')
  String get name;

  AccountRole._();

  factory AccountRole([void updates(AccountRoleBuilder b)]) = _$AccountRole;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountRoleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountRole> get serializer => _$AccountRoleSerializer();
}

class _$AccountRoleSerializer implements PrimitiveSerializer<AccountRole> {
  @override
  final Iterable<Type> types = const [AccountRole, _$AccountRole];

  @override
  final String wireName = r'AccountRole';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountRole object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'color';
    yield serializers.serialize(
      object.color,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountRole object, {
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
    required AccountRoleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.color = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountRole deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountRoleBuilder();
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
