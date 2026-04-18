// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_approval_current_user_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QuoteApprovalCurrentUserEnum _$automatic =
    const QuoteApprovalCurrentUserEnum._('automatic');
const QuoteApprovalCurrentUserEnum _$manual =
    const QuoteApprovalCurrentUserEnum._('manual');
const QuoteApprovalCurrentUserEnum _$denied =
    const QuoteApprovalCurrentUserEnum._('denied');
const QuoteApprovalCurrentUserEnum _$unknown =
    const QuoteApprovalCurrentUserEnum._('unknown');

QuoteApprovalCurrentUserEnum _$valueOf(String name) {
  switch (name) {
    case 'automatic':
      return _$automatic;
    case 'manual':
      return _$manual;
    case 'denied':
      return _$denied;
    case 'unknown':
      return _$unknown;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<QuoteApprovalCurrentUserEnum> _$values =
    BuiltSet<QuoteApprovalCurrentUserEnum>(const <QuoteApprovalCurrentUserEnum>[
  _$automatic,
  _$manual,
  _$denied,
  _$unknown,
]);

class _$QuoteApprovalCurrentUserEnumMeta {
  const _$QuoteApprovalCurrentUserEnumMeta();
  QuoteApprovalCurrentUserEnum get automatic => _$automatic;
  QuoteApprovalCurrentUserEnum get manual => _$manual;
  QuoteApprovalCurrentUserEnum get denied => _$denied;
  QuoteApprovalCurrentUserEnum get unknown => _$unknown;
  QuoteApprovalCurrentUserEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<QuoteApprovalCurrentUserEnum> get values => _$values;
}

abstract class _$QuoteApprovalCurrentUserEnumMixin {
  // ignore: non_constant_identifier_names
  _$QuoteApprovalCurrentUserEnumMeta get QuoteApprovalCurrentUserEnum =>
      const _$QuoteApprovalCurrentUserEnumMeta();
}

Serializer<QuoteApprovalCurrentUserEnum>
    _$quoteApprovalCurrentUserEnumSerializer =
    _$QuoteApprovalCurrentUserEnumSerializer();

class _$QuoteApprovalCurrentUserEnumSerializer
    implements PrimitiveSerializer<QuoteApprovalCurrentUserEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'automatic': 'automatic',
    'manual': 'manual',
    'denied': 'denied',
    'unknown': 'unknown',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'automatic': 'automatic',
    'manual': 'manual',
    'denied': 'denied',
    'unknown': 'unknown',
  };

  @override
  final Iterable<Type> types = const <Type>[QuoteApprovalCurrentUserEnum];
  @override
  final String wireName = 'QuoteApprovalCurrentUserEnum';

  @override
  Object serialize(Serializers serializers, QuoteApprovalCurrentUserEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  QuoteApprovalCurrentUserEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      QuoteApprovalCurrentUserEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
