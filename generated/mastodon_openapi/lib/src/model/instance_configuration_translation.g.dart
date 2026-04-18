// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_configuration_translation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceConfigurationTranslation
    extends InstanceConfigurationTranslation {
  @override
  final bool enabled;

  factory _$InstanceConfigurationTranslation(
          [void Function(InstanceConfigurationTranslationBuilder)? updates]) =>
      (InstanceConfigurationTranslationBuilder()..update(updates))._build();

  _$InstanceConfigurationTranslation._({required this.enabled}) : super._();
  @override
  InstanceConfigurationTranslation rebuild(
          void Function(InstanceConfigurationTranslationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceConfigurationTranslationBuilder toBuilder() =>
      InstanceConfigurationTranslationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceConfigurationTranslation &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstanceConfigurationTranslation')
          ..add('enabled', enabled))
        .toString();
  }
}

class InstanceConfigurationTranslationBuilder
    implements
        Builder<InstanceConfigurationTranslation,
            InstanceConfigurationTranslationBuilder> {
  _$InstanceConfigurationTranslation? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  InstanceConfigurationTranslationBuilder() {
    InstanceConfigurationTranslation._defaults(this);
  }

  InstanceConfigurationTranslationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceConfigurationTranslation other) {
    _$v = other as _$InstanceConfigurationTranslation;
  }

  @override
  void update(void Function(InstanceConfigurationTranslationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceConfigurationTranslation build() => _build();

  _$InstanceConfigurationTranslation _build() {
    final _$result = _$v ??
        _$InstanceConfigurationTranslation._(
          enabled: BuiltValueNullFieldError.checkNotNull(
              enabled, r'InstanceConfigurationTranslation', 'enabled'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
