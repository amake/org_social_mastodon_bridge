// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_reading_expand_media_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PreferencesReadingExpandMediaEnum _$default_ =
    const PreferencesReadingExpandMediaEnum._('default_');
const PreferencesReadingExpandMediaEnum _$showAll =
    const PreferencesReadingExpandMediaEnum._('showAll');
const PreferencesReadingExpandMediaEnum _$hideAll =
    const PreferencesReadingExpandMediaEnum._('hideAll');

PreferencesReadingExpandMediaEnum _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'showAll':
      return _$showAll;
    case 'hideAll':
      return _$hideAll;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PreferencesReadingExpandMediaEnum> _$values = BuiltSet<
    PreferencesReadingExpandMediaEnum>(const <PreferencesReadingExpandMediaEnum>[
  _$default_,
  _$showAll,
  _$hideAll,
]);

class _$PreferencesReadingExpandMediaEnumMeta {
  const _$PreferencesReadingExpandMediaEnumMeta();
  PreferencesReadingExpandMediaEnum get default_ => _$default_;
  PreferencesReadingExpandMediaEnum get showAll => _$showAll;
  PreferencesReadingExpandMediaEnum get hideAll => _$hideAll;
  PreferencesReadingExpandMediaEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<PreferencesReadingExpandMediaEnum> get values => _$values;
}

abstract class _$PreferencesReadingExpandMediaEnumMixin {
  // ignore: non_constant_identifier_names
  _$PreferencesReadingExpandMediaEnumMeta
      get PreferencesReadingExpandMediaEnum =>
          const _$PreferencesReadingExpandMediaEnumMeta();
}

Serializer<PreferencesReadingExpandMediaEnum>
    _$preferencesReadingExpandMediaEnumSerializer =
    _$PreferencesReadingExpandMediaEnumSerializer();

class _$PreferencesReadingExpandMediaEnumSerializer
    implements PrimitiveSerializer<PreferencesReadingExpandMediaEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'showAll': 'show_all',
    'hideAll': 'hide_all',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'show_all': 'showAll',
    'hide_all': 'hideAll',
  };

  @override
  final Iterable<Type> types = const <Type>[PreferencesReadingExpandMediaEnum];
  @override
  final String wireName = 'PreferencesReadingExpandMediaEnum';

  @override
  Object serialize(
          Serializers serializers, PreferencesReadingExpandMediaEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PreferencesReadingExpandMediaEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PreferencesReadingExpandMediaEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
