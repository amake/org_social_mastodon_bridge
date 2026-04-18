//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/account.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'preview_card_author.g.dart';

/// Represents an author in a rich preview card.
///
/// Properties:
/// * [name] - The original resource author's name. Replaces the deprecated `author_name` attribute of the preview card.
/// * [url] - A link to the author of the original resource. Replaces the deprecated `author_url` attribute of the preview card.
/// * [account]
@BuiltValue()
abstract class PreviewCardAuthor
    implements Built<PreviewCardAuthor, PreviewCardAuthorBuilder> {
  /// The original resource author's name. Replaces the deprecated `author_name` attribute of the preview card.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// A link to the author of the original resource. Replaces the deprecated `author_url` attribute of the preview card.
  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'account')
  Account? get account;

  PreviewCardAuthor._();

  factory PreviewCardAuthor([void updates(PreviewCardAuthorBuilder b)]) =
      _$PreviewCardAuthor;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreviewCardAuthorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreviewCardAuthor> get serializer =>
      _$PreviewCardAuthorSerializer();
}

class _$PreviewCardAuthorSerializer
    implements PrimitiveSerializer<PreviewCardAuthor> {
  @override
  final Iterable<Type> types = const [PreviewCardAuthor, _$PreviewCardAuthor];

  @override
  final String wireName = r'PreviewCardAuthor';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreviewCardAuthor object, {
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
    if (object.account != null) {
      yield r'account';
      yield serializers.serialize(
        object.account,
        specifiedType: const FullType.nullable(Account),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PreviewCardAuthor object, {
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
    required PreviewCardAuthorBuilder result,
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
        case r'account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Account),
          ) as Account?;
          if (valueDes == null) continue;
          result.account.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreviewCardAuthor deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreviewCardAuthorBuilder();
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
