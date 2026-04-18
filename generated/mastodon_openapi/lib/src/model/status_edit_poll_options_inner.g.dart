// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_edit_poll_options_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatusEditPollOptionsInner extends StatusEditPollOptionsInner {
  @override
  final String title;

  factory _$StatusEditPollOptionsInner(
          [void Function(StatusEditPollOptionsInnerBuilder)? updates]) =>
      (StatusEditPollOptionsInnerBuilder()..update(updates))._build();

  _$StatusEditPollOptionsInner._({required this.title}) : super._();
  @override
  StatusEditPollOptionsInner rebuild(
          void Function(StatusEditPollOptionsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusEditPollOptionsInnerBuilder toBuilder() =>
      StatusEditPollOptionsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatusEditPollOptionsInner && title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatusEditPollOptionsInner')
          ..add('title', title))
        .toString();
  }
}

class StatusEditPollOptionsInnerBuilder
    implements
        Builder<StatusEditPollOptionsInner, StatusEditPollOptionsInnerBuilder> {
  _$StatusEditPollOptionsInner? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  StatusEditPollOptionsInnerBuilder() {
    StatusEditPollOptionsInner._defaults(this);
  }

  StatusEditPollOptionsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatusEditPollOptionsInner other) {
    _$v = other as _$StatusEditPollOptionsInner;
  }

  @override
  void update(void Function(StatusEditPollOptionsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatusEditPollOptionsInner build() => _build();

  _$StatusEditPollOptionsInner _build() {
    final _$result = _$v ??
        _$StatusEditPollOptionsInner._(
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'StatusEditPollOptionsInner', 'title'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
