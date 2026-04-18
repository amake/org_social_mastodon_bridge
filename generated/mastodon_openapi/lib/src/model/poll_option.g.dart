// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_option.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PollOption extends PollOption {
  @override
  final String title;
  @override
  final int? votesCount;

  factory _$PollOption([void Function(PollOptionBuilder)? updates]) =>
      (PollOptionBuilder()..update(updates))._build();

  _$PollOption._({required this.title, this.votesCount}) : super._();
  @override
  PollOption rebuild(void Function(PollOptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PollOptionBuilder toBuilder() => PollOptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PollOption &&
        title == other.title &&
        votesCount == other.votesCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, votesCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PollOption')
          ..add('title', title)
          ..add('votesCount', votesCount))
        .toString();
  }
}

class PollOptionBuilder implements Builder<PollOption, PollOptionBuilder> {
  _$PollOption? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _votesCount;
  int? get votesCount => _$this._votesCount;
  set votesCount(int? votesCount) => _$this._votesCount = votesCount;

  PollOptionBuilder() {
    PollOption._defaults(this);
  }

  PollOptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _votesCount = $v.votesCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PollOption other) {
    _$v = other as _$PollOption;
  }

  @override
  void update(void Function(PollOptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PollOption build() => _build();

  _$PollOption _build() {
    final _$result = _$v ??
        _$PollOption._(
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'PollOption', 'title'),
          votesCount: votesCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
