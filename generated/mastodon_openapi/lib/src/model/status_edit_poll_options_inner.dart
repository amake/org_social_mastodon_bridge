//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status_edit_poll_options_inner.g.dart';

/// StatusEditPollOptionsInner
///
/// Properties:
/// * [title] - The text for a poll option.
@BuiltValue()
abstract class StatusEditPollOptionsInner
    implements
        Built<StatusEditPollOptionsInner, StatusEditPollOptionsInnerBuilder> {
  /// The text for a poll option.
  @BuiltValueField(wireName: r'title')
  String get title;

  StatusEditPollOptionsInner._();

  factory StatusEditPollOptionsInner(
          [void updates(StatusEditPollOptionsInnerBuilder b)]) =
      _$StatusEditPollOptionsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatusEditPollOptionsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatusEditPollOptionsInner> get serializer =>
      _$StatusEditPollOptionsInnerSerializer();
}

class _$StatusEditPollOptionsInnerSerializer
    implements PrimitiveSerializer<StatusEditPollOptionsInner> {
  @override
  final Iterable<Type> types = const [
    StatusEditPollOptionsInner,
    _$StatusEditPollOptionsInner
  ];

  @override
  final String wireName = r'StatusEditPollOptionsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatusEditPollOptionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StatusEditPollOptionsInner object, {
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
    required StatusEditPollOptionsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatusEditPollOptionsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatusEditPollOptionsInnerBuilder();
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
