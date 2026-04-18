//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter_status.g.dart';

/// Represents a status ID that, if matched, should cause the filter action to be taken.
///
/// Properties:
/// * [id] - The ID of the FilterStatus in the database.
/// * [statusId] - The ID of the Status that will be filtered.
@BuiltValue()
abstract class FilterStatus
    implements Built<FilterStatus, FilterStatusBuilder> {
  /// The ID of the FilterStatus in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The ID of the Status that will be filtered.
  @BuiltValueField(wireName: r'status_id')
  String get statusId;

  FilterStatus._();

  factory FilterStatus([void updates(FilterStatusBuilder b)]) = _$FilterStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilterStatus> get serializer => _$FilterStatusSerializer();
}

class _$FilterStatusSerializer implements PrimitiveSerializer<FilterStatus> {
  @override
  final Iterable<Type> types = const [FilterStatus, _$FilterStatus];

  @override
  final String wireName = r'FilterStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilterStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'status_id';
    yield serializers.serialize(
      object.statusId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FilterStatus object, {
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
    required FilterStatusBuilder result,
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
        case r'status_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statusId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FilterStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterStatusBuilder();
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
