//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/filter.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter_result.g.dart';

/// Represents a filter whose keywords matched a given status.
///
/// Properties:
/// * [filter] - The filter that was matched.
/// * [keywordMatches] - The keyword within the filter that was matched.
/// * [statusMatches] - The status ID within the filter that was matched.
@BuiltValue()
abstract class FilterResult
    implements Built<FilterResult, FilterResultBuilder> {
  /// The filter that was matched.
  @BuiltValueField(wireName: r'filter')
  Filter get filter;

  /// The keyword within the filter that was matched.
  @BuiltValueField(wireName: r'keyword_matches')
  BuiltList<String>? get keywordMatches;

  /// The status ID within the filter that was matched.
  @BuiltValueField(wireName: r'status_matches')
  BuiltList<String>? get statusMatches;

  FilterResult._();

  factory FilterResult([void updates(FilterResultBuilder b)]) = _$FilterResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilterResult> get serializer => _$FilterResultSerializer();
}

class _$FilterResultSerializer implements PrimitiveSerializer<FilterResult> {
  @override
  final Iterable<Type> types = const [FilterResult, _$FilterResult];

  @override
  final String wireName = r'FilterResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilterResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'filter';
    yield serializers.serialize(
      object.filter,
      specifiedType: const FullType(Filter),
    );
    if (object.keywordMatches != null) {
      yield r'keyword_matches';
      yield serializers.serialize(
        object.keywordMatches,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.statusMatches != null) {
      yield r'status_matches';
      yield serializers.serialize(
        object.statusMatches,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FilterResult object, {
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
    required FilterResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'filter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Filter),
          ) as Filter;
          result.filter.replace(valueDes);
          break;
        case r'keyword_matches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.keywordMatches.replace(valueDes);
          break;
        case r'status_matches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.statusMatches.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FilterResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterResultBuilder();
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
