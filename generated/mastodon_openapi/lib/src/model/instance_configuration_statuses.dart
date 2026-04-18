//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_configuration_statuses.g.dart';

/// Limits related to authoring statuses.
///
/// Properties:
/// * [charactersReservedPerUrl] - Each URL in a status will be assumed to be exactly this many characters.
/// * [maxCharacters] - The maximum number of allowed characters per status.
/// * [maxMediaAttachments] - The maximum number of media attachments that can be added to a status.
@BuiltValue()
abstract class InstanceConfigurationStatuses
    implements
        Built<InstanceConfigurationStatuses,
            InstanceConfigurationStatusesBuilder> {
  /// Each URL in a status will be assumed to be exactly this many characters.
  @BuiltValueField(wireName: r'characters_reserved_per_url')
  int get charactersReservedPerUrl;

  /// The maximum number of allowed characters per status.
  @BuiltValueField(wireName: r'max_characters')
  int get maxCharacters;

  /// The maximum number of media attachments that can be added to a status.
  @BuiltValueField(wireName: r'max_media_attachments')
  int get maxMediaAttachments;

  InstanceConfigurationStatuses._();

  factory InstanceConfigurationStatuses(
          [void updates(InstanceConfigurationStatusesBuilder b)]) =
      _$InstanceConfigurationStatuses;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstanceConfigurationStatusesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceConfigurationStatuses> get serializer =>
      _$InstanceConfigurationStatusesSerializer();
}

class _$InstanceConfigurationStatusesSerializer
    implements PrimitiveSerializer<InstanceConfigurationStatuses> {
  @override
  final Iterable<Type> types = const [
    InstanceConfigurationStatuses,
    _$InstanceConfigurationStatuses
  ];

  @override
  final String wireName = r'InstanceConfigurationStatuses';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceConfigurationStatuses object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'characters_reserved_per_url';
    yield serializers.serialize(
      object.charactersReservedPerUrl,
      specifiedType: const FullType(int),
    );
    yield r'max_characters';
    yield serializers.serialize(
      object.maxCharacters,
      specifiedType: const FullType(int),
    );
    yield r'max_media_attachments';
    yield serializers.serialize(
      object.maxMediaAttachments,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceConfigurationStatuses object, {
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
    required InstanceConfigurationStatusesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'characters_reserved_per_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.charactersReservedPerUrl = valueDes;
          break;
        case r'max_characters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxCharacters = valueDes;
          break;
        case r'max_media_attachments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxMediaAttachments = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InstanceConfigurationStatuses deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceConfigurationStatusesBuilder();
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
