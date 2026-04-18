// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilterStatus extends FilterStatus {
  @override
  final String id;
  @override
  final String statusId;

  factory _$FilterStatus([void Function(FilterStatusBuilder)? updates]) =>
      (FilterStatusBuilder()..update(updates))._build();

  _$FilterStatus._({required this.id, required this.statusId}) : super._();
  @override
  FilterStatus rebuild(void Function(FilterStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterStatusBuilder toBuilder() => FilterStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterStatus &&
        id == other.id &&
        statusId == other.statusId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, statusId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilterStatus')
          ..add('id', id)
          ..add('statusId', statusId))
        .toString();
  }
}

class FilterStatusBuilder
    implements Builder<FilterStatus, FilterStatusBuilder> {
  _$FilterStatus? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _statusId;
  String? get statusId => _$this._statusId;
  set statusId(String? statusId) => _$this._statusId = statusId;

  FilterStatusBuilder() {
    FilterStatus._defaults(this);
  }

  FilterStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _statusId = $v.statusId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterStatus other) {
    _$v = other as _$FilterStatus;
  }

  @override
  void update(void Function(FilterStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilterStatus build() => _build();

  _$FilterStatus _build() {
    final _$result = _$v ??
        _$FilterStatus._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'FilterStatus', 'id'),
          statusId: BuiltValueNullFieldError.checkNotNull(
              statusId, r'FilterStatus', 'statusId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
