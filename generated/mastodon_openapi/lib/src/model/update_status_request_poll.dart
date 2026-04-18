//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_status_request_poll.g.dart';

/// Object containing properties
///
/// Properties:
/// * [options] - Possible answers to the poll. If provided, `media_ids` cannot be used, and `poll[expires_in]` must be provided.
/// * [expiresIn] - Duration that the poll should be open, in seconds. If provided, `media_ids` cannot be used, and `poll[options]` must be provided.
/// * [multiple] - Allow multiple choices? Defaults to false.
/// * [hideTotals] - Hide vote counts until the poll ends? Defaults to false.
@BuiltValue()
abstract class UpdateStatusRequestPoll
    implements Built<UpdateStatusRequestPoll, UpdateStatusRequestPollBuilder> {
  /// Possible answers to the poll. If provided, `media_ids` cannot be used, and `poll[expires_in]` must be provided.
  @BuiltValueField(wireName: r'options')
  BuiltList<String>? get options;

  /// Duration that the poll should be open, in seconds. If provided, `media_ids` cannot be used, and `poll[options]` must be provided.
  @BuiltValueField(wireName: r'expires_in')
  int? get expiresIn;

  /// Allow multiple choices? Defaults to false.
  @BuiltValueField(wireName: r'multiple')
  bool? get multiple;

  /// Hide vote counts until the poll ends? Defaults to false.
  @BuiltValueField(wireName: r'hide_totals')
  bool? get hideTotals;

  UpdateStatusRequestPoll._();

  factory UpdateStatusRequestPoll(
          [void updates(UpdateStatusRequestPollBuilder b)]) =
      _$UpdateStatusRequestPoll;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateStatusRequestPollBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateStatusRequestPoll> get serializer =>
      _$UpdateStatusRequestPollSerializer();
}

class _$UpdateStatusRequestPollSerializer
    implements PrimitiveSerializer<UpdateStatusRequestPoll> {
  @override
  final Iterable<Type> types = const [
    UpdateStatusRequestPoll,
    _$UpdateStatusRequestPoll
  ];

  @override
  final String wireName = r'UpdateStatusRequestPoll';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateStatusRequestPoll object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.expiresIn != null) {
      yield r'expires_in';
      yield serializers.serialize(
        object.expiresIn,
        specifiedType: const FullType(int),
      );
    }
    if (object.multiple != null) {
      yield r'multiple';
      yield serializers.serialize(
        object.multiple,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hideTotals != null) {
      yield r'hide_totals';
      yield serializers.serialize(
        object.hideTotals,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateStatusRequestPoll object, {
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
    required UpdateStatusRequestPollBuilder result,
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
  UpdateStatusRequestPoll deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateStatusRequestPollBuilder();
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
