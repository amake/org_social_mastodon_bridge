// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_configuration_accounts.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceConfigurationAccounts extends InstanceConfigurationAccounts {
  @override
  final int maxFeaturedTags;
  @override
  final int? maxDisplayNameLength;
  @override
  final int? maxNoteLength;
  @override
  final int? maxPinnedStatuses;
  @override
  final int? maxProfileFields;
  @override
  final int? profileFieldNameLimit;
  @override
  final int? profileFieldValueLimit;

  factory _$InstanceConfigurationAccounts(
          [void Function(InstanceConfigurationAccountsBuilder)? updates]) =>
      (InstanceConfigurationAccountsBuilder()..update(updates))._build();

  _$InstanceConfigurationAccounts._(
      {required this.maxFeaturedTags,
      this.maxDisplayNameLength,
      this.maxNoteLength,
      this.maxPinnedStatuses,
      this.maxProfileFields,
      this.profileFieldNameLimit,
      this.profileFieldValueLimit})
      : super._();
  @override
  InstanceConfigurationAccounts rebuild(
          void Function(InstanceConfigurationAccountsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceConfigurationAccountsBuilder toBuilder() =>
      InstanceConfigurationAccountsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceConfigurationAccounts &&
        maxFeaturedTags == other.maxFeaturedTags &&
        maxDisplayNameLength == other.maxDisplayNameLength &&
        maxNoteLength == other.maxNoteLength &&
        maxPinnedStatuses == other.maxPinnedStatuses &&
        maxProfileFields == other.maxProfileFields &&
        profileFieldNameLimit == other.profileFieldNameLimit &&
        profileFieldValueLimit == other.profileFieldValueLimit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxFeaturedTags.hashCode);
    _$hash = $jc(_$hash, maxDisplayNameLength.hashCode);
    _$hash = $jc(_$hash, maxNoteLength.hashCode);
    _$hash = $jc(_$hash, maxPinnedStatuses.hashCode);
    _$hash = $jc(_$hash, maxProfileFields.hashCode);
    _$hash = $jc(_$hash, profileFieldNameLimit.hashCode);
    _$hash = $jc(_$hash, profileFieldValueLimit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstanceConfigurationAccounts')
          ..add('maxFeaturedTags', maxFeaturedTags)
          ..add('maxDisplayNameLength', maxDisplayNameLength)
          ..add('maxNoteLength', maxNoteLength)
          ..add('maxPinnedStatuses', maxPinnedStatuses)
          ..add('maxProfileFields', maxProfileFields)
          ..add('profileFieldNameLimit', profileFieldNameLimit)
          ..add('profileFieldValueLimit', profileFieldValueLimit))
        .toString();
  }
}

class InstanceConfigurationAccountsBuilder
    implements
        Builder<InstanceConfigurationAccounts,
            InstanceConfigurationAccountsBuilder> {
  _$InstanceConfigurationAccounts? _$v;

  int? _maxFeaturedTags;
  int? get maxFeaturedTags => _$this._maxFeaturedTags;
  set maxFeaturedTags(int? maxFeaturedTags) =>
      _$this._maxFeaturedTags = maxFeaturedTags;

  int? _maxDisplayNameLength;
  int? get maxDisplayNameLength => _$this._maxDisplayNameLength;
  set maxDisplayNameLength(int? maxDisplayNameLength) =>
      _$this._maxDisplayNameLength = maxDisplayNameLength;

  int? _maxNoteLength;
  int? get maxNoteLength => _$this._maxNoteLength;
  set maxNoteLength(int? maxNoteLength) =>
      _$this._maxNoteLength = maxNoteLength;

  int? _maxPinnedStatuses;
  int? get maxPinnedStatuses => _$this._maxPinnedStatuses;
  set maxPinnedStatuses(int? maxPinnedStatuses) =>
      _$this._maxPinnedStatuses = maxPinnedStatuses;

  int? _maxProfileFields;
  int? get maxProfileFields => _$this._maxProfileFields;
  set maxProfileFields(int? maxProfileFields) =>
      _$this._maxProfileFields = maxProfileFields;

  int? _profileFieldNameLimit;
  int? get profileFieldNameLimit => _$this._profileFieldNameLimit;
  set profileFieldNameLimit(int? profileFieldNameLimit) =>
      _$this._profileFieldNameLimit = profileFieldNameLimit;

  int? _profileFieldValueLimit;
  int? get profileFieldValueLimit => _$this._profileFieldValueLimit;
  set profileFieldValueLimit(int? profileFieldValueLimit) =>
      _$this._profileFieldValueLimit = profileFieldValueLimit;

  InstanceConfigurationAccountsBuilder() {
    InstanceConfigurationAccounts._defaults(this);
  }

  InstanceConfigurationAccountsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxFeaturedTags = $v.maxFeaturedTags;
      _maxDisplayNameLength = $v.maxDisplayNameLength;
      _maxNoteLength = $v.maxNoteLength;
      _maxPinnedStatuses = $v.maxPinnedStatuses;
      _maxProfileFields = $v.maxProfileFields;
      _profileFieldNameLimit = $v.profileFieldNameLimit;
      _profileFieldValueLimit = $v.profileFieldValueLimit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceConfigurationAccounts other) {
    _$v = other as _$InstanceConfigurationAccounts;
  }

  @override
  void update(void Function(InstanceConfigurationAccountsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceConfigurationAccounts build() => _build();

  _$InstanceConfigurationAccounts _build() {
    final _$result = _$v ??
        _$InstanceConfigurationAccounts._(
          maxFeaturedTags: BuiltValueNullFieldError.checkNotNull(
              maxFeaturedTags,
              r'InstanceConfigurationAccounts',
              'maxFeaturedTags'),
          maxDisplayNameLength: maxDisplayNameLength,
          maxNoteLength: maxNoteLength,
          maxPinnedStatuses: maxPinnedStatuses,
          maxProfileFields: maxProfileFields,
          profileFieldNameLimit: profileFieldNameLimit,
          profileFieldValueLimit: profileFieldValueLimit,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
