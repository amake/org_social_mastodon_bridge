// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Poll extends Poll {
  @override
  final BuiltList<CustomEmoji> emojis;
  @override
  final bool expired;
  @override
  final String id;
  @override
  final bool multiple;
  @override
  final BuiltList<PollOption> options;
  @override
  final int votesCount;
  @override
  final DateTime? expiresAt;
  @override
  final BuiltList<int>? ownVotes;
  @override
  final bool? voted;
  @override
  final int? votersCount;

  factory _$Poll([void Function(PollBuilder)? updates]) =>
      (PollBuilder()..update(updates))._build();

  _$Poll._(
      {required this.emojis,
      required this.expired,
      required this.id,
      required this.multiple,
      required this.options,
      required this.votesCount,
      this.expiresAt,
      this.ownVotes,
      this.voted,
      this.votersCount})
      : super._();
  @override
  Poll rebuild(void Function(PollBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PollBuilder toBuilder() => PollBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Poll &&
        emojis == other.emojis &&
        expired == other.expired &&
        id == other.id &&
        multiple == other.multiple &&
        options == other.options &&
        votesCount == other.votesCount &&
        expiresAt == other.expiresAt &&
        ownVotes == other.ownVotes &&
        voted == other.voted &&
        votersCount == other.votersCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, emojis.hashCode);
    _$hash = $jc(_$hash, expired.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, multiple.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, votesCount.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, ownVotes.hashCode);
    _$hash = $jc(_$hash, voted.hashCode);
    _$hash = $jc(_$hash, votersCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Poll')
          ..add('emojis', emojis)
          ..add('expired', expired)
          ..add('id', id)
          ..add('multiple', multiple)
          ..add('options', options)
          ..add('votesCount', votesCount)
          ..add('expiresAt', expiresAt)
          ..add('ownVotes', ownVotes)
          ..add('voted', voted)
          ..add('votersCount', votersCount))
        .toString();
  }
}

class PollBuilder implements Builder<Poll, PollBuilder> {
  _$Poll? _$v;

  ListBuilder<CustomEmoji>? _emojis;
  ListBuilder<CustomEmoji> get emojis =>
      _$this._emojis ??= ListBuilder<CustomEmoji>();
  set emojis(ListBuilder<CustomEmoji>? emojis) => _$this._emojis = emojis;

  bool? _expired;
  bool? get expired => _$this._expired;
  set expired(bool? expired) => _$this._expired = expired;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _multiple;
  bool? get multiple => _$this._multiple;
  set multiple(bool? multiple) => _$this._multiple = multiple;

  ListBuilder<PollOption>? _options;
  ListBuilder<PollOption> get options =>
      _$this._options ??= ListBuilder<PollOption>();
  set options(ListBuilder<PollOption>? options) => _$this._options = options;

  int? _votesCount;
  int? get votesCount => _$this._votesCount;
  set votesCount(int? votesCount) => _$this._votesCount = votesCount;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  ListBuilder<int>? _ownVotes;
  ListBuilder<int> get ownVotes => _$this._ownVotes ??= ListBuilder<int>();
  set ownVotes(ListBuilder<int>? ownVotes) => _$this._ownVotes = ownVotes;

  bool? _voted;
  bool? get voted => _$this._voted;
  set voted(bool? voted) => _$this._voted = voted;

  int? _votersCount;
  int? get votersCount => _$this._votersCount;
  set votersCount(int? votersCount) => _$this._votersCount = votersCount;

  PollBuilder() {
    Poll._defaults(this);
  }

  PollBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _emojis = $v.emojis.toBuilder();
      _expired = $v.expired;
      _id = $v.id;
      _multiple = $v.multiple;
      _options = $v.options.toBuilder();
      _votesCount = $v.votesCount;
      _expiresAt = $v.expiresAt;
      _ownVotes = $v.ownVotes?.toBuilder();
      _voted = $v.voted;
      _votersCount = $v.votersCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Poll other) {
    _$v = other as _$Poll;
  }

  @override
  void update(void Function(PollBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Poll build() => _build();

  _$Poll _build() {
    _$Poll _$result;
    try {
      _$result = _$v ??
          _$Poll._(
            emojis: emojis.build(),
            expired: BuiltValueNullFieldError.checkNotNull(
                expired, r'Poll', 'expired'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'Poll', 'id'),
            multiple: BuiltValueNullFieldError.checkNotNull(
                multiple, r'Poll', 'multiple'),
            options: options.build(),
            votesCount: BuiltValueNullFieldError.checkNotNull(
                votesCount, r'Poll', 'votesCount'),
            expiresAt: expiresAt,
            ownVotes: _ownVotes?.build(),
            voted: voted,
            votersCount: votersCount,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'emojis';
        emojis.build();

        _$failedField = 'options';
        options.build();

        _$failedField = 'ownVotes';
        _ownVotes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Poll', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
