//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/status.dart';
import 'package:mastodon_openapi/src/model/quote_state_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quote.g.dart';

/// Represents a quote or a quote placeholder, with the current authorization status.
///
/// Properties:
/// * [state] - The state of the quote. Unknown values should be treated as `unauthorized`.
/// * [quotedStatus]
@BuiltValue()
abstract class Quote implements Built<Quote, QuoteBuilder> {
  /// The state of the quote. Unknown values should be treated as `unauthorized`.
  @BuiltValueField(wireName: r'state')
  QuoteStateEnum get state;
  // enum stateEnum {  pending,  accepted,  rejected,  revoked,  deleted,  unauthorized,  blocked_account,  blocked_domain,  muted_account,  };

  @BuiltValueField(wireName: r'quoted_status')
  Status? get quotedStatus;

  Quote._();

  factory Quote([void updates(QuoteBuilder b)]) = _$Quote;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuoteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Quote> get serializer => _$QuoteSerializer();
}

class _$QuoteSerializer implements PrimitiveSerializer<Quote> {
  @override
  final Iterable<Type> types = const [Quote, _$Quote];

  @override
  final String wireName = r'Quote';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Quote object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(QuoteStateEnum),
    );
    if (object.quotedStatus != null) {
      yield r'quoted_status';
      yield serializers.serialize(
        object.quotedStatus,
        specifiedType: const FullType.nullable(Status),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Quote object, {
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
    required QuoteBuilder result,
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
        case r'quoted_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Status),
          ) as Status?;
          if (valueDes == null) continue;
          result.quotedStatus.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Quote deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuoteBuilder();
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
