//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/status_edit_poll_options_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status_edit_poll.g.dart';

/// The current state of the poll options at this revision. Note that edits changing the poll options will be collapsed together into one edit, since this action resets the poll.
///
/// Properties:
/// * [options] - The poll options at this revision.
@BuiltValue()
abstract class StatusEditPoll
    implements Built<StatusEditPoll, StatusEditPollBuilder> {
  /// The poll options at this revision.
  @BuiltValueField(wireName: r'options')
  BuiltList<StatusEditPollOptionsInner> get options;

  StatusEditPoll._();

  factory StatusEditPoll([void updates(StatusEditPollBuilder b)]) =
      _$StatusEditPoll;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatusEditPollBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatusEditPoll> get serializer =>
      _$StatusEditPollSerializer();
}

class _$StatusEditPollSerializer
    implements PrimitiveSerializer<StatusEditPoll> {
  @override
  final Iterable<Type> types = const [StatusEditPoll, _$StatusEditPoll];

  @override
  final String wireName = r'StatusEditPoll';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatusEditPoll object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'options';
    yield serializers.serialize(
      object.options,
      specifiedType:
          const FullType(BuiltList, [FullType(StatusEditPollOptionsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StatusEditPoll object, {
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
    required StatusEditPollBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(StatusEditPollOptionsInner)]),
          ) as BuiltList<StatusEditPollOptionsInner>;
          result.options.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatusEditPoll deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatusEditPollBuilder();
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
