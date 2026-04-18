// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_category_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReportCategoryEnum _$spam = const ReportCategoryEnum._('spam');
const ReportCategoryEnum _$legal = const ReportCategoryEnum._('legal');
const ReportCategoryEnum _$violation = const ReportCategoryEnum._('violation');
const ReportCategoryEnum _$other = const ReportCategoryEnum._('other');

ReportCategoryEnum _$valueOf(String name) {
  switch (name) {
    case 'spam':
      return _$spam;
    case 'legal':
      return _$legal;
    case 'violation':
      return _$violation;
    case 'other':
      return _$other;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReportCategoryEnum> _$values =
    BuiltSet<ReportCategoryEnum>(const <ReportCategoryEnum>[
  _$spam,
  _$legal,
  _$violation,
  _$other,
]);

class _$ReportCategoryEnumMeta {
  const _$ReportCategoryEnumMeta();
  ReportCategoryEnum get spam => _$spam;
  ReportCategoryEnum get legal => _$legal;
  ReportCategoryEnum get violation => _$violation;
  ReportCategoryEnum get other => _$other;
  ReportCategoryEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<ReportCategoryEnum> get values => _$values;
}

abstract class _$ReportCategoryEnumMixin {
  // ignore: non_constant_identifier_names
  _$ReportCategoryEnumMeta get ReportCategoryEnum =>
      const _$ReportCategoryEnumMeta();
}

Serializer<ReportCategoryEnum> _$reportCategoryEnumSerializer =
    _$ReportCategoryEnumSerializer();

class _$ReportCategoryEnumSerializer
    implements PrimitiveSerializer<ReportCategoryEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'spam': 'spam',
    'legal': 'legal',
    'violation': 'violation',
    'other': 'other',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'spam': 'spam',
    'legal': 'legal',
    'violation': 'violation',
    'other': 'other',
  };

  @override
  final Iterable<Type> types = const <Type>[ReportCategoryEnum];
  @override
  final String wireName = 'ReportCategoryEnum';

  @override
  Object serialize(Serializers serializers, ReportCategoryEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReportCategoryEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReportCategoryEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
