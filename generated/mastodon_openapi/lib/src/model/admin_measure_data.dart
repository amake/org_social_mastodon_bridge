//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_measure_data.g.dart';

/// Nested entity extracted from Admin::Measure.data
///
/// Properties:
/// * [date] - The requested day or midnight on the requested day in the time period.
/// * [value] - The numeric value for the requested measure.
@BuiltValue()
abstract class AdminMeasureData
    implements Built<AdminMeasureData, AdminMeasureDataBuilder> {
  /// The requested day or midnight on the requested day in the time period.
  @BuiltValueField(wireName: r'date')
  DateTime get date;

  /// The numeric value for the requested measure.
  @BuiltValueField(wireName: r'value')
  String get value;

  AdminMeasureData._();

  factory AdminMeasureData([void updates(AdminMeasureDataBuilder b)]) =
      _$AdminMeasureData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminMeasureDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminMeasureData> get serializer =>
      _$AdminMeasureDataSerializer();
}

class _$AdminMeasureDataSerializer
    implements PrimitiveSerializer<AdminMeasureData> {
  @override
  final Iterable<Type> types = const [AdminMeasureData, _$AdminMeasureData];

  @override
  final String wireName = r'AdminMeasureData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminMeasureData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(DateTime),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminMeasureData object, {
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
    required AdminMeasureDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.date = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminMeasureData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminMeasureDataBuilder();
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
