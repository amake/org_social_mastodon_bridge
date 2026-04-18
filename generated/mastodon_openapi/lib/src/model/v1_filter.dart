//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/filter_context_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_filter.g.dart';

/// Represents a user-defined filter for determining which statuses should not be shown to the user. Contains a single keyword or phrase.
///
/// Properties:
/// * [context] - The contexts in which the filter should be applied.
/// * [id] - The ID of the filter in the database.
/// * [irreversible] - Should matching entities in home and notifications be dropped by the server? See [implementation guidelines for filters]({{< relref \"api/guidelines#filters\" >}}).
/// * [phrase] - The text to be filtered.
/// * [wholeWord] - Should the filter consider word boundaries? See [implementation guidelines for filters]({{< relref \"api/guidelines#filters\" >}}).
/// * [expiresAt] - When the filter should no longer be applied.
@BuiltValue()
abstract class V1Filter implements Built<V1Filter, V1FilterBuilder> {
  /// The contexts in which the filter should be applied.
  @BuiltValueField(wireName: r'context')
  BuiltList<FilterContextEnum> get context;

  /// The ID of the filter in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Should matching entities in home and notifications be dropped by the server? See [implementation guidelines for filters]({{< relref \"api/guidelines#filters\" >}}).
  @BuiltValueField(wireName: r'irreversible')
  bool get irreversible;

  /// The text to be filtered.
  @BuiltValueField(wireName: r'phrase')
  String get phrase;

  /// Should the filter consider word boundaries? See [implementation guidelines for filters]({{< relref \"api/guidelines#filters\" >}}).
  @BuiltValueField(wireName: r'whole_word')
  bool get wholeWord;

  /// When the filter should no longer be applied.
  @BuiltValueField(wireName: r'expires_at')
  DateTime? get expiresAt;

  V1Filter._();

  factory V1Filter([void updates(V1FilterBuilder b)]) = _$V1Filter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1FilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1Filter> get serializer => _$V1FilterSerializer();
}

class _$V1FilterSerializer implements PrimitiveSerializer<V1Filter> {
  @override
  final Iterable<Type> types = const [V1Filter, _$V1Filter];

  @override
  final String wireName = r'V1Filter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1Filter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'context';
    yield serializers.serialize(
      object.context,
      specifiedType: const FullType(BuiltList, [FullType(FilterContextEnum)]),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'irreversible';
    yield serializers.serialize(
      object.irreversible,
      specifiedType: const FullType(bool),
    );
    yield r'phrase';
    yield serializers.serialize(
      object.phrase,
      specifiedType: const FullType(String),
    );
    yield r'whole_word';
    yield serializers.serialize(
      object.wholeWord,
      specifiedType: const FullType(bool),
    );
    if (object.expiresAt != null) {
      yield r'expires_at';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1Filter object, {
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
    required V1FilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'context':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(FilterContextEnum)]),
          ) as BuiltList<FilterContextEnum>;
          result.context.replace(valueDes);
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'irreversible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.irreversible = valueDes;
          break;
        case r'phrase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phrase = valueDes;
          break;
        case r'whole_word':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.wholeWord = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1Filter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1FilterBuilder();
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
