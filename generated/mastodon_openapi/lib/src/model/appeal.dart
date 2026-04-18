//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/appeal_state_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'appeal.g.dart';

/// Appeal against a moderation action.
///
/// Properties:
/// * [state] - State of the appeal.
/// * [text] - Text of the appeal from the moderated account to the moderators.
@BuiltValue()
abstract class Appeal implements Built<Appeal, AppealBuilder> {
  /// State of the appeal.
  @BuiltValueField(wireName: r'state')
  AppealStateEnum get state;
  // enum stateEnum {  approved,  rejected,  pending,  };

  /// Text of the appeal from the moderated account to the moderators.
  @BuiltValueField(wireName: r'text')
  String get text;

  Appeal._();

  factory Appeal([void updates(AppealBuilder b)]) = _$Appeal;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AppealBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Appeal> get serializer => _$AppealSerializer();
}

class _$AppealSerializer implements PrimitiveSerializer<Appeal> {
  @override
  final Iterable<Type> types = const [Appeal, _$Appeal];

  @override
  final String wireName = r'Appeal';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Appeal object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(AppealStateEnum),
    );
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Appeal object, {
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
    required AppealBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AppealStateEnum),
          ) as AppealStateEnum;
          result.state = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Appeal deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AppealBuilder();
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
