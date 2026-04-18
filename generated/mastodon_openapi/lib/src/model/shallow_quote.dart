//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/quote_state_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'shallow_quote.g.dart';

/// Represents a quote or a quote placeholder, with the current authorization status.
///
/// Properties:
/// * [state] - The state of the quote. Unknown values should be treated as `unauthorized`.
/// * [quotedStatusId] - The identifier of the status being quoted. This will be `null`, unless the `state` attribute is one of `accepted`, `blocked_account`, `blocked_domain` or `muted_account`, or the wrapping [Status]({{< relref \"entities/status\" >}}) entity has been obtained by calling `DELETE /api/v1/statuses/:id`.
@BuiltValue()
abstract class ShallowQuote
    implements Built<ShallowQuote, ShallowQuoteBuilder> {
  /// The state of the quote. Unknown values should be treated as `unauthorized`.
  @BuiltValueField(wireName: r'state')
  QuoteStateEnum get state;
  // enum stateEnum {  pending,  accepted,  rejected,  revoked,  deleted,  unauthorized,  blocked_account,  blocked_domain,  muted_account,  };

  /// The identifier of the status being quoted. This will be `null`, unless the `state` attribute is one of `accepted`, `blocked_account`, `blocked_domain` or `muted_account`, or the wrapping [Status]({{< relref \"entities/status\" >}}) entity has been obtained by calling `DELETE /api/v1/statuses/:id`.
  @BuiltValueField(wireName: r'quoted_status_id')
  String? get quotedStatusId;

  ShallowQuote._();

  factory ShallowQuote([void updates(ShallowQuoteBuilder b)]) = _$ShallowQuote;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShallowQuoteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShallowQuote> get serializer => _$ShallowQuoteSerializer();
}

class _$ShallowQuoteSerializer implements PrimitiveSerializer<ShallowQuote> {
  @override
  final Iterable<Type> types = const [ShallowQuote, _$ShallowQuote];

  @override
  final String wireName = r'ShallowQuote';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShallowQuote object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(QuoteStateEnum),
    );
    if (object.quotedStatusId != null) {
      yield r'quoted_status_id';
      yield serializers.serialize(
        object.quotedStatusId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ShallowQuote object, {
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
    required ShallowQuoteBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuoteStateEnum),
          ) as QuoteStateEnum;
          result.state = valueDes;
          break;
        case r'quoted_status_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.quotedStatusId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ShallowQuote deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShallowQuoteBuilder();
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
