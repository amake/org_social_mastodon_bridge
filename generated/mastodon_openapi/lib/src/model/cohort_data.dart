//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cohort_data.g.dart';

/// Additional entity definition for CohortData
///
/// Properties:
/// * [date] - The timestamp for the start of the bucket, at midnight.
/// * [rate] - The percentage rate of users who registered in the specified `period` and were active for the given `date` bucket.
/// * [value] - How many users registered in the specified `period` and were active for the given `date` bucket.
@BuiltValue()
abstract class CohortData implements Built<CohortData, CohortDataBuilder> {
  /// The timestamp for the start of the bucket, at midnight.
  @BuiltValueField(wireName: r'date')
  DateTime get date;

  /// The percentage rate of users who registered in the specified `period` and were active for the given `date` bucket.
  @BuiltValueField(wireName: r'rate')
  num get rate;

  /// How many users registered in the specified `period` and were active for the given `date` bucket.
  @BuiltValueField(wireName: r'value')
  String get value;

  CohortData._();

  factory CohortData([void updates(CohortDataBuilder b)]) = _$CohortData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CohortDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CohortData> get serializer => _$CohortDataSerializer();
}

class _$CohortDataSerializer implements PrimitiveSerializer<CohortData> {
  @override
  final Iterable<Type> types = const [CohortData, _$CohortData];

  @override
  final String wireName = r'CohortData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CohortData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(DateTime),
    );
    yield r'rate';
    yield serializers.serialize(
      object.rate,
      specifiedType: const FullType(num),
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
    CohortData object, {
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
    required CohortDataBuilder result,
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
        case r'rate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rate = valueDes;
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
  CohortData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CohortDataBuilder();
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
