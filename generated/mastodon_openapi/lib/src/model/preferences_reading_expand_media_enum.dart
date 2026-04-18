//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'preferences_reading_expand_media_enum.g.dart';

class PreferencesReadingExpandMediaEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'default')
  static const PreferencesReadingExpandMediaEnum default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'show_all')
  static const PreferencesReadingExpandMediaEnum showAll = _$showAll;
  @BuiltValueEnumConst(wireName: r'hide_all')
  static const PreferencesReadingExpandMediaEnum hideAll = _$hideAll;

  static Serializer<PreferencesReadingExpandMediaEnum> get serializer =>
      _$preferencesReadingExpandMediaEnumSerializer;

  const PreferencesReadingExpandMediaEnum._(String name) : super(name);

  static BuiltSet<PreferencesReadingExpandMediaEnum> get values => _$values;
  static PreferencesReadingExpandMediaEnum valueOf(String name) =>
      _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PreferencesReadingExpandMediaEnumMixin = Object
    with _$PreferencesReadingExpandMediaEnumMixin;
