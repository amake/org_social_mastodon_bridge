// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_configuration_statuses.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceConfigurationStatuses extends InstanceConfigurationStatuses {
  @override
  final int charactersReservedPerUrl;
  @override
  final int maxCharacters;
  @override
  final int maxMediaAttachments;

  factory _$InstanceConfigurationStatuses(
          [void Function(InstanceConfigurationStatusesBuilder)? updates]) =>
      (InstanceConfigurationStatusesBuilder()..update(updates))._build();

  _$InstanceConfigurationStatuses._(
      {required this.charactersReservedPerUrl,
      required this.maxCharacters,
      required this.maxMediaAttachments})
      : super._();
  @override
  InstanceConfigurationStatuses rebuild(
          void Function(InstanceConfigurationStatusesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceConfigurationStatusesBuilder toBuilder() =>
      InstanceConfigurationStatusesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceConfigurationStatuses &&
        charactersReservedPerUrl == other.charactersReservedPerUrl &&
        maxCharacters == other.maxCharacters &&
        maxMediaAttachments == other.maxMediaAttachments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, charactersReservedPerUrl.hashCode);
    _$hash = $jc(_$hash, maxCharacters.hashCode);
    _$hash = $jc(_$hash, maxMediaAttachments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstanceConfigurationStatuses')
          ..add('charactersReservedPerUrl', charactersReservedPerUrl)
          ..add('maxCharacters', maxCharacters)
          ..add('maxMediaAttachments', maxMediaAttachments))
        .toString();
  }
}

class InstanceConfigurationStatusesBuilder
    implements
        Builder<InstanceConfigurationStatuses,
            InstanceConfigurationStatusesBuilder> {
  _$InstanceConfigurationStatuses? _$v;

  int? _charactersReservedPerUrl;
  int? get charactersReservedPerUrl => _$this._charactersReservedPerUrl;
  set charactersReservedPerUrl(int? charactersReservedPerUrl) =>
      _$this._charactersReservedPerUrl = charactersReservedPerUrl;

  int? _maxCharacters;
  int? get maxCharacters => _$this._maxCharacters;
  set maxCharacters(int? maxCharacters) =>
      _$this._maxCharacters = maxCharacters;

  int? _maxMediaAttachments;
  int? get maxMediaAttachments => _$this._maxMediaAttachments;
  set maxMediaAttachments(int? maxMediaAttachments) =>
      _$this._maxMediaAttachments = maxMediaAttachments;

  InstanceConfigurationStatusesBuilder() {
    InstanceConfigurationStatuses._defaults(this);
  }

  InstanceConfigurationStatusesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _charactersReservedPerUrl = $v.charactersReservedPerUrl;
      _maxCharacters = $v.maxCharacters;
      _maxMediaAttachments = $v.maxMediaAttachments;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceConfigurationStatuses other) {
    _$v = other as _$InstanceConfigurationStatuses;
  }

  @override
  void update(void Function(InstanceConfigurationStatusesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceConfigurationStatuses build() => _build();

  _$InstanceConfigurationStatuses _build() {
    final _$result = _$v ??
        _$InstanceConfigurationStatuses._(
          charactersReservedPerUrl: BuiltValueNullFieldError.checkNotNull(
              charactersReservedPerUrl,
              r'InstanceConfigurationStatuses',
              'charactersReservedPerUrl'),
          maxCharacters: BuiltValueNullFieldError.checkNotNull(
              maxCharacters, r'InstanceConfigurationStatuses', 'maxCharacters'),
          maxMediaAttachments: BuiltValueNullFieldError.checkNotNull(
              maxMediaAttachments,
              r'InstanceConfigurationStatuses',
              'maxMediaAttachments'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
