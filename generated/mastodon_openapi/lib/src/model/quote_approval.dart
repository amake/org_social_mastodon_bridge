//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/quote_approval_automatic_enum.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/quote_approval_current_user_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quote_approval.g.dart';

/// Summary of a status' quote approval policy and how it applies to the requesting user.
///
/// Properties:
/// * [automatic] - Describes who is expected to be able to quote that status and have the quote automatically authorized. An empty list means that nobody is expected to be able to quote this post. Other values may be added in the future, so unknown values should be treated as `unsupported_policy`.
/// * [currentUser] - Describes how this status' quote policy applies to the current user.
/// * [manual] - Describes who is expected to have their quotes of this status be manually reviewed by the author before being accepted. An empty list means that nobody is expected to be able to quote this post. Other values may be added in the future, so unknown values should be treated as `unsupported_policy`.
@BuiltValue()
abstract class QuoteApproval
    implements Built<QuoteApproval, QuoteApprovalBuilder> {
  /// Describes who is expected to be able to quote that status and have the quote automatically authorized. An empty list means that nobody is expected to be able to quote this post. Other values may be added in the future, so unknown values should be treated as `unsupported_policy`.
  @BuiltValueField(wireName: r'automatic')
  BuiltList<QuoteApprovalAutomaticEnum> get automatic;

  /// Describes how this status' quote policy applies to the current user.
  @BuiltValueField(wireName: r'current_user')
  QuoteApprovalCurrentUserEnum get currentUser;
  // enum currentUserEnum {  automatic,  manual,  denied,  unknown,  };

  /// Describes who is expected to have their quotes of this status be manually reviewed by the author before being accepted. An empty list means that nobody is expected to be able to quote this post. Other values may be added in the future, so unknown values should be treated as `unsupported_policy`.
  @BuiltValueField(wireName: r'manual')
  BuiltList<QuoteApprovalAutomaticEnum> get manual;

  QuoteApproval._();

  factory QuoteApproval([void updates(QuoteApprovalBuilder b)]) =
      _$QuoteApproval;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuoteApprovalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuoteApproval> get serializer =>
      _$QuoteApprovalSerializer();
}

class _$QuoteApprovalSerializer implements PrimitiveSerializer<QuoteApproval> {
  @override
  final Iterable<Type> types = const [QuoteApproval, _$QuoteApproval];

  @override
  final String wireName = r'QuoteApproval';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuoteApproval object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'automatic';
    yield serializers.serialize(
      object.automatic,
      specifiedType:
          const FullType(BuiltList, [FullType(QuoteApprovalAutomaticEnum)]),
    );
    yield r'current_user';
    yield serializers.serialize(
      object.currentUser,
      specifiedType: const FullType(QuoteApprovalCurrentUserEnum),
    );
    yield r'manual';
    yield serializers.serialize(
      object.manual,
      specifiedType:
          const FullType(BuiltList, [FullType(QuoteApprovalAutomaticEnum)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    QuoteApproval object, {
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
    required QuoteApprovalBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'automatic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(QuoteApprovalAutomaticEnum)]),
          ) as BuiltList<QuoteApprovalAutomaticEnum>;
          result.automatic.replace(valueDes);
          break;
        case r'current_user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuoteApprovalCurrentUserEnum),
          ) as QuoteApprovalCurrentUserEnum;
          result.currentUser = valueDes;
          break;
        case r'manual':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(QuoteApprovalAutomaticEnum)]),
          ) as BuiltList<QuoteApprovalAutomaticEnum>;
          result.manual.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuoteApproval deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuoteApprovalBuilder();
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
