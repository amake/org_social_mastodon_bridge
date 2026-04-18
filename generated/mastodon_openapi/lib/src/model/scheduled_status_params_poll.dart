//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scheduled_status_params_poll.g.dart';

/// Poll to be attached to the status.
///
/// Properties:
/// * [options] - The poll options to be used.
/// * [expiresIn] - How many seconds the poll should last before closing.
/// * [multiple] - Whether the poll allows multiple choices.
/// * [hideTotals] - Whether the poll should hide total votes until after voting has ended.
@BuiltValue()
abstract class ScheduledStatusParamsPoll
    implements
        Built<ScheduledStatusParamsPoll, ScheduledStatusParamsPollBuilder> {
  /// The poll options to be used.
  @BuiltValueField(wireName: r'options')
  BuiltList<String> get options;

  /// How many seconds the poll should last before closing.
  @BuiltValueField(wireName: r'expires_in')
  int get expiresIn;

  /// Whether the poll allows multiple choices.
  @BuiltValueField(wireName: r'multiple')
  bool get multiple;

  /// Whether the poll should hide total votes until after voting has ended.
  @BuiltValueField(wireName: r'hide_totals')
  bool get hideTotals;

  ScheduledStatusParamsPoll._();

  factory ScheduledStatusParamsPoll(
          [void updates(ScheduledStatusParamsPollBuilder b)]) =
      _$ScheduledStatusParamsPoll;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScheduledStatusParamsPollBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScheduledStatusParamsPoll> get serializer =>
      _$ScheduledStatusParamsPollSerializer();
}

class _$ScheduledStatusParamsPollSerializer
    implements PrimitiveSerializer<ScheduledStatusParamsPoll> {
  @override
  final Iterable<Type> types = const [
    ScheduledStatusParamsPoll,
    _$ScheduledStatusParamsPoll
  ];

  @override
  final String wireName = r'ScheduledStatusParamsPoll';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScheduledStatusParamsPoll object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'options';
    yield serializers.serialize(
      object.options,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'expires_in';
    yield serializers.serialize(
      object.expiresIn,
      specifiedType: const FullType(int),
    );
    yield r'multiple';
    yield serializers.serialize(
      object.multiple,
      specifiedType: const FullType(bool),
    );
    yield r'hide_totals';
    yield serializers.serialize(
      object.hideTotals,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ScheduledStatusParamsPoll object, {
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
    required ScheduledStatusParamsPollBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.options.replace(valueDes);
          break;
        case r'expires_in':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expiresIn = valueDes;
          break;
        case r'multiple':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.multiple = valueDes;
          break;
        case r'hide_totals':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideTotals = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ScheduledStatusParamsPoll deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledStatusParamsPollBuilder();
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
