//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/instance_configuration_media_attachments.dart';
import 'package:mastodon_openapi/src/model/instance_configuration_polls.dart';
import 'package:mastodon_openapi/src/model/instance_configuration_timelines_access.dart';
import 'package:mastodon_openapi/src/model/instance_configuration_urls.dart';
import 'package:mastodon_openapi/src/model/instance_configuration_translation.dart';
import 'package:mastodon_openapi/src/model/instance_configuration_accounts.dart';
import 'package:mastodon_openapi/src/model/instance_configuration_statuses.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_configuration.g.dart';

/// Configured values and limits for this website.
///
/// Properties:
/// * [accounts]
/// * [mediaAttachments]
/// * [polls]
/// * [statuses]
/// * [translation]
/// * [urls]
/// * [limitedFederation] - Whether federation is limited to explicitly allowed domains.
/// * [timelinesAccess]
@BuiltValue()
abstract class InstanceConfiguration
    implements Built<InstanceConfiguration, InstanceConfigurationBuilder> {
  @BuiltValueField(wireName: r'accounts')
  InstanceConfigurationAccounts get accounts;

  @BuiltValueField(wireName: r'media_attachments')
  InstanceConfigurationMediaAttachments get mediaAttachments;

  @BuiltValueField(wireName: r'polls')
  InstanceConfigurationPolls get polls;

  @BuiltValueField(wireName: r'statuses')
  InstanceConfigurationStatuses get statuses;

  @BuiltValueField(wireName: r'translation')
  InstanceConfigurationTranslation get translation;

  @BuiltValueField(wireName: r'urls')
  InstanceConfigurationUrls get urls;

  /// Whether federation is limited to explicitly allowed domains.
  @BuiltValueField(wireName: r'limited_federation')
  bool? get limitedFederation;

  @BuiltValueField(wireName: r'timelines_access')
  InstanceConfigurationTimelinesAccess? get timelinesAccess;

  InstanceConfiguration._();

  factory InstanceConfiguration(
      [void updates(InstanceConfigurationBuilder b)]) = _$InstanceConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstanceConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceConfiguration> get serializer =>
      _$InstanceConfigurationSerializer();
}

class _$InstanceConfigurationSerializer
    implements PrimitiveSerializer<InstanceConfiguration> {
  @override
  final Iterable<Type> types = const [
    InstanceConfiguration,
    _$InstanceConfiguration
  ];

  @override
  final String wireName = r'InstanceConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accounts';
    yield serializers.serialize(
      object.accounts,
      specifiedType: const FullType(InstanceConfigurationAccounts),
    );
    yield r'media_attachments';
    yield serializers.serialize(
      object.mediaAttachments,
      specifiedType: const FullType(InstanceConfigurationMediaAttachments),
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
    yield r'translation';
    yield serializers.serialize(
      object.translation,
      specifiedType: const FullType(InstanceConfigurationTranslation),
    );
    yield r'urls';
    yield serializers.serialize(
      object.urls,
      specifiedType: const FullType(InstanceConfigurationUrls),
    );
    if (object.limitedFederation != null) {
      yield r'limited_federation';
      yield serializers.serialize(
        object.limitedFederation,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.timelinesAccess != null) {
      yield r'timelines_access';
      yield serializers.serialize(
        object.timelinesAccess,
        specifiedType: const FullType(InstanceConfigurationTimelinesAccess),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceConfiguration object, {
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
    required InstanceConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceConfigurationAccounts),
          ) as InstanceConfigurationAccounts;
          result.accounts.replace(valueDes);
          break;
        case r'media_attachments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(InstanceConfigurationMediaAttachments),
          ) as InstanceConfigurationMediaAttachments;
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
        case r'translation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceConfigurationTranslation),
          ) as InstanceConfigurationTranslation;
          result.translation.replace(valueDes);
          break;
        case r'urls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceConfigurationUrls),
          ) as InstanceConfigurationUrls;
          result.urls.replace(valueDes);
          break;
        case r'limited_federation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.limitedFederation = valueDes;
          break;
        case r'timelines_access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceConfigurationTimelinesAccess),
          ) as InstanceConfigurationTimelinesAccess;
          result.timelinesAccess.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InstanceConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceConfigurationBuilder();
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
