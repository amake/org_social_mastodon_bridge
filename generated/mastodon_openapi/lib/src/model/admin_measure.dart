//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/admin_measure_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_measure.g.dart';

/// Represents quantitative data about the server.
///
/// Properties:
/// * [data] - The data available for the requested measure, split into daily buckets.
/// * [key] - The unique keystring for the requested measure.
/// * [total] - The numeric total associated with the requested measure.
/// * [humanValue] - A human-readable formatted value for this data item.
/// * [previousTotal] - The numeric total associated with the requested measure, in the previous period. Previous period is calculated by subtracting the start_at and end_at dates, then offsetting both start and end dates backwards by the length of the time period.
/// * [unit] - The units associated with this data item's value, if applicable.
@BuiltValue()
abstract class AdminMeasure
    implements Built<AdminMeasure, AdminMeasureBuilder> {
  /// The data available for the requested measure, split into daily buckets.
  @BuiltValueField(wireName: r'data')
  BuiltList<AdminMeasureData> get data;

  /// The unique keystring for the requested measure.
  @BuiltValueField(wireName: r'key')
  String get key;

  /// The numeric total associated with the requested measure.
  @BuiltValueField(wireName: r'total')
  String get total;

  /// A human-readable formatted value for this data item.
  @BuiltValueField(wireName: r'human_value')
  String? get humanValue;

  /// The numeric total associated with the requested measure, in the previous period. Previous period is calculated by subtracting the start_at and end_at dates, then offsetting both start and end dates backwards by the length of the time period.
  @BuiltValueField(wireName: r'previous_total')
  String? get previousTotal;

  /// The units associated with this data item's value, if applicable.
  @BuiltValueField(wireName: r'unit')
  String? get unit;

  AdminMeasure._();

  factory AdminMeasure([void updates(AdminMeasureBuilder b)]) = _$AdminMeasure;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminMeasureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminMeasure> get serializer => _$AdminMeasureSerializer();
}

class _$AdminMeasureSerializer implements PrimitiveSerializer<AdminMeasure> {
  @override
  final Iterable<Type> types = const [AdminMeasure, _$AdminMeasure];

  @override
  final String wireName = r'AdminMeasure';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminMeasure object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(AdminMeasureData)]),
    );
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(String),
    );
    if (object.humanValue != null) {
      yield r'human_value';
      yield serializers.serialize(
        object.humanValue,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.previousTotal != null) {
      yield r'previous_total';
      yield serializers.serialize(
        object.previousTotal,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.unit != null) {
      yield r'unit';
      yield serializers.serialize(
        object.unit,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminMeasure object, {
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
    required AdminMeasureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(AdminMeasureData)]),
          ) as BuiltList<AdminMeasureData>;
          result.data.replace(valueDes);
          break;
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.total = valueDes;
          break;
        case r'human_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.humanValue = valueDes;
          break;
        case r'previous_total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.previousTotal = valueDes;
          break;
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.unit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminMeasure deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminMeasureBuilder();
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
