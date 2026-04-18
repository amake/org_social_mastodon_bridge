//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag_history.g.dart';

/// Nested entity extracted from Tag.history
///
/// Properties:
/// * [accounts] - The total of accounts using the tag within that day.
/// * [day] - UNIX timestamp on midnight of the given day.
/// * [uses] - The counted usage of the tag within that day.
@BuiltValue()
abstract class TagHistory implements Built<TagHistory, TagHistoryBuilder> {
  /// The total of accounts using the tag within that day.
  @BuiltValueField(wireName: r'accounts')
  String get accounts;

  /// UNIX timestamp on midnight of the given day.
  @BuiltValueField(wireName: r'day')
  String get day;

  /// The counted usage of the tag within that day.
  @BuiltValueField(wireName: r'uses')
  String get uses;

  TagHistory._();

  factory TagHistory([void updates(TagHistoryBuilder b)]) = _$TagHistory;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TagHistoryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TagHistory> get serializer => _$TagHistorySerializer();
}

class _$TagHistorySerializer implements PrimitiveSerializer<TagHistory> {
  @override
  final Iterable<Type> types = const [TagHistory, _$TagHistory];

  @override
  final String wireName = r'TagHistory';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TagHistory object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accounts';
    yield serializers.serialize(
      object.accounts,
      specifiedType: const FullType(String),
    );
    yield r'day';
    yield serializers.serialize(
      object.day,
      specifiedType: const FullType(String),
    );
    yield r'uses';
    yield serializers.serialize(
      object.uses,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TagHistory object, {
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
    required TagHistoryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accounts = valueDes;
          break;
        case r'day':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.day = valueDes;
          break;
        case r'uses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uses = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TagHistory deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagHistoryBuilder();
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
