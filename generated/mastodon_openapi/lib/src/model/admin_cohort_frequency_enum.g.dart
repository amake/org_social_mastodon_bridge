// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_cohort_frequency_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AdminCohortFrequencyEnum _$day = const AdminCohortFrequencyEnum._('day');
const AdminCohortFrequencyEnum _$month =
    const AdminCohortFrequencyEnum._('month');

AdminCohortFrequencyEnum _$valueOf(String name) {
  switch (name) {
    case 'day':
      return _$day;
    case 'month':
      return _$month;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AdminCohortFrequencyEnum> _$values =
    BuiltSet<AdminCohortFrequencyEnum>(const <AdminCohortFrequencyEnum>[
  _$day,
  _$month,
]);

class _$AdminCohortFrequencyEnumMeta {
  const _$AdminCohortFrequencyEnumMeta();
  AdminCohortFrequencyEnum get day => _$day;
  AdminCohortFrequencyEnum get month => _$month;
  AdminCohortFrequencyEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<AdminCohortFrequencyEnum> get values => _$values;
}

abstract class _$AdminCohortFrequencyEnumMixin {
  // ignore: non_constant_identifier_names
  _$AdminCohortFrequencyEnumMeta get AdminCohortFrequencyEnum =>
      const _$AdminCohortFrequencyEnumMeta();
}

Serializer<AdminCohortFrequencyEnum> _$adminCohortFrequencyEnumSerializer =
    _$AdminCohortFrequencyEnumSerializer();

class _$AdminCohortFrequencyEnumSerializer
    implements PrimitiveSerializer<AdminCohortFrequencyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'day': 'day',
    'month': 'month',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'day': 'day',
    'month': 'month',
  };

  @override
  final Iterable<Type> types = const <Type>[AdminCohortFrequencyEnum];
  @override
  final String wireName = 'AdminCohortFrequencyEnum';

  @override
  Object serialize(Serializers serializers, AdminCohortFrequencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AdminCohortFrequencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AdminCohortFrequencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
