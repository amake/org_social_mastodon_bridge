// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Relationship extends Relationship {
  @override
  final bool blockedBy;
  @override
  final bool blocking;
  @override
  final bool domainBlocking;
  @override
  final bool endorsed;
  @override
  final bool followedBy;
  @override
  final bool following;
  @override
  final String id;
  @override
  final bool muting;
  @override
  final bool mutingNotifications;
  @override
  final String note;
  @override
  final bool notifying;
  @override
  final bool requested;
  @override
  final bool requestedBy;
  @override
  final bool showingReblogs;
  @override
  final BuiltList<String>? languages;
  @override
  final DateTime? mutingExpiresAt;

  factory _$Relationship([void Function(RelationshipBuilder)? updates]) =>
      (RelationshipBuilder()..update(updates))._build();

  _$Relationship._(
      {required this.blockedBy,
      required this.blocking,
      required this.domainBlocking,
      required this.endorsed,
      required this.followedBy,
      required this.following,
      required this.id,
      required this.muting,
      required this.mutingNotifications,
      required this.note,
      required this.notifying,
      required this.requested,
      required this.requestedBy,
      required this.showingReblogs,
      this.languages,
      this.mutingExpiresAt})
      : super._();
  @override
  Relationship rebuild(void Function(RelationshipBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationshipBuilder toBuilder() => RelationshipBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Relationship &&
        blockedBy == other.blockedBy &&
        blocking == other.blocking &&
        domainBlocking == other.domainBlocking &&
        endorsed == other.endorsed &&
        followedBy == other.followedBy &&
        following == other.following &&
        id == other.id &&
        muting == other.muting &&
        mutingNotifications == other.mutingNotifications &&
        note == other.note &&
        notifying == other.notifying &&
        requested == other.requested &&
        requestedBy == other.requestedBy &&
        showingReblogs == other.showingReblogs &&
        languages == other.languages &&
        mutingExpiresAt == other.mutingExpiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blockedBy.hashCode);
    _$hash = $jc(_$hash, blocking.hashCode);
    _$hash = $jc(_$hash, domainBlocking.hashCode);
    _$hash = $jc(_$hash, endorsed.hashCode);
    _$hash = $jc(_$hash, followedBy.hashCode);
    _$hash = $jc(_$hash, following.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, muting.hashCode);
    _$hash = $jc(_$hash, mutingNotifications.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, notifying.hashCode);
    _$hash = $jc(_$hash, requested.hashCode);
    _$hash = $jc(_$hash, requestedBy.hashCode);
    _$hash = $jc(_$hash, showingReblogs.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, mutingExpiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Relationship')
          ..add('blockedBy', blockedBy)
          ..add('blocking', blocking)
          ..add('domainBlocking', domainBlocking)
          ..add('endorsed', endorsed)
          ..add('followedBy', followedBy)
          ..add('following', following)
          ..add('id', id)
          ..add('muting', muting)
          ..add('mutingNotifications', mutingNotifications)
          ..add('note', note)
          ..add('notifying', notifying)
          ..add('requested', requested)
          ..add('requestedBy', requestedBy)
          ..add('showingReblogs', showingReblogs)
          ..add('languages', languages)
          ..add('mutingExpiresAt', mutingExpiresAt))
        .toString();
  }
}

