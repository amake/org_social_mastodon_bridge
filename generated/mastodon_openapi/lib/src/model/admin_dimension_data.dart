//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_dimension_data.g.dart';

/// Nested entity extracted from Admin::Dimension.data
///
/// Properties:
/// * [humanKey] - A human-readable key for this data item.
/// * [key] - The unique keystring for this data item.
/// * [value] - The value for this data item.
/// * [humanValue] - A human-readable formatted value for this data item.
/// * [unit] - The units associated with this data item's value, if applicable.
@BuiltValue()
abstract class AdminDimensionData
    implements Built<AdminDimensionData, AdminDimensionDataBuilder> {
  /// A human-readable key for this data item.
  @BuiltValueField(wireName: r'human_key')
  String get humanKey;

  /// The unique keystring for this data item.
  @BuiltValueField(wireName: r'key')
  String get key;

  /// The value for this data item.
  @BuiltValueField(wireName: r'value')
  String get value;

  /// A human-readable formatted value for this data item.
  @BuiltValueField(wireName: r'human_value')
  String? get humanValue;

  /// The units associated with this data item's value, if applicable.
  @BuiltValueField(wireName: r'unit')
  String? get unit;

  AdminDimensionData._();

  factory AdminDimensionData([void updates(AdminDimensionDataBuilder b)]) =
      _$AdminDimensionData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminDimensionDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminDimensionData> get serializer =>
      _$AdminDimensionDataSerializer();
}

class _$AdminDimensionDataSerializer
    implements PrimitiveSerializer<AdminDimensionData> {
  @override
  final Iterable<Type> types = const [AdminDimensionData, _$AdminDimensionData];

  @override
  final String wireName = r'AdminDimensionData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminDimensionData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'human_key';
    yield serializers.serialize(
      object.humanKey,
      specifiedType: const FullType(String),
    );
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
    if (object.humanValue != null) {
      yield r'human_value';
      yield serializers.serialize(
        object.humanValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.unit != null) {
      yield r'unit';
      yield serializers.serialize(
        object.unit,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminDimensionData object, {
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
    required AdminDimensionDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'human_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.humanKey = valueDes;
          break;
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'human_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.humanValue = valueDes;
          break;
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  AdminDimensionData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminDimensionDataBuilder();
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
