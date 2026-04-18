//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter_keyword.g.dart';

/// Represents a keyword that, if matched, should cause the filter action to be taken.
///
/// Properties:
/// * [id] - The ID of the FilterKeyword in the database.
/// * [keyword] - The phrase to be matched against.
/// * [wholeWord] - Should the filter consider word boundaries? See [implementation guidelines for filters]({{< relref \"api/guidelines#filters\" >}}).
@BuiltValue()
abstract class FilterKeyword
    implements Built<FilterKeyword, FilterKeywordBuilder> {
  /// The ID of the FilterKeyword in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The phrase to be matched against.
  @BuiltValueField(wireName: r'keyword')
  String get keyword;

  /// Should the filter consider word boundaries? See [implementation guidelines for filters]({{< relref \"api/guidelines#filters\" >}}).
  @BuiltValueField(wireName: r'whole_word')
  bool get wholeWord;

  FilterKeyword._();

  factory FilterKeyword([void updates(FilterKeywordBuilder b)]) =
      _$FilterKeyword;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterKeywordBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilterKeyword> get serializer =>
      _$FilterKeywordSerializer();
}

class _$FilterKeywordSerializer implements PrimitiveSerializer<FilterKeyword> {
  @override
  final Iterable<Type> types = const [FilterKeyword, _$FilterKeyword];

  @override
  final String wireName = r'FilterKeyword';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilterKeyword object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'keyword';
    yield serializers.serialize(
      object.keyword,
      specifiedType: const FullType(String),
    );
    yield r'whole_word';
    yield serializers.serialize(
      object.wholeWord,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FilterKeyword object, {
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
    required FilterKeywordBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'keyword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyword = valueDes;
          break;
        case r'whole_word':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.wholeWord = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FilterKeyword deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterKeywordBuilder();
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
