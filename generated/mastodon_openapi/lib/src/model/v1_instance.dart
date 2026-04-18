//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/rule.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/v1_instance_stats.dart';
import 'package:mastodon_openapi/src/model/v1_instance_urls.dart';
import 'package:mastodon_openapi/src/model/account.dart';
import 'package:mastodon_openapi/src/model/v1_instance_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_instance.g.dart';

/// Represents the software instance of Mastodon running on this domain.
///
/// Properties:
/// * [approvalRequired] - Whether registrations require moderator approval.
/// * [configuration]
/// * [description] - An HTML-permitted description of the Mastodon site.
/// * [email] - An email that may be contacted for any inquiries.
/// * [invitesEnabled] - Whether invites are enabled.
/// * [languages] - Primary languages of the website and its staff.
/// * [registrations] - Whether registrations are enabled.
/// * [rules] - An itemized list of rules for this website.
/// * [shortDescription] - A short, plain-text description defined by the admin.
/// * [stats]
/// * [title] - The title of the website.
/// * [uri] - The WebFinger domain name of the instance (not a URI/URL).
/// * [urls]
/// * [version] - The version of Mastodon installed on the instance.
/// * [contactAccount]
/// * [thumbnail] - Banner image for the website.
@BuiltValue()
abstract class V1Instance implements Built<V1Instance, V1InstanceBuilder> {
  /// Whether registrations require moderator approval.
  @BuiltValueField(wireName: r'approval_required')
  bool get approvalRequired;

  @BuiltValueField(wireName: r'configuration')
  V1InstanceConfiguration get configuration;

  /// An HTML-permitted description of the Mastodon site.
  @BuiltValueField(wireName: r'description')
  String get description;

  /// An email that may be contacted for any inquiries.
  @BuiltValueField(wireName: r'email')
  String get email;

  /// Whether invites are enabled.
  @BuiltValueField(wireName: r'invites_enabled')
  bool get invitesEnabled;

  /// Primary languages of the website and its staff.
  @BuiltValueField(wireName: r'languages')
  BuiltList<String> get languages;

  /// Whether registrations are enabled.
  @BuiltValueField(wireName: r'registrations')
  bool get registrations;

  /// An itemized list of rules for this website.
  @BuiltValueField(wireName: r'rules')
  BuiltList<Rule> get rules;

  /// A short, plain-text description defined by the admin.
  @BuiltValueField(wireName: r'short_description')
  String get shortDescription;

  @BuiltValueField(wireName: r'stats')
  V1InstanceStats get stats;

  /// The title of the website.
  @BuiltValueField(wireName: r'title')
  String get title;

  /// The WebFinger domain name of the instance (not a URI/URL).
  @BuiltValueField(wireName: r'uri')
  String get uri;

  @BuiltValueField(wireName: r'urls')
  V1InstanceUrls get urls;

  /// The version of Mastodon installed on the instance.
  @BuiltValueField(wireName: r'version')
  String get version;

  @BuiltValueField(wireName: r'contact_account')
  Account? get contactAccount;

  /// Banner image for the website.
  @BuiltValueField(wireName: r'thumbnail')
  String? get thumbnail;

  V1Instance._();

  factory V1Instance([void updates(V1InstanceBuilder b)]) = _$V1Instance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1InstanceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1Instance> get serializer => _$V1InstanceSerializer();
}

class _$V1InstanceSerializer implements PrimitiveSerializer<V1Instance> {
  @override
  final Iterable<Type> types = const [V1Instance, _$V1Instance];

  @override
  final String wireName = r'V1Instance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1Instance object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'approval_required';
    yield serializers.serialize(
      object.approvalRequired,
      specifiedType: const FullType(bool),
    );
    yield r'configuration';
    yield serializers.serialize(
      object.configuration,
      specifiedType: const FullType(V1InstanceConfiguration),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'invites_enabled';
    yield serializers.serialize(
      object.invitesEnabled,
      specifiedType: const FullType(bool),
    );
    yield r'languages';
    yield serializers.serialize(
      object.languages,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'registrations';
    yield serializers.serialize(
      object.registrations,
      specifiedType: const FullType(bool),
    );
    yield r'rules';
    yield serializers.serialize(
      object.rules,
      specifiedType: const FullType(BuiltList, [FullType(Rule)]),
    );
    yield r'short_description';
    yield serializers.serialize(
      object.shortDescription,
      specifiedType: const FullType(String),
    );
    yield r'stats';
    yield serializers.serialize(
      object.stats,
      specifiedType: const FullType(V1InstanceStats),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'uri';
    yield serializers.serialize(
      object.uri,
      specifiedType: const FullType(String),
    );
    yield r'urls';
    yield serializers.serialize(
      object.urls,
      specifiedType: const FullType(V1InstanceUrls),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    if (object.contactAccount != null) {
      yield r'contact_account';
      yield serializers.serialize(
        object.contactAccount,
        specifiedType: const FullType.nullable(Account),
      );
    }
    if (object.thumbnail != null) {
      yield r'thumbnail';
      yield serializers.serialize(
        object.thumbnail,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1Instance object, {
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
    required V1InstanceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'approval_required':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.approvalRequired = valueDes;
          break;
        case r'configuration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1InstanceConfiguration),
          ) as V1InstanceConfiguration;
          result.configuration.replace(valueDes);
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'invites_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.invitesEnabled = valueDes;
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
            specifiedType: const FullType(bool),
          ) as bool;
          result.registrations = valueDes;
          break;
        case r'rules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Rule)]),
          ) as BuiltList<Rule>;
          result.rules.replace(valueDes);
          break;
        case r'short_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.shortDescription = valueDes;
          break;
        case r'stats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1InstanceStats),
          ) as V1InstanceStats;
          result.stats.replace(valueDes);
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uri = valueDes;
          break;
        case r'urls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1InstanceUrls),
          ) as V1InstanceUrls;
          result.urls.replace(valueDes);
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        case r'contact_account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Account),
          ) as Account?;
          if (valueDes == null) continue;
          result.contactAccount.replace(valueDes);
          break;
        case r'thumbnail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.thumbnail = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1Instance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1InstanceBuilder();
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
