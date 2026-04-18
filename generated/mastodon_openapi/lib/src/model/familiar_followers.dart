//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/account.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'familiar_followers.g.dart';

/// Represents a subset of your follows who also follow some other user.
///
/// Properties:
/// * [accounts] - Accounts you follow that also follow this account.
/// * [id] - The ID of the Account in the database.
@BuiltValue()
abstract class FamiliarFollowers
    implements Built<FamiliarFollowers, FamiliarFollowersBuilder> {
  /// Accounts you follow that also follow this account.
  @BuiltValueField(wireName: r'accounts')
  BuiltList<Account> get accounts;

  /// The ID of the Account in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  FamiliarFollowers._();

  factory FamiliarFollowers([void updates(FamiliarFollowersBuilder b)]) =
      _$FamiliarFollowers;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FamiliarFollowersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FamiliarFollowers> get serializer =>
      _$FamiliarFollowersSerializer();
}

class _$FamiliarFollowersSerializer
    implements PrimitiveSerializer<FamiliarFollowers> {
  @override
  final Iterable<Type> types = const [FamiliarFollowers, _$FamiliarFollowers];

  @override
  final String wireName = r'FamiliarFollowers';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FamiliarFollowers object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accounts';
    yield serializers.serialize(
      object.accounts,
      specifiedType: const FullType(BuiltList, [FullType(Account)]),
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
    FamiliarFollowers object, {
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
    required FamiliarFollowersBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Account)]),
          ) as BuiltList<Account>;
          result.accounts.replace(valueDes);
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
  FamiliarFollowers deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FamiliarFollowersBuilder();
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