class RelationshipBuilder
    implements Builder<Relationship, RelationshipBuilder> {
  _$Relationship? _$v;

  bool? _blockedBy;
  bool? get blockedBy => _$this._blockedBy;
  set blockedBy(bool? blockedBy) => _$this._blockedBy = blockedBy;

  bool? _blocking;
  bool? get blocking => _$this._blocking;
  set blocking(bool? blocking) => _$this._blocking = blocking;

  bool? _domainBlocking;
  bool? get domainBlocking => _$this._domainBlocking;
  set domainBlocking(bool? domainBlocking) =>
      _$this._domainBlocking = domainBlocking;

  bool? _endorsed;
  bool? get endorsed => _$this._endorsed;
  set endorsed(bool? endorsed) => _$this._endorsed = endorsed;

  bool? _followedBy;
  bool? get followedBy => _$this._followedBy;
  set followedBy(bool? followedBy) => _$this._followedBy = followedBy;

  bool? _following;
  bool? get following => _$this._following;
  set following(bool? following) => _$this._following = following;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _muting;
  bool? get muting => _$this._muting;
  set muting(bool? muting) => _$this._muting = muting;

  bool? _mutingNotifications;
  bool? get mutingNotifications => _$this._mutingNotifications;
  set mutingNotifications(bool? mutingNotifications) =>
      _$this._mutingNotifications = mutingNotifications;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  bool? _notifying;
  bool? get notifying => _$this._notifying;
  set notifying(bool? notifying) => _$this._notifying = notifying;

  bool? _requested;
  bool? get requested => _$this._requested;
  set requested(bool? requested) => _$this._requested = requested;

  bool? _requestedBy;
  bool? get requestedBy => _$this._requestedBy;
  set requestedBy(bool? requestedBy) => _$this._requestedBy = requestedBy;

  bool? _showingReblogs;
  bool? get showingReblogs => _$this._showingReblogs;
  set showingReblogs(bool? showingReblogs) =>
      _$this._showingReblogs = showingReblogs;

  ListBuilder<String>? _languages;
  ListBuilder<String> get languages =>
      _$this._languages ??= ListBuilder<String>();
  set languages(ListBuilder<String>? languages) =>
      _$this._languages = languages;

  DateTime? _mutingExpiresAt;
  DateTime? get mutingExpiresAt => _$this._mutingExpiresAt;
  set mutingExpiresAt(DateTime? mutingExpiresAt) =>
      _$this._mutingExpiresAt = mutingExpiresAt;

  RelationshipBuilder() {
    Relationship._defaults(this);
  }

  RelationshipBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blockedBy = $v.blockedBy;
      _blocking = $v.blocking;
      _domainBlocking = $v.domainBlocking;
      _endorsed = $v.endorsed;
      _followedBy = $v.followedBy;
      _following = $v.following;
      _id = $v.id;
      _muting = $v.muting;
      _mutingNotifications = $v.mutingNotifications;
      _note = $v.note;
      _notifying = $v.notifying;
      _requested = $v.requested;
      _requestedBy = $v.requestedBy;
      _showingReblogs = $v.showingReblogs;
      _languages = $v.languages?.toBuilder();
      _mutingExpiresAt = $v.mutingExpiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Relationship other) {
    _$v = other as _$Relationship;
  }

  @override
  void update(void Function(RelationshipBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Relationship build() => _build();

  _$Relationship _build() {
    _$Relationship _$result;
    try {
      _$result = _$v ??
          _$Relationship._(
            blockedBy: BuiltValueNullFieldError.checkNotNull(
                blockedBy, r'Relationship', 'blockedBy'),
            blocking: BuiltValueNullFieldError.checkNotNull(
                blocking, r'Relationship', 'blocking'),
            domainBlocking: BuiltValueNullFieldError.checkNotNull(
                domainBlocking, r'Relationship', 'domainBlocking'),
            endorsed: BuiltValueNullFieldError.checkNotNull(
                endorsed, r'Relationship', 'endorsed'),
            followedBy: BuiltValueNullFieldError.checkNotNull(
                followedBy, r'Relationship', 'followedBy'),
            following: BuiltValueNullFieldError.checkNotNull(
                following, r'Relationship', 'following'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Relationship', 'id'),
            muting: BuiltValueNullFieldError.checkNotNull(
                muting, r'Relationship', 'muting'),
            mutingNotifications: BuiltValueNullFieldError.checkNotNull(
                mutingNotifications, r'Relationship', 'mutingNotifications'),
            note: BuiltValueNullFieldError.checkNotNull(
                note, r'Relationship', 'note'),
            notifying: BuiltValueNullFieldError.checkNotNull(
                notifying, r'Relationship', 'notifying'),
            requested: BuiltValueNullFieldError.checkNotNull(
                requested, r'Relationship', 'requested'),
            requestedBy: BuiltValueNullFieldError.checkNotNull(
                requestedBy, r'Relationship', 'requestedBy'),
            showingReblogs: BuiltValueNullFieldError.checkNotNull(
                showingReblogs, r'Relationship', 'showingReblogs'),
            languages: _languages?.build(),
            mutingExpiresAt: mutingExpiresAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'languages';
        _languages?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Relationship', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
