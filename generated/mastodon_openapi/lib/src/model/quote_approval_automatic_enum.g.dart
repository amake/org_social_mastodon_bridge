// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_approval_automatic_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QuoteApprovalAutomaticEnum _$public =
    const QuoteApprovalAutomaticEnum._('public');
const QuoteApprovalAutomaticEnum _$followers =
    const QuoteApprovalAutomaticEnum._('followers');
const QuoteApprovalAutomaticEnum _$following =
    const QuoteApprovalAutomaticEnum._('following');
const QuoteApprovalAutomaticEnum _$unsupportedPolicy =
    const QuoteApprovalAutomaticEnum._('unsupportedPolicy');

QuoteApprovalAutomaticEnum _$valueOf(String name) {
  switch (name) {
    case 'public':
      return _$public;
    case 'followers':
      return _$followers;
    case 'following':
      return _$following;
    case 'unsupportedPolicy':
      return _$unsupportedPolicy;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<QuoteApprovalAutomaticEnum> _$values =
    BuiltSet<QuoteApprovalAutomaticEnum>(const <QuoteApprovalAutomaticEnum>[
  _$public,
  _$followers,
  _$following,
  _$unsupportedPolicy,
]);

class _$QuoteApprovalAutomaticEnumMeta {
  const _$QuoteApprovalAutomaticEnumMeta();
  QuoteApprovalAutomaticEnum get public => _$public;
  QuoteApprovalAutomaticEnum get followers => _$followers;
  QuoteApprovalAutomaticEnum get following => _$following;
  QuoteApprovalAutomaticEnum get unsupportedPolicy => _$unsupportedPolicy;
  QuoteApprovalAutomaticEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<QuoteApprovalAutomaticEnum> get values => _$values;
}

abstract class _$QuoteApprovalAutomaticEnumMixin {
  // ignore: non_constant_identifier_names
  _$QuoteApprovalAutomaticEnumMeta get QuoteApprovalAutomaticEnum =>
      const _$QuoteApprovalAutomaticEnumMeta();
}

Serializer<QuoteApprovalAutomaticEnum> _$quoteApprovalAutomaticEnumSerializer =
    _$QuoteApprovalAutomaticEnumSerializer();

class _$QuoteApprovalAutomaticEnumSerializer
    implements PrimitiveSerializer<QuoteApprovalAutomaticEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'public': 'public',
    'followers': 'followers',
    'following': 'following',
    'unsupportedPolicy': 'unsupported_policy',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'public': 'public',
    'followers': 'followers',
    'following': 'following',
    'unsupported_policy': 'unsupportedPolicy',
  };

  @override
  final Iterable<Type> types = const <Type>[QuoteApprovalAutomaticEnum];
  @override
  final String wireName = 'QuoteApprovalAutomaticEnum';

  @override
  Object serialize(Serializers serializers, QuoteApprovalAutomaticEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  QuoteApprovalAutomaticEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      QuoteApprovalAutomaticEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
