// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_configuration_polls.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceConfigurationPolls extends InstanceConfigurationPolls {
  @override
  final int maxCharactersPerOption;
  @override
  final int maxExpiration;
  @override
  final int maxOptions;
  @override
  final int minExpiration;

  factory _$InstanceConfigurationPolls(
          [void Function(InstanceConfigurationPollsBuilder)? updates]) =>
      (InstanceConfigurationPollsBuilder()..update(updates))._build();

  _$InstanceConfigurationPolls._(
      {required this.maxCharactersPerOption,
      required this.maxExpiration,
      required this.maxOptions,
      required this.minExpiration})
      : super._();
  @override
  InstanceConfigurationPolls rebuild(
          void Function(InstanceConfigurationPollsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceConfigurationPollsBuilder toBuilder() =>
      InstanceConfigurationPollsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceConfigurationPolls &&
        maxCharactersPerOption == other.maxCharactersPerOption &&
        maxExpiration == other.maxExpiration &&
        maxOptions == other.maxOptions &&
        minExpiration == other.minExpiration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxCharactersPerOption.hashCode);
    _$hash = $jc(_$hash, maxExpiration.hashCode);
    _$hash = $jc(_$hash, maxOptions.hashCode);
    _$hash = $jc(_$hash, minExpiration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstanceConfigurationPolls')
          ..add('maxCharactersPerOption', maxCharactersPerOption)
          ..add('maxExpiration', maxExpiration)
          ..add('maxOptions', maxOptions)
          ..add('minExpiration', minExpiration))
        .toString();
  }
}

class InstanceConfigurationPollsBuilder
    implements
        Builder<InstanceConfigurationPolls, InstanceConfigurationPollsBuilder> {
  _$InstanceConfigurationPolls? _$v;

  int? _maxCharactersPerOption;
  int? get maxCharactersPerOption => _$this._maxCharactersPerOption;
  set maxCharactersPerOption(int? maxCharactersPerOption) =>
      _$this._maxCharactersPerOption = maxCharactersPerOption;

  int? _maxExpiration;
  int? get maxExpiration => _$this._maxExpiration;
  set maxExpiration(int? maxExpiration) =>
      _$this._maxExpiration = maxExpiration;

  int? _maxOptions;
  int? get maxOptions => _$this._maxOptions;
  set maxOptions(int? maxOptions) => _$this._maxOptions = maxOptions;

  int? _minExpiration;
  int? get minExpiration => _$this._minExpiration;
  set minExpiration(int? minExpiration) =>
      _$this._minExpiration = minExpiration;

  InstanceConfigurationPollsBuilder() {
    InstanceConfigurationPolls._defaults(this);
  }

  InstanceConfigurationPollsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxCharactersPerOption = $v.maxCharactersPerOption;
      _maxExpiration = $v.maxExpiration;
      _maxOptions = $v.maxOptions;
      _minExpiration = $v.minExpiration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceConfigurationPolls other) {
    _$v = other as _$InstanceConfigurationPolls;
  }

  @override
  void update(void Function(InstanceConfigurationPollsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceConfigurationPolls build() => _build();

  _$InstanceConfigurationPolls _build() {
    final _$result = _$v ??
        _$InstanceConfigurationPolls._(
          maxCharactersPerOption: BuiltValueNullFieldError.checkNotNull(
              maxCharactersPerOption,
              r'InstanceConfigurationPolls',
              'maxCharactersPerOption'),
          maxExpiration: BuiltValueNullFieldError.checkNotNull(
              maxExpiration, r'InstanceConfigurationPolls', 'maxExpiration'),
          maxOptions: BuiltValueNullFieldError.checkNotNull(
              maxOptions, r'InstanceConfigurationPolls', 'maxOptions'),
          minExpiration: BuiltValueNullFieldError.checkNotNull(
              minExpiration, r'InstanceConfigurationPolls', 'minExpiration'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
