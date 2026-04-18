//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/cohort_data.dart';
import 'package:mastodon_openapi/src/model/admin_cohort_frequency_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_cohort.g.dart';

/// Represents a retention metric.
///
/// Properties:
/// * [data] - Retention data for users who registered during the given period.
/// * [frequency] - The size of the bucket for the returned data.
/// * [period] - The timestamp for the start of the period, at midnight.
@BuiltValue()
abstract class AdminCohort implements Built<AdminCohort, AdminCohortBuilder> {
  /// Retention data for users who registered during the given period.
  @BuiltValueField(wireName: r'data')
  BuiltList<CohortData> get data;

  /// The size of the bucket for the returned data.
  @BuiltValueField(wireName: r'frequency')
  AdminCohortFrequencyEnum get frequency;
  // enum frequencyEnum {  day,  month,  };

  /// The timestamp for the start of the period, at midnight.
  @BuiltValueField(wireName: r'period')
  DateTime get period;

  AdminCohort._();

  factory AdminCohort([void updates(AdminCohortBuilder b)]) = _$AdminCohort;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminCohortBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminCohort> get serializer => _$AdminCohortSerializer();
}

class _$AdminCohortSerializer implements PrimitiveSerializer<AdminCohort> {
  @override
  final Iterable<Type> types = const [AdminCohort, _$AdminCohort];

  @override
  final String wireName = r'AdminCohort';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminCohort object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(CohortData)]),
    );
    yield r'frequency';
    yield serializers.serialize(
      object.frequency,
      specifiedType: const FullType(AdminCohortFrequencyEnum),
    );
    yield r'period';
    yield serializers.serialize(
      object.period,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminCohort object, {
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
    required AdminCohortBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CohortData)]),
          ) as BuiltList<CohortData>;
          result.data.replace(valueDes);
          break;
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdminCohortFrequencyEnum),
          ) as AdminCohortFrequencyEnum;
          result.frequency = valueDes;
          break;
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.period = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminCohort deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminCohortBuilder();
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
