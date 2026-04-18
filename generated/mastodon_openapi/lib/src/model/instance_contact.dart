//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/account.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_contact.g.dart';

/// Hints related to contacting a representative of the website.
///
/// Properties:
/// * [email] - An email address that can be messaged regarding inquiries or issues.
/// * [account]
@BuiltValue()
abstract class InstanceContact
    implements Built<InstanceContact, InstanceContactBuilder> {
  /// An email address that can be messaged regarding inquiries or issues.
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'account')
  Account? get account;

  InstanceContact._();

  factory InstanceContact([void updates(InstanceContactBuilder b)]) =
      _$InstanceContact;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstanceContactBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceContact> get serializer =>
      _$InstanceContactSerializer();
}

class _$InstanceContactSerializer
    implements PrimitiveSerializer<InstanceContact> {
  @override
  final Iterable<Type> types = const [InstanceContact, _$InstanceContact];

  @override
  final String wireName = r'InstanceContact';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceContact object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    if (object.account != null) {
      yield r'account';
      yield serializers.serialize(
        object.account,
        specifiedType: const FullType.nullable(Account),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceContact object, {
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
    required InstanceContactBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Account),
          ) as Account?;
          if (valueDes == null) continue;
          result.account.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InstanceContact deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceContactBuilder();
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
