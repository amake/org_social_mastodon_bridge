// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_report.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminReport extends AdminReport {
  @override
  final AdminAccount account;
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
  final BuiltList<Rule> rules;
  @override
  final BuiltList<Status> statuses;
  @override
  final AdminAccount targetAccount;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? actionTakenAt;
  @override
  final AdminAccount? actionTakenByAccount;
  @override
  final AdminAccount? assignedAccount;

  factory _$AdminReport([void Function(AdminReportBuilder)? updates]) =>
      (AdminReportBuilder()..update(updates))._build();

  _$AdminReport._(
      {required this.account,
      required this.actionTaken,
      required this.category,
      required this.comment,
      required this.createdAt,
      required this.forwarded,
      required this.id,
      required this.rules,
      required this.statuses,
      required this.targetAccount,
      required this.updatedAt,
      this.actionTakenAt,
      this.actionTakenByAccount,
      this.assignedAccount})
      : super._();
  @override
  AdminReport rebuild(void Function(AdminReportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminReportBuilder toBuilder() => AdminReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminReport &&
        account == other.account &&
        actionTaken == other.actionTaken &&
        category == other.category &&
        comment == other.comment &&
        createdAt == other.createdAt &&
        forwarded == other.forwarded &&
        id == other.id &&
        rules == other.rules &&
        statuses == other.statuses &&
        targetAccount == other.targetAccount &&
        updatedAt == other.updatedAt &&
        actionTakenAt == other.actionTakenAt &&
        actionTakenByAccount == other.actionTakenByAccount &&
        assignedAccount == other.assignedAccount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, actionTaken.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, forwarded.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, rules.hashCode);
    _$hash = $jc(_$hash, statuses.hashCode);
    _$hash = $jc(_$hash, targetAccount.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, actionTakenAt.hashCode);
    _$hash = $jc(_$hash, actionTakenByAccount.hashCode);
    _$hash = $jc(_$hash, assignedAccount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminReport')
          ..add('account', account)
          ..add('actionTaken', actionTaken)
          ..add('category', category)
          ..add('comment', comment)
          ..add('createdAt', createdAt)
          ..add('forwarded', forwarded)
          ..add('id', id)
          ..add('rules', rules)
          ..add('statuses', statuses)
          ..add('targetAccount', targetAccount)
          ..add('updatedAt', updatedAt)
          ..add('actionTakenAt', actionTakenAt)
          ..add('actionTakenByAccount', actionTakenByAccount)
          ..add('assignedAccount', assignedAccount))
        .toString();
  }
}

class AdminReportBuilder implements Builder<AdminReport, AdminReportBuilder> {
  _$AdminReport? _$v;

  AdminAccountBuilder? _account;
  AdminAccountBuilder get account => _$this._account ??= AdminAccountBuilder();
  set account(AdminAccountBuilder? account) => _$this._account = account;

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

  ListBuilder<Rule>? _rules;
  ListBuilder<Rule> get rules => _$this._rules ??= ListBuilder<Rule>();
  set rules(ListBuilder<Rule>? rules) => _$this._rules = rules;

  ListBuilder<Status>? _statuses;
  ListBuilder<Status> get statuses =>
      _$this._statuses ??= ListBuilder<Status>();
  set statuses(ListBuilder<Status>? statuses) => _$this._statuses = statuses;

  AdminAccountBuilder? _targetAccount;
  AdminAccountBuilder get targetAccount =>
      _$this._targetAccount ??= AdminAccountBuilder();
  set targetAccount(AdminAccountBuilder? targetAccount) =>
      _$this._targetAccount = targetAccount;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  DateTime? _actionTakenAt;
  DateTime? get actionTakenAt => _$this._actionTakenAt;
  set actionTakenAt(DateTime? actionTakenAt) =>
      _$this._actionTakenAt = actionTakenAt;

  AdminAccountBuilder? _actionTakenByAccount;
  AdminAccountBuilder get actionTakenByAccount =>
      _$this._actionTakenByAccount ??= AdminAccountBuilder();
  set actionTakenByAccount(AdminAccountBuilder? actionTakenByAccount) =>
      _$this._actionTakenByAccount = actionTakenByAccount;

  AdminAccountBuilder? _assignedAccount;
  AdminAccountBuilder get assignedAccount =>
      _$this._assignedAccount ??= AdminAccountBuilder();
  set assignedAccount(AdminAccountBuilder? assignedAccount) =>
      _$this._assignedAccount = assignedAccount;

  AdminReportBuilder() {
    AdminReport._defaults(this);
  }

  AdminReportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account.toBuilder();
      _actionTaken = $v.actionTaken;
      _category = $v.category;
      _comment = $v.comment;
      _createdAt = $v.createdAt;
      _forwarded = $v.forwarded;
      _id = $v.id;
      _rules = $v.rules.toBuilder();
      _statuses = $v.statuses.toBuilder();
      _targetAccount = $v.targetAccount.toBuilder();
      _updatedAt = $v.updatedAt;
      _actionTakenAt = $v.actionTakenAt;
      _actionTakenByAccount = $v.actionTakenByAccount?.toBuilder();
      _assignedAccount = $v.assignedAccount?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminReport other) {
    _$v = other as _$AdminReport;
  }

  @override
  void update(void Function(AdminReportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminReport build() => _build();

  _$AdminReport _build() {
    _$AdminReport _$result;
    try {
      _$result = _$v ??
          _$AdminReport._(
            account: account.build(),
            actionTaken: BuiltValueNullFieldError.checkNotNull(
                actionTaken, r'AdminReport', 'actionTaken'),
            category: BuiltValueNullFieldError.checkNotNull(
                category, r'AdminReport', 'category'),
            comment: BuiltValueNullFieldError.checkNotNull(
                comment, r'AdminReport', 'comment'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'AdminReport', 'createdAt'),
            forwarded: BuiltValueNullFieldError.checkNotNull(
                forwarded, r'AdminReport', 'forwarded'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'AdminReport', 'id'),
            rules: rules.build(),
            statuses: statuses.build(),
            targetAccount: targetAccount.build(),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'AdminReport', 'updatedAt'),
            actionTakenAt: actionTakenAt,
            actionTakenByAccount: _actionTakenByAccount?.build(),
            assignedAccount: _assignedAccount?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'account';
        account.build();

        _$failedField = 'rules';
        rules.build();
        _$failedField = 'statuses';
        statuses.build();
        _$failedField = 'targetAccount';
        targetAccount.build();

        _$failedField = 'actionTakenByAccount';
        _actionTakenByAccount?.build();
        _$failedField = 'assignedAccount';
        _assignedAccount?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AdminReport', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
