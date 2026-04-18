//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/instance_registrations.dart';
import 'package:mastodon_openapi/src/model/instance_thumbnail.dart';
import 'package:mastodon_openapi/src/model/rule.dart';
import 'package:mastodon_openapi/src/model/instance_api_versions.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/instance_usage.dart';
import 'package:mastodon_openapi/src/model/instance_configuration.dart';
import 'package:mastodon_openapi/src/model/instance_contact.dart';
import 'package:mastodon_openapi/src/model/instance_icon.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance.g.dart';

/// Represents the software instance of Mastodon running on this domain.
///
/// Properties:
/// * [configuration]
/// * [contact]
/// * [description] - A short, plain-text description defined by the admin.
/// * [domain] - The WebFinger domain name of the server.
/// * [languages] - Primary languages of the website and its staff.
/// * [registrations]
/// * [rules] - An itemized list of rules for this website.
/// * [sourceUrl] - The URL for the source code of the software running on this server, per the AGPL license requirements.
/// * [thumbnail]
/// * [title] - The title of the website.
/// * [usage]
/// * [version] - The version of Mastodon installed on the server.
/// * [apiVersions]
/// * [icon] - The list of available size variants for this server's configured icon.
@BuiltValue()
abstract class Instance implements Built<Instance, InstanceBuilder> {
  @BuiltValueField(wireName: r'configuration')
  InstanceConfiguration get configuration;

  @BuiltValueField(wireName: r'contact')
  InstanceContact get contact;

  /// A short, plain-text description defined by the admin.
  @BuiltValueField(wireName: r'description')
  String get description;

  /// The WebFinger domain name of the server.
  @BuiltValueField(wireName: r'domain')
  String get domain;

  /// Primary languages of the website and its staff.
  @BuiltValueField(wireName: r'languages')
  BuiltList<String> get languages;

  @BuiltValueField(wireName: r'registrations')
  InstanceRegistrations get registrations;

  /// An itemized list of rules for this website.
  @BuiltValueField(wireName: r'rules')
  BuiltList<Rule> get rules;

  /// The URL for the source code of the software running on this server, per the AGPL license requirements.
  @BuiltValueField(wireName: r'source_url')
  String get sourceUrl;

  @BuiltValueField(wireName: r'thumbnail')
  InstanceThumbnail get thumbnail;

  /// The title of the website.
  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'usage')
  InstanceUsage get usage;

  /// The version of Mastodon installed on the server.
  @BuiltValueField(wireName: r'version')
  String get version;

  @BuiltValueField(wireName: r'api_versions')
  InstanceApiVersions? get apiVersions;

  /// The list of available size variants for this server's configured icon.
  @BuiltValueField(wireName: r'icon')
  BuiltList<InstanceIcon>? get icon;

  Instance._();

  factory Instance([void updates(InstanceBuilder b)]) = _$Instance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstanceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Instance> get serializer => _$InstanceSerializer();
}

class _$InstanceSerializer implements PrimitiveSerializer<Instance> {
  @override
  final Iterable<Type> types = const [Instance, _$Instance];

  @override
  final String wireName = r'Instance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Instance object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'configuration';
    yield serializers.serialize(
      object.configuration,
      specifiedType: const FullType(InstanceConfiguration),
    );
    yield r'contact';
    yield serializers.serialize(
      object.contact,
      specifiedType: const FullType(InstanceContact),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(String),
    );
    yield r'languages';
    yield serializers.serialize(
      object.languages,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'registrations';
    yield serializers.serialize(
      object.registrations,
      specifiedType: const FullType(InstanceRegistrations),
    );
    yield r'rules';
    yield serializers.serialize(
      object.rules,
      specifiedType: const FullType(BuiltList, [FullType(Rule)]),
    );
    yield r'source_url';
    yield serializers.serialize(
      object.sourceUrl,
      specifiedType: const FullType(String),
    );
    yield r'thumbnail';
    yield serializers.serialize(
      object.thumbnail,
      specifiedType: const FullType(InstanceThumbnail),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'usage';
    yield serializers.serialize(
      object.usage,
      specifiedType: const FullType(InstanceUsage),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    if (object.apiVersions != null) {
      yield r'api_versions';
      yield serializers.serialize(
        object.apiVersions,
        specifiedType: const FullType(InstanceApiVersions),
      );
    }
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(InstanceIcon)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Instance object, {
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
    required InstanceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'configuration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceConfiguration),
          ) as InstanceConfiguration;
          result.configuration.replace(valueDes);
          break;
        case r'contact':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceContact),
          ) as InstanceContact;
          result.contact.replace(valueDes);
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        case r'languages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.languages.replace(valueDes);
          break;
        case r'registrations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceRegistrations),
          ) as InstanceRegistrations;
          result.registrations.replace(valueDes);
          break;
        case r'rules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Rule)]),
          ) as BuiltList<Rule>;
          result.rules.replace(valueDes);
          break;
        case r'source_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceUrl = valueDes;
          break;
        case r'thumbnail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceThumbnail),
          ) as InstanceThumbnail;
          result.thumbnail.replace(valueDes);
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'usage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceUsage),
          ) as InstanceUsage;
          result.usage.replace(valueDes);
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        case r'api_versions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceApiVersions),
          ) as InstanceApiVersions;
          result.apiVersions.replace(valueDes);
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(InstanceIcon)]),
          ) as BuiltList<InstanceIcon>?;
          if (valueDes == null) continue;
          result.icon.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Instance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceBuilder();
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
