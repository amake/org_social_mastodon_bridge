// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_tag.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminTag extends AdminTag {
  @override
  final bool requiresReview;
  @override
  final bool trendable;
  @override
  final bool usable;

  factory _$AdminTag([void Function(AdminTagBuilder)? updates]) =>
      (AdminTagBuilder()..update(updates))._build();

  _$AdminTag._(
      {required this.requiresReview,
      required this.trendable,
      required this.usable})
      : super._();
  @override
  AdminTag rebuild(void Function(AdminTagBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminTagBuilder toBuilder() => AdminTagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminTag &&
        requiresReview == other.requiresReview &&
        trendable == other.trendable &&
        usable == other.usable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requiresReview.hashCode);
    _$hash = $jc(_$hash, trendable.hashCode);
    _$hash = $jc(_$hash, usable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminTag')
          ..add('requiresReview', requiresReview)
          ..add('trendable', trendable)
          ..add('usable', usable))
        .toString();
  }
}

class AdminTagBuilder implements Builder<AdminTag, AdminTagBuilder> {
  _$AdminTag? _$v;

  bool? _requiresReview;
  bool? get requiresReview => _$this._requiresReview;
  set requiresReview(bool? requiresReview) =>
      _$this._requiresReview = requiresReview;

  bool? _trendable;
  bool? get trendable => _$this._trendable;
  set trendable(bool? trendable) => _$this._trendable = trendable;

  bool? _usable;
  bool? get usable => _$this._usable;
  set usable(bool? usable) => _$this._usable = usable;

  AdminTagBuilder() {
    AdminTag._defaults(this);
  }

  AdminTagBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requiresReview = $v.requiresReview;
      _trendable = $v.trendable;
      _usable = $v.usable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminTag other) {
    _$v = other as _$AdminTag;
  }

  @override
  void update(void Function(AdminTagBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminTag build() => _build();

  _$AdminTag _build() {
    final _$result = _$v ??
        _$AdminTag._(
          requiresReview: BuiltValueNullFieldError.checkNotNull(
              requiresReview, r'AdminTag', 'requiresReview'),
          trendable: BuiltValueNullFieldError.checkNotNull(
              trendable, r'AdminTag', 'trendable'),
          usable: BuiltValueNullFieldError.checkNotNull(
              usable, r'AdminTag', 'usable'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
