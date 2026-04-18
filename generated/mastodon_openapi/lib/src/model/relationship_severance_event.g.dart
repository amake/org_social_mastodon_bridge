// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship_severance_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RelationshipSeveranceEvent extends RelationshipSeveranceEvent {
  @override
  final DateTime createdAt;
  @override
  final int followersCount;
  @override
  final int followingCount;
  @override
  final String id;
  @override
  final bool purged;
  @override
  final String targetName;
  @override
  final RelationshipSeveranceEventTypeEnum type;

  factory _$RelationshipSeveranceEvent(
          [void Function(RelationshipSeveranceEventBuilder)? updates]) =>
      (RelationshipSeveranceEventBuilder()..update(updates))._build();

  _$RelationshipSeveranceEvent._(
      {required this.createdAt,
      required this.followersCount,
      required this.followingCount,
      required this.id,
      required this.purged,
      required this.targetName,
      required this.type})
      : super._();
  @override
  RelationshipSeveranceEvent rebuild(
          void Function(RelationshipSeveranceEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationshipSeveranceEventBuilder toBuilder() =>
      RelationshipSeveranceEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelationshipSeveranceEvent &&
        createdAt == other.createdAt &&
        followersCount == other.followersCount &&
        followingCount == other.followingCount &&
        id == other.id &&
        purged == other.purged &&
        targetName == other.targetName &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, followersCount.hashCode);
    _$hash = $jc(_$hash, followingCount.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, purged.hashCode);
    _$hash = $jc(_$hash, targetName.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RelationshipSeveranceEvent')
          ..add('createdAt', createdAt)
          ..add('followersCount', followersCount)
          ..add('followingCount', followingCount)
          ..add('id', id)
          ..add('purged', purged)
          ..add('targetName', targetName)
          ..add('type', type))
        .toString();
  }
}

class RelationshipSeveranceEventBuilder
    implements
        Builder<RelationshipSeveranceEvent, RelationshipSeveranceEventBuilder> {
  _$RelationshipSeveranceEvent? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  int? _followersCount;
  int? get followersCount => _$this._followersCount;
  set followersCount(int? followersCount) =>
      _$this._followersCount = followersCount;

  int? _followingCount;
  int? get followingCount => _$this._followingCount;
  set followingCount(int? followingCount) =>
      _$this._followingCount = followingCount;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _purged;
  bool? get purged => _$this._purged;
  set purged(bool? purged) => _$this._purged = purged;

  String? _targetName;
  String? get targetName => _$this._targetName;
  set targetName(String? targetName) => _$this._targetName = targetName;

  RelationshipSeveranceEventTypeEnum? _type;
  RelationshipSeveranceEventTypeEnum? get type => _$this._type;
  set type(RelationshipSeveranceEventTypeEnum? type) => _$this._type = type;

  RelationshipSeveranceEventBuilder() {
    RelationshipSeveranceEvent._defaults(this);
  }

  RelationshipSeveranceEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _followersCount = $v.followersCount;
      _followingCount = $v.followingCount;
      _id = $v.id;
      _purged = $v.purged;
      _targetName = $v.targetName;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelationshipSeveranceEvent other) {
    _$v = other as _$RelationshipSeveranceEvent;
  }

  @override
  void update(void Function(RelationshipSeveranceEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RelationshipSeveranceEvent build() => _build();

  _$RelationshipSeveranceEvent _build() {
    final _$result = _$v ??
        _$RelationshipSeveranceEvent._(
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'RelationshipSeveranceEvent', 'createdAt'),
          followersCount: BuiltValueNullFieldError.checkNotNull(
              followersCount, r'RelationshipSeveranceEvent', 'followersCount'),
          followingCount: BuiltValueNullFieldError.checkNotNull(
              followingCount, r'RelationshipSeveranceEvent', 'followingCount'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'RelationshipSeveranceEvent', 'id'),
          purged: BuiltValueNullFieldError.checkNotNull(
              purged, r'RelationshipSeveranceEvent', 'purged'),
          targetName: BuiltValueNullFieldError.checkNotNull(
              targetName, r'RelationshipSeveranceEvent', 'targetName'),
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'RelationshipSeveranceEvent', 'type'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
