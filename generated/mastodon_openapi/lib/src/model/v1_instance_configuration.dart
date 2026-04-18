//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/instance_configuration_polls.dart';
import 'package:mastodon_openapi/src/model/v1_instance_configuration_media_attachments.dart';
import 'package:mastodon_openapi/src/model/instance_configuration_statuses.dart';
import 'package:mastodon_openapi/src/model/v1_instance_configuration_accounts.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_instance_configuration.g.dart';

/// Configured values and limits for this website.
///
/// Properties:
/// * [accounts]
/// * [mediaAttachments]
/// * [polls]
/// * [statuses]
@BuiltValue()
abstract class V1InstanceConfiguration
    implements Built<V1InstanceConfiguration, V1InstanceConfigurationBuilder> {
  @BuiltValueField(wireName: r'accounts')
  V1InstanceConfigurationAccounts get accounts;

  @BuiltValueField(wireName: r'media_attachments')
  V1InstanceConfigurationMediaAttachments get mediaAttachments;

  @BuiltValueField(wireName: r'polls')
  InstanceConfigurationPolls get polls;

  @BuiltValueField(wireName: r'statuses')
  InstanceConfigurationStatuses get statuses;

  V1InstanceConfiguration._();

  factory V1InstanceConfiguration(
          [void updates(V1InstanceConfigurationBuilder b)]) =
      _$V1InstanceConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1InstanceConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1InstanceConfiguration> get serializer =>
      _$V1InstanceConfigurationSerializer();
}

class _$V1InstanceConfigurationSerializer
    implements PrimitiveSerializer<V1InstanceConfiguration> {
  @override
  final Iterable<Type> types = const [
    V1InstanceConfiguration,
    _$V1InstanceConfiguration
  ];

  @override
  final String wireName = r'V1InstanceConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1InstanceConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accounts';
    yield serializers.serialize(
      object.accounts,
      specifiedType: const FullType(V1InstanceConfigurationAccounts),
    );
    yield r'media_attachments';
    yield serializers.serialize(
      object.mediaAttachments,
      specifiedType: const FullType(V1InstanceConfigurationMediaAttachments),
    );
    yield r'polls';
    yield serializers.serialize(
      object.polls,
      specifiedType: const FullType(InstanceConfigurationPolls),
    );
    yield r'statuses';
    yield serializers.serialize(
      object.statuses,
      specifiedType: const FullType(InstanceConfigurationStatuses),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1InstanceConfiguration object, {
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
    required V1InstanceConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1InstanceConfigurationAccounts),
          ) as V1InstanceConfigurationAccounts;
          result.accounts.replace(valueDes);
          break;
        case r'media_attachments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(V1InstanceConfigurationMediaAttachments),
          ) as V1InstanceConfigurationMediaAttachments;
          result.mediaAttachments.replace(valueDes);
          break;
        case r'polls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceConfigurationPolls),
          ) as InstanceConfigurationPolls;
          result.polls.replace(valueDes);
          break;
        case r'statuses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceConfigurationStatuses),
          ) as InstanceConfigurationStatuses;
          result.statuses.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1InstanceConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1InstanceConfigurationBuilder();
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
