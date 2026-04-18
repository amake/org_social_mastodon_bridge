//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_api_versions.g.dart';

/// Machine-readable API version information that allows clients to determine which API endpoints and features are available on this server. This provides a more reliable method for capability detection than parsing human-readable version strings, especially for forks and development builds. It contains at least a `mastodon` attribute, and other implementations may have their own additional attributes.
///
/// Properties:
/// * [mastodon] - API version number that increments with substantial API changes. Clients can use this value to determine API compatibility rather than parsing complex version strings like \"4.4+hometown-123\" from forks or nightly builds. This number increases independently of the human-readable version number.
@BuiltValue()
abstract class InstanceApiVersions
    implements Built<InstanceApiVersions, InstanceApiVersionsBuilder> {
  /// API version number that increments with substantial API changes. Clients can use this value to determine API compatibility rather than parsing complex version strings like \"4.4+hometown-123\" from forks or nightly builds. This number increases independently of the human-readable version number.
  @BuiltValueField(wireName: r'mastodon')
  int? get mastodon;

  InstanceApiVersions._();

  factory InstanceApiVersions([void updates(InstanceApiVersionsBuilder b)]) =
      _$InstanceApiVersions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstanceApiVersionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceApiVersions> get serializer =>
      _$InstanceApiVersionsSerializer();
}

class _$InstanceApiVersionsSerializer
    implements PrimitiveSerializer<InstanceApiVersions> {
  @override
  final Iterable<Type> types = const [
    InstanceApiVersions,
    _$InstanceApiVersions
  ];

  @override
  final String wireName = r'InstanceApiVersions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceApiVersions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.mastodon != null) {
      yield r'mastodon';
      yield serializers.serialize(
        object.mastodon,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceApiVersions object, {
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
    required InstanceApiVersionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mastodon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.mastodon = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InstanceApiVersions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceApiVersionsBuilder();
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
