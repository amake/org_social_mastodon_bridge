// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Announcement extends Announcement {
  @override
  final bool allDay;
  @override
  final String content;
  @override
  final BuiltList<CustomEmoji> emojis;
  @override
  final String id;
  @override
  final BuiltList<AnnouncementAccount> mentions;
  @override
  final DateTime publishedAt;
  @override
  final BuiltList<Reaction> reactions;
  @override
  final BuiltList<AnnouncementStatus> statuses;
  @override
  final BuiltList<StatusTag> tags;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? endsAt;
  @override
  final bool? read;
  @override
  final DateTime? startsAt;

  factory _$Announcement([void Function(AnnouncementBuilder)? updates]) =>
      (AnnouncementBuilder()..update(updates))._build();

  _$Announcement._(
      {required this.allDay,
      required this.content,
      required this.emojis,
      required this.id,
      required this.mentions,
      required this.publishedAt,
      required this.reactions,
      required this.statuses,
      required this.tags,
      required this.updatedAt,
      this.endsAt,
      this.read,
      this.startsAt})
      : super._();
  @override
  Announcement rebuild(void Function(AnnouncementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnnouncementBuilder toBuilder() => AnnouncementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Announcement &&
        allDay == other.allDay &&
        content == other.content &&
        emojis == other.emojis &&
        id == other.id &&
        mentions == other.mentions &&
        publishedAt == other.publishedAt &&
        reactions == other.reactions &&
        statuses == other.statuses &&
        tags == other.tags &&
        updatedAt == other.updatedAt &&
        endsAt == other.endsAt &&
        read == other.read &&
        startsAt == other.startsAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allDay.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, emojis.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, mentions.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jc(_$hash, reactions.hashCode);
    _$hash = $jc(_$hash, statuses.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, endsAt.hashCode);
    _$hash = $jc(_$hash, read.hashCode);
    _$hash = $jc(_$hash, startsAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Announcement')
          ..add('allDay', allDay)
          ..add('content', content)
          ..add('emojis', emojis)
          ..add('id', id)
          ..add('mentions', mentions)
          ..add('publishedAt', publishedAt)
          ..add('reactions', reactions)
          ..add('statuses', statuses)
          ..add('tags', tags)
          ..add('updatedAt', updatedAt)
          ..add('endsAt', endsAt)
          ..add('read', read)
          ..add('startsAt', startsAt))
        .toString();
  }
}

class AnnouncementBuilder
    implements Builder<Announcement, AnnouncementBuilder> {
  _$Announcement? _$v;

  bool? _allDay;
  bool? get allDay => _$this._allDay;
  set allDay(bool? allDay) => _$this._allDay = allDay;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  ListBuilder<CustomEmoji>? _emojis;
  ListBuilder<CustomEmoji> get emojis =>
      _$this._emojis ??= ListBuilder<CustomEmoji>();
  set emojis(ListBuilder<CustomEmoji>? emojis) => _$this._emojis = emojis;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<AnnouncementAccount>? _mentions;
  ListBuilder<AnnouncementAccount> get mentions =>
      _$this._mentions ??= ListBuilder<AnnouncementAccount>();
  set mentions(ListBuilder<AnnouncementAccount>? mentions) =>
      _$this._mentions = mentions;

  DateTime? _publishedAt;
  DateTime? get publishedAt => _$this._publishedAt;
  set publishedAt(DateTime? publishedAt) => _$this._publishedAt = publishedAt;

  ListBuilder<Reaction>? _reactions;
  ListBuilder<Reaction> get reactions =>
      _$this._reactions ??= ListBuilder<Reaction>();
  set reactions(ListBuilder<Reaction>? reactions) =>
      _$this._reactions = reactions;

  ListBuilder<AnnouncementStatus>? _statuses;
  ListBuilder<AnnouncementStatus> get statuses =>
      _$this._statuses ??= ListBuilder<AnnouncementStatus>();
  set statuses(ListBuilder<AnnouncementStatus>? statuses) =>
      _$this._statuses = statuses;

  ListBuilder<StatusTag>? _tags;
  ListBuilder<StatusTag> get tags => _$this._tags ??= ListBuilder<StatusTag>();
  set tags(ListBuilder<StatusTag>? tags) => _$this._tags = tags;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  DateTime? _endsAt;
  DateTime? get endsAt => _$this._endsAt;
  set endsAt(DateTime? endsAt) => _$this._endsAt = endsAt;

  bool? _read;
  bool? get read => _$this._read;
  set read(bool? read) => _$this._read = read;

  DateTime? _startsAt;
  DateTime? get startsAt => _$this._startsAt;
  set startsAt(DateTime? startsAt) => _$this._startsAt = startsAt;

  AnnouncementBuilder() {
    Announcement._defaults(this);
  }

  AnnouncementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allDay = $v.allDay;
      _content = $v.content;
      _emojis = $v.emojis.toBuilder();
      _id = $v.id;
      _mentions = $v.mentions.toBuilder();
      _publishedAt = $v.publishedAt;
      _reactions = $v.reactions.toBuilder();
      _statuses = $v.statuses.toBuilder();
      _tags = $v.tags.toBuilder();
      _updatedAt = $v.updatedAt;
      _endsAt = $v.endsAt;
      _read = $v.read;
      _startsAt = $v.startsAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Announcement other) {
    _$v = other as _$Announcement;
  }

  @override
  void update(void Function(AnnouncementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Announcement build() => _build();

  _$Announcement _build() {
    _$Announcement _$result;
    try {
      _$result = _$v ??
          _$Announcement._(
            allDay: BuiltValueNullFieldError.checkNotNull(
                allDay, r'Announcement', 'allDay'),
            content: BuiltValueNullFieldError.checkNotNull(
                content, r'Announcement', 'content'),
            emojis: emojis.build(),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Announcement', 'id'),
            mentions: mentions.build(),
            publishedAt: BuiltValueNullFieldError.checkNotNull(
                publishedAt, r'Announcement', 'publishedAt'),
            reactions: reactions.build(),
            statuses: statuses.build(),
            tags: tags.build(),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'Announcement', 'updatedAt'),
            endsAt: endsAt,
            read: read,
            startsAt: startsAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'emojis';
        emojis.build();

        _$failedField = 'mentions';
        mentions.build();

        _$failedField = 'reactions';
        reactions.build();
        _$failedField = 'statuses';
        statuses.build();
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Announcement', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
