//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/preferences_reading_expand_media_enum.dart';
import 'package:mastodon_openapi/src/model/status_visibility_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'preferences.g.dart';

/// Represents a user's preferences.
///
/// Properties:
/// * [postingColonDefaultColonSensitive] - Default sensitivity flag for new posts. Equivalent to [CredentialAccount#source\\[sensitive\\]]({{< relref \"entities/Account#source-sensitive\" >}}).
/// * [postingColonDefaultColonVisibility] - Default visibility for new posts. Equivalent to [CredentialAccount#source\\[privacy\\]]({{< relref \"entities/Account#source-privacy\" >}}).
/// * [readingColonExpandColonMedia] - Whether media attachments should be automatically displayed or blurred/hidden.
/// * [readingColonExpandColonSpoilers] - Whether CWs should be expanded by default.
/// * [postingColonDefaultColonLanguage] - Default language for new posts. Equivalent to [CredentialAccount#source\\[language\\]]({{< relref \"entities/Account#source-language\" >}})
@BuiltValue()
abstract class Preferences implements Built<Preferences, PreferencesBuilder> {
  /// Default sensitivity flag for new posts. Equivalent to [CredentialAccount#source\\[sensitive\\]]({{< relref \"entities/Account#source-sensitive\" >}}).
  @BuiltValueField(wireName: r'posting:default:sensitive')
  bool get postingColonDefaultColonSensitive;

  /// Default visibility for new posts. Equivalent to [CredentialAccount#source\\[privacy\\]]({{< relref \"entities/Account#source-privacy\" >}}).
  @BuiltValueField(wireName: r'posting:default:visibility')
  StatusVisibilityEnum get postingColonDefaultColonVisibility;
  // enum postingColonDefaultColonVisibilityEnum {  public,  unlisted,  private,  direct,  };

  /// Whether media attachments should be automatically displayed or blurred/hidden.
  @BuiltValueField(wireName: r'reading:expand:media')
  PreferencesReadingExpandMediaEnum get readingColonExpandColonMedia;
  // enum readingColonExpandColonMediaEnum {  default,  show_all,  hide_all,  };

  /// Whether CWs should be expanded by default.
  @BuiltValueField(wireName: r'reading:expand:spoilers')
  bool get readingColonExpandColonSpoilers;

  /// Default language for new posts. Equivalent to [CredentialAccount#source\\[language\\]]({{< relref \"entities/Account#source-language\" >}})
  @BuiltValueField(wireName: r'posting:default:language')
  String? get postingColonDefaultColonLanguage;

  Preferences._();

  factory Preferences([void updates(PreferencesBuilder b)]) = _$Preferences;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreferencesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Preferences> get serializer => _$PreferencesSerializer();
}

class _$PreferencesSerializer implements PrimitiveSerializer<Preferences> {
  @override
  final Iterable<Type> types = const [Preferences, _$Preferences];

  @override
  final String wireName = r'Preferences';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Preferences object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'posting:default:sensitive';
    yield serializers.serialize(
      object.postingColonDefaultColonSensitive,
      specifiedType: const FullType(bool),
    );
    yield r'posting:default:visibility';
    yield serializers.serialize(
      object.postingColonDefaultColonVisibility,
      specifiedType: const FullType(StatusVisibilityEnum),
    );
    yield r'reading:expand:media';
    yield serializers.serialize(
      object.readingColonExpandColonMedia,
      specifiedType: const FullType(PreferencesReadingExpandMediaEnum),
    );
    yield r'reading:expand:spoilers';
    yield serializers.serialize(
      object.readingColonExpandColonSpoilers,
      specifiedType: const FullType(bool),
    );
    if (object.postingColonDefaultColonLanguage != null) {
      yield r'posting:default:language';
      yield serializers.serialize(
        object.postingColonDefaultColonLanguage,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Preferences object, {
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
    required PreferencesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'posting:default:sensitive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.postingColonDefaultColonSensitive = valueDes;
          break;
        case r'posting:default:visibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StatusVisibilityEnum),
          ) as StatusVisibilityEnum;
          result.postingColonDefaultColonVisibility = valueDes;
          break;
        case r'reading:expand:media':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PreferencesReadingExpandMediaEnum),
          ) as PreferencesReadingExpandMediaEnum;
          result.readingColonExpandColonMedia = valueDes;
          break;
        case r'reading:expand:spoilers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.readingColonExpandColonSpoilers = valueDes;
          break;
        case r'posting:default:language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.postingColonDefaultColonLanguage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Preferences deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreferencesBuilder();
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
