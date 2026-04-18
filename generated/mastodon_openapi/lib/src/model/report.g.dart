// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Report extends Report {
  @override
  final bool actionTaken;
  @override
  final ReportCategoryEnum category;
  @override
  final String comment;
  @override
  final DateTime createdAt;
  @override
  final bool forwarded;
  @override
  final String id;
  @override
  final Account targetAccount;
  @override
  final DateTime? actionTakenAt;
  @override
  final BuiltList<String>? collectionIds;
  @override
  final BuiltList<String>? ruleIds;
  @override
  final BuiltList<String>? statusIds;

  factory _$Report([void Function(ReportBuilder)? updates]) =>
      (ReportBuilder()..update(updates))._build();

  _$Report._(
      {required this.actionTaken,
      required this.category,
      required this.comment,
      required this.createdAt,
      required this.forwarded,
      required this.id,
      required this.targetAccount,
      this.actionTakenAt,
      this.collectionIds,
      this.ruleIds,
      this.statusIds})
      : super._();
  @override
  Report rebuild(void Function(ReportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportBuilder toBuilder() => ReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Report &&
        actionTaken == other.actionTaken &&
        category == other.category &&
        comment == other.comment &&
        createdAt == other.createdAt &&
        forwarded == other.forwarded &&
        id == other.id &&
        targetAccount == other.targetAccount &&
        actionTakenAt == other.actionTakenAt &&
        collectionIds == other.collectionIds &&
        ruleIds == other.ruleIds &&
        statusIds == other.statusIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, actionTaken.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, forwarded.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, targetAccount.hashCode);
    _$hash = $jc(_$hash, actionTakenAt.hashCode);
    _$hash = $jc(_$hash, collectionIds.hashCode);
    _$hash = $jc(_$hash, ruleIds.hashCode);
    _$hash = $jc(_$hash, statusIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Report')
          ..add('actionTaken', actionTaken)
          ..add('category', category)
          ..add('comment', comment)
          ..add('createdAt', createdAt)
          ..add('forwarded', forwarded)
          ..add('id', id)
          ..add('targetAccount', targetAccount)
          ..add('actionTakenAt', actionTakenAt)
          ..add('collectionIds', collectionIds)
          ..add('ruleIds', ruleIds)
          ..add('statusIds', statusIds))
        .toString();
  }
}

class ReportBuilder implements Builder<Report, ReportBuilder> {
  _$Report? _$v;

  bool? _actionTaken;
  bool? get actionTaken => _$this._actionTaken;
  set actionTaken(bool? actionTaken) => _$this._actionTaken = actionTaken;

  ReportCategoryEnum? _category;
  ReportCategoryEnum? get category => _$this._category;
  set category(ReportCategoryEnum? category) => _$this._category = category;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  bool? _forwarded;
  bool? get forwarded => _$this._forwarded;
  set forwarded(bool? forwarded) => _$this._forwarded = forwarded;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AccountBuilder? _targetAccount;
  AccountBuilder get targetAccount =>
      _$this._targetAccount ??= AccountBuilder();
  set targetAccount(AccountBuilder? targetAccount) =>
      _$this._targetAccount = targetAccount;

  DateTime? _actionTakenAt;
  DateTime? get actionTakenAt => _$this._actionTakenAt;
  set actionTakenAt(DateTime? actionTakenAt) =>
      _$this._actionTakenAt = actionTakenAt;

  ListBuilder<String>? _collectionIds;
  ListBuilder<String> get collectionIds =>
      _$this._collectionIds ??= ListBuilder<String>();
  set collectionIds(ListBuilder<String>? collectionIds) =>
      _$this._collectionIds = collectionIds;

  ListBuilder<String>? _ruleIds;
  ListBuilder<String> get ruleIds => _$this._ruleIds ??= ListBuilder<String>();
  set ruleIds(ListBuilder<String>? ruleIds) => _$this._ruleIds = ruleIds;

  ListBuilder<String>? _statusIds;
  ListBuilder<String> get statusIds =>
      _$this._statusIds ??= ListBuilder<String>();
  set statusIds(ListBuilder<String>? statusIds) =>
      _$this._statusIds = statusIds;

  ReportBuilder() {
    Report._defaults(this);
  }

  ReportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _actionTaken = $v.actionTaken;
      _category = $v.category;
      _comment = $v.comment;
      _createdAt = $v.createdAt;
      _forwarded = $v.forwarded;
      _id = $v.id;
      _targetAccount = $v.targetAccount.toBuilder();
      _actionTakenAt = $v.actionTakenAt;
      _collectionIds = $v.collectionIds?.toBuilder();
      _ruleIds = $v.ruleIds?.toBuilder();
      _statusIds = $v.statusIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Report other) {
    _$v = other as _$Report;
  }

  @override
  void update(void Function(ReportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Report build() => _build();

  _$Report _build() {
    _$Report _$result;
    try {
      _$result = _$v ??
          _$Report._(
            actionTaken: BuiltValueNullFieldError.checkNotNull(
                actionTaken, r'Report', 'actionTaken'),
            category: BuiltValueNullFieldError.checkNotNull(
                category, r'Report', 'category'),
            comment: BuiltValueNullFieldError.checkNotNull(
                comment, r'Report', 'comment'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Report', 'createdAt'),
            forwarded: BuiltValueNullFieldError.checkNotNull(
                forwarded, r'Report', 'forwarded'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'Report', 'id'),
            targetAccount: targetAccount.build(),
            actionTakenAt: actionTakenAt,
            collectionIds: _collectionIds?.build(),
            ruleIds: _ruleIds?.build(),
            statusIds: _statusIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targetAccount';
        targetAccount.build();

        _$failedField = 'collectionIds';
        _collectionIds?.build();
        _$failedField = 'ruleIds';
        _ruleIds?.build();
        _$failedField = 'statusIds';
        _statusIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Report', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
