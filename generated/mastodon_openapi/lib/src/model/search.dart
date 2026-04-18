//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/account.dart';
import 'package:mastodon_openapi/src/model/status.dart';
import 'package:mastodon_openapi/src/model/tag.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search.g.dart';

/// Represents the results of a search.
///
/// Properties:
/// * [accounts] - Accounts which match the given query
/// * [hashtags] - Hashtags which match the given query
/// * [statuses] - Statuses which match the given query
@BuiltValue()
abstract class Search implements Built<Search, SearchBuilder> {
  /// Accounts which match the given query
  @BuiltValueField(wireName: r'accounts')
  BuiltList<Account> get accounts;

  /// Hashtags which match the given query
  @BuiltValueField(wireName: r'hashtags')
  BuiltList<Tag> get hashtags;

  /// Statuses which match the given query
  @BuiltValueField(wireName: r'statuses')
  BuiltList<Status> get statuses;

  Search._();

  factory Search([void updates(SearchBuilder b)]) = _$Search;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Search> get serializer => _$SearchSerializer();
}

class _$SearchSerializer implements PrimitiveSerializer<Search> {
  @override
  final Iterable<Type> types = const [Search, _$Search];

  @override
  final String wireName = r'Search';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Search object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accounts';
    yield serializers.serialize(
      object.accounts,
      specifiedType: const FullType(BuiltList, [FullType(Account)]),
    );
    yield r'hashtags';
    yield serializers.serialize(
      object.hashtags,
      specifiedType: const FullType(BuiltList, [FullType(Tag)]),
    );
    yield r'statuses';
    yield serializers.serialize(
      object.statuses,
      specifiedType: const FullType(BuiltList, [FullType(Status)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Search object, {
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
    required SearchBuilder result,
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
        case r'hashtags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Tag)]),
          ) as BuiltList<Tag>;
          result.hashtags.replace(valueDes);
          break;
        case r'statuses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Status)]),
          ) as BuiltList<Status>;
          result.statuses.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Search deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchBuilder();
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
