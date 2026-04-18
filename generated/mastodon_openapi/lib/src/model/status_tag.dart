//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status_tag.g.dart';

/// Additional entity definition for Status::Tag
///
/// Properties:
/// * [name] - The value of the hashtag after the # sign.
/// * [url] - A link to the hashtag on the instance.
@BuiltValue()
abstract class StatusTag implements Built<StatusTag, StatusTagBuilder> {
  /// The value of the hashtag after the # sign.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// A link to the hashtag on the instance.
  @BuiltValueField(wireName: r'url')
  String get url;

  StatusTag._();

  factory StatusTag([void updates(StatusTagBuilder b)]) = _$StatusTag;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatusTagBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatusTag> get serializer => _$StatusTagSerializer();
}

class _$StatusTagSerializer implements PrimitiveSerializer<StatusTag> {
  @override
  final Iterable<Type> types = const [StatusTag, _$StatusTag];

  @override
  final String wireName = r'StatusTag';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatusTag object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StatusTag object, {
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
    required StatusTagBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatusTag deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatusTagBuilder();
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
