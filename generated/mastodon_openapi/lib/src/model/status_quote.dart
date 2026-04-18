//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/shallow_quote.dart';
import 'package:mastodon_openapi/src/model/quote.dart';
import 'package:mastodon_openapi/src/model/status.dart';
import 'package:mastodon_openapi/src/model/quote_state_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'status_quote.g.dart';

/// Information about the status being quoted, if any
///
/// Properties:
/// * [state] - The state of the quote. Unknown values should be treated as `unauthorized`.
/// * [quotedStatus]
/// * [quotedStatusId] - The identifier of the status being quoted. This will be `null`, unless the `state` attribute is one of `accepted`, `blocked_account`, `blocked_domain` or `muted_account`, or the wrapping [Status]({{< relref \"entities/status\" >}}) entity has been obtained by calling `DELETE /api/v1/statuses/:id`.
@BuiltValue()
abstract class StatusQuote implements Built<StatusQuote, StatusQuoteBuilder> {
  /// One Of [Quote], [ShallowQuote]
  OneOf get oneOf;

  StatusQuote._();

  factory StatusQuote([void updates(StatusQuoteBuilder b)]) = _$StatusQuote;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatusQuoteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatusQuote> get serializer => _$StatusQuoteSerializer();
}

class _$StatusQuoteSerializer implements PrimitiveSerializer<StatusQuote> {
  @override
  final Iterable<Type> types = const [StatusQuote, _$StatusQuote];

  @override
  final String wireName = r'StatusQuote';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatusQuote object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    StatusQuote object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  StatusQuote deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatusQuoteBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(Quote),
      FullType(ShallowQuote),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
