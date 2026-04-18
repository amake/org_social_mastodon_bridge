//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_account_request.g.dart';

/// CreateAccountRequest
///
/// Properties:
/// * [agreement] - Whether the user agrees to the local rules, terms, and policies. These should be presented to the user in order to allow them to consent before setting this parameter to TRUE.
/// * [email] - The email address to be used for login
/// * [locale] - The language of the confirmation email that will be sent.
/// * [password] - The password to be used for login
/// * [username] - The desired username for the account
/// * [dateOfBirth] - String ([Date]), required if the server has a minimum age requirement.
/// * [reason] - If registrations require manual approval, this text will be reviewed by moderators.
@BuiltValue()
abstract class CreateAccountRequest
    implements Built<CreateAccountRequest, CreateAccountRequestBuilder> {
  /// Whether the user agrees to the local rules, terms, and policies. These should be presented to the user in order to allow them to consent before setting this parameter to TRUE.
  @BuiltValueField(wireName: r'agreement')
  bool get agreement;

  /// The email address to be used for login
  @BuiltValueField(wireName: r'email')
  String get email;

  /// The language of the confirmation email that will be sent.
  @BuiltValueField(wireName: r'locale')
  String get locale;

  /// The password to be used for login
  @BuiltValueField(wireName: r'password')
  String get password;

  /// The desired username for the account
  @BuiltValueField(wireName: r'username')
  String get username;

  /// String ([Date]), required if the server has a minimum age requirement.
  @BuiltValueField(wireName: r'date_of_birth')
  Date? get dateOfBirth;

  /// If registrations require manual approval, this text will be reviewed by moderators.
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  CreateAccountRequest._();

  factory CreateAccountRequest([void updates(CreateAccountRequestBuilder b)]) =
      _$CreateAccountRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateAccountRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateAccountRequest> get serializer =>
      _$CreateAccountRequestSerializer();
}

class _$CreateAccountRequestSerializer
    implements PrimitiveSerializer<CreateAccountRequest> {
  @override
  final Iterable<Type> types = const [
    CreateAccountRequest,
    _$CreateAccountRequest
  ];

  @override
  final String wireName = r'CreateAccountRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateAccountRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'agreement';
    yield serializers.serialize(
      object.agreement,
      specifiedType: const FullType(bool),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'locale';
    yield serializers.serialize(
      object.locale,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    yield r'username';
    yield serializers.serialize(
      object.username,
      specifiedType: const FullType(String),
    );
    if (object.dateOfBirth != null) {
      yield r'date_of_birth';
      yield serializers.serialize(
        object.dateOfBirth,
        specifiedType: const FullType(Date),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateAccountRequest object, {
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
    required CreateAccountRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'agreement':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.agreement = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'locale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.locale = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        case r'date_of_birth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.dateOfBirth = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateAccountRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateAccountRequestBuilder();
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
