// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appeal_state_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AppealStateEnum _$approved = const AppealStateEnum._('approved');
const AppealStateEnum _$rejected = const AppealStateEnum._('rejected');
const AppealStateEnum _$pending = const AppealStateEnum._('pending');

AppealStateEnum _$valueOf(String name) {
  switch (name) {
    case 'approved':
      return _$approved;
    case 'rejected':
      return _$rejected;
    case 'pending':
      return _$pending;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AppealStateEnum> _$values =
    BuiltSet<AppealStateEnum>(const <AppealStateEnum>[
  _$approved,
  _$rejected,
  _$pending,
]);

class _$AppealStateEnumMeta {
  const _$AppealStateEnumMeta();
  AppealStateEnum get approved => _$approved;
  AppealStateEnum get rejected => _$rejected;
  AppealStateEnum get pending => _$pending;
  AppealStateEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<AppealStateEnum> get values => _$values;
}

abstract class _$AppealStateEnumMixin {
  // ignore: non_constant_identifier_names
  _$AppealStateEnumMeta get AppealStateEnum => const _$AppealStateEnumMeta();
}

Serializer<AppealStateEnum> _$appealStateEnumSerializer =
    _$AppealStateEnumSerializer();

class _$AppealStateEnumSerializer
    implements PrimitiveSerializer<AppealStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'approved': 'approved',
    'rejected': 'rejected',
    'pending': 'pending',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'approved': 'approved',
    'rejected': 'rejected',
    'pending': 'pending',
  };

  @override
  final Iterable<Type> types = const <Type>[AppealStateEnum];
  @override
  final String wireName = 'AppealStateEnum';

  @override
  Object serialize(Serializers serializers, AppealStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AppealStateEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AppealStateEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
