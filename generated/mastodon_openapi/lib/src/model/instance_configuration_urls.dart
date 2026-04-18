//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_configuration_urls.g.dart';

/// URLs of interest for clients apps.
///
/// Properties:
/// * [about] - The URL of the server's about page.
/// * [privacyPolicy] - The URL of the server's privacy policy.
/// * [status] - The URL of the server's status page, if configured.
/// * [streaming] - The Websockets URL for connecting to the streaming API.
/// * [termsOfService] - The URL of the server's current terms of service, if any.
@BuiltValue()
abstract class InstanceConfigurationUrls
    implements
        Built<InstanceConfigurationUrls, InstanceConfigurationUrlsBuilder> {
  /// The URL of the server's about page.
  @BuiltValueField(wireName: r'about')
  String? get about;

  /// The URL of the server's privacy policy.
  @BuiltValueField(wireName: r'privacy_policy')
  String? get privacyPolicy;

  /// The URL of the server's status page, if configured.
  @BuiltValueField(wireName: r'status')
  String? get status;

  /// The Websockets URL for connecting to the streaming API.
  @BuiltValueField(wireName: r'streaming')
  String? get streaming;

  /// The URL of the server's current terms of service, if any.
  @BuiltValueField(wireName: r'terms_of_service')
  String? get termsOfService;

  InstanceConfigurationUrls._();

  factory InstanceConfigurationUrls(
          [void updates(InstanceConfigurationUrlsBuilder b)]) =
      _$InstanceConfigurationUrls;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstanceConfigurationUrlsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceConfigurationUrls> get serializer =>
      _$InstanceConfigurationUrlsSerializer();
}

class _$InstanceConfigurationUrlsSerializer
    implements PrimitiveSerializer<InstanceConfigurationUrls> {
  @override
  final Iterable<Type> types = const [
    InstanceConfigurationUrls,
    _$InstanceConfigurationUrls
  ];

  @override
  final String wireName = r'InstanceConfigurationUrls';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceConfigurationUrls object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.about != null) {
      yield r'about';
      yield serializers.serialize(
        object.about,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.privacyPolicy != null) {
      yield r'privacy_policy';
      yield serializers.serialize(
        object.privacyPolicy,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.streaming != null) {
      yield r'streaming';
      yield serializers.serialize(
        object.streaming,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.termsOfService != null) {
      yield r'terms_of_service';
      yield serializers.serialize(
        object.termsOfService,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceConfigurationUrls object, {
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
    required InstanceConfigurationUrlsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'about':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.about = valueDes;
          break;
        case r'privacy_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.privacyPolicy = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'streaming':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.streaming = valueDes;
          break;
        case r'terms_of_service':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.termsOfService = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InstanceConfigurationUrls deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceConfigurationUrlsBuilder();
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
