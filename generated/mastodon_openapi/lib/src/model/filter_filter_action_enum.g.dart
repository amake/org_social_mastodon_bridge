// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_filter_action_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FilterFilterActionEnum _$warn = const FilterFilterActionEnum._('warn');
const FilterFilterActionEnum _$hide_ = const FilterFilterActionEnum._('hide_');
const FilterFilterActionEnum _$blur = const FilterFilterActionEnum._('blur');

FilterFilterActionEnum _$valueOf(String name) {
  switch (name) {
    case 'warn':
      return _$warn;
    case 'hide_':
      return _$hide_;
    case 'blur':
      return _$blur;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FilterFilterActionEnum> _$values =
    BuiltSet<FilterFilterActionEnum>(const <FilterFilterActionEnum>[
  _$warn,
  _$hide_,
  _$blur,
]);

class _$FilterFilterActionEnumMeta {
  const _$FilterFilterActionEnumMeta();
  FilterFilterActionEnum get warn => _$warn;
  FilterFilterActionEnum get hide_ => _$hide_;
  FilterFilterActionEnum get blur => _$blur;
  FilterFilterActionEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<FilterFilterActionEnum> get values => _$values;
}

abstract class _$FilterFilterActionEnumMixin {
  // ignore: non_constant_identifier_names
  _$FilterFilterActionEnumMeta get FilterFilterActionEnum =>
      const _$FilterFilterActionEnumMeta();
}

Serializer<FilterFilterActionEnum> _$filterFilterActionEnumSerializer =
    _$FilterFilterActionEnumSerializer();

class _$FilterFilterActionEnumSerializer
    implements PrimitiveSerializer<FilterFilterActionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'warn': 'warn',
    'hide_': 'hide',
    'blur': 'blur',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'warn': 'warn',
    'hide': 'hide_',
    'blur': 'blur',
  };

  @override
  final Iterable<Type> types = const <Type>[FilterFilterActionEnum];
  @override
  final String wireName = 'FilterFilterActionEnum';

  @override
  Object serialize(Serializers serializers, FilterFilterActionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FilterFilterActionEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FilterFilterActionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
