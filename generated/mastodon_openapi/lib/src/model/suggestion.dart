//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/account.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'suggestion.g.dart';

/// Represents a suggested account to follow and an associated reason for the suggestion.
///
/// Properties:
/// * [account] - The account being recommended to follow.
/// * [sources] - A list of reasons this account is being suggested. This replaces `source`
@BuiltValue()
abstract class Suggestion implements Built<Suggestion, SuggestionBuilder> {
  /// The account being recommended to follow.
  @BuiltValueField(wireName: r'account')
  Account get account;

  /// A list of reasons this account is being suggested. This replaces `source`
  @BuiltValueField(wireName: r'sources')
  BuiltList<SuggestionSourcesEnum>? get sources;
  // enum sourcesEnum {  featured,  most_followed,  most_interactions,  similar_to_recently_followed,  friends_of_friends,  };

  Suggestion._();

  factory Suggestion([void updates(SuggestionBuilder b)]) = _$Suggestion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SuggestionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Suggestion> get serializer => _$SuggestionSerializer();
}

class _$SuggestionSerializer implements PrimitiveSerializer<Suggestion> {
  @override
  final Iterable<Type> types = const [Suggestion, _$Suggestion];

  @override
  final String wireName = r'Suggestion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Suggestion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account';
    yield serializers.serialize(
      object.account,
      specifiedType: const FullType(Account),
    );
    if (object.sources != null) {
      yield r'sources';
      yield serializers.serialize(
        object.sources,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(SuggestionSourcesEnum)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Suggestion object, {
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
    required SuggestionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Account),
          ) as Account;
          result.account.replace(valueDes);
          break;
        case r'sources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(SuggestionSourcesEnum)]),
          ) as BuiltList<SuggestionSourcesEnum>?;
          if (valueDes == null) continue;
          result.sources.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Suggestion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SuggestionBuilder();
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

class SuggestionSourcesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'featured')
  static const SuggestionSourcesEnum featured =
      _$suggestionSourcesEnum_featured;
  @BuiltValueEnumConst(wireName: r'most_followed')
  static const SuggestionSourcesEnum mostFollowed =
      _$suggestionSourcesEnum_mostFollowed;
  @BuiltValueEnumConst(wireName: r'most_interactions')
  static const SuggestionSourcesEnum mostInteractions =
      _$suggestionSourcesEnum_mostInteractions;
  @BuiltValueEnumConst(wireName: r'similar_to_recently_followed')
  static const SuggestionSourcesEnum similarToRecentlyFollowed =
      _$suggestionSourcesEnum_similarToRecentlyFollowed;
  @BuiltValueEnumConst(wireName: r'friends_of_friends')
  static const SuggestionSourcesEnum friendsOfFriends =
      _$suggestionSourcesEnum_friendsOfFriends;

  static Serializer<SuggestionSourcesEnum> get serializer =>
      _$suggestionSourcesEnumSerializer;

  const SuggestionSourcesEnum._(String name) : super(name);

  static BuiltSet<SuggestionSourcesEnum> get values =>
      _$suggestionSourcesEnumValues;
  static SuggestionSourcesEnum valueOf(String name) =>
      _$suggestionSourcesEnumValueOf(name);
}
