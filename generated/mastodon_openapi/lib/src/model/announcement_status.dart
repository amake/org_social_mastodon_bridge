//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'announcement_status.g.dart';

/// Additional entity definition for Announcement::Status
///
/// Properties:
/// * [id] - The ID of an attached Status in the database.
/// * [url] - The URL of an attached Status.
@BuiltValue()
abstract class AnnouncementStatus
    implements Built<AnnouncementStatus, AnnouncementStatusBuilder> {
  /// The ID of an attached Status in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The URL of an attached Status.
  @BuiltValueField(wireName: r'url')
  String get url;

  AnnouncementStatus._();

  factory AnnouncementStatus([void updates(AnnouncementStatusBuilder b)]) =
      _$AnnouncementStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnnouncementStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnnouncementStatus> get serializer =>
      _$AnnouncementStatusSerializer();
}

class _$AnnouncementStatusSerializer
    implements PrimitiveSerializer<AnnouncementStatus> {
  @override
  final Iterable<Type> types = const [AnnouncementStatus, _$AnnouncementStatus];

  @override
  final String wireName = r'AnnouncementStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnnouncementStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
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
    AnnouncementStatus object, {
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
    required AnnouncementStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
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
  AnnouncementStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnnouncementStatusBuilder();
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
