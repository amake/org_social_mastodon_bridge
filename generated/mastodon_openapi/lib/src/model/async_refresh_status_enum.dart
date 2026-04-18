//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'async_refresh_status_enum.g.dart';

class AsyncRefreshStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'running')
  static const AsyncRefreshStatusEnum running = _$running;
  @BuiltValueEnumConst(wireName: r'finished')
  static const AsyncRefreshStatusEnum finished = _$finished;

  static Serializer<AsyncRefreshStatusEnum> get serializer =>
      _$asyncRefreshStatusEnumSerializer;

  const AsyncRefreshStatusEnum._(String name) : super(name);

  static BuiltSet<AsyncRefreshStatusEnum> get values => _$values;
  static AsyncRefreshStatusEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AsyncRefreshStatusEnumMixin = Object
    with _$AsyncRefreshStatusEnumMixin;
