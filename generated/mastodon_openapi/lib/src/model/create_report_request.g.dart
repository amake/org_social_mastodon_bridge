// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_report_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateReportRequest extends CreateReportRequest {
  @override
  final String accountId;
  @override
  final ReportCategoryEnum? category;
  @override
  final String? comment;
  @override
  final bool? forward;
  @override
  final BuiltList<String>? ruleIds;
  @override
  final BuiltList<String>? statusIds;

  factory _$CreateReportRequest(
          [void Function(CreateReportRequestBuilder)? updates]) =>
      (CreateReportRequestBuilder()..update(updates))._build();

  _$CreateReportRequest._(
      {required this.accountId,
      this.category,
      this.comment,
      this.forward,
      this.ruleIds,
      this.statusIds})
      : super._();
  @override
  CreateReportRequest rebuild(
          void Function(CreateReportRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateReportRequestBuilder toBuilder() =>
      CreateReportRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateReportRequest &&
        accountId == other.accountId &&
        category == other.category &&
        comment == other.comment &&
        forward == other.forward &&
        ruleIds == other.ruleIds &&
        statusIds == other.statusIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, forward.hashCode);
    _$hash = $jc(_$hash, ruleIds.hashCode);
    _$hash = $jc(_$hash, statusIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateReportRequest')
          ..add('accountId', accountId)
          ..add('category', category)
          ..add('comment', comment)
          ..add('forward', forward)
          ..add('ruleIds', ruleIds)
          ..add('statusIds', statusIds))
        .toString();
  }
}

class CreateReportRequestBuilder
    implements Builder<CreateReportRequest, CreateReportRequestBuilder> {
  _$CreateReportRequest? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  ReportCategoryEnum? _category;
  ReportCategoryEnum? get category => _$this._category;
  set category(ReportCategoryEnum? category) => _$this._category = category;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  bool? _forward;
  bool? get forward => _$this._forward;
  set forward(bool? forward) => _$this._forward = forward;

  ListBuilder<String>? _ruleIds;
  ListBuilder<String> get ruleIds => _$this._ruleIds ??= ListBuilder<String>();
  set ruleIds(ListBuilder<String>? ruleIds) => _$this._ruleIds = ruleIds;

  ListBuilder<String>? _statusIds;
  ListBuilder<String> get statusIds =>
      _$this._statusIds ??= ListBuilder<String>();
  set statusIds(ListBuilder<String>? statusIds) =>
      _$this._statusIds = statusIds;

  CreateReportRequestBuilder() {
    CreateReportRequest._defaults(this);
  }

  CreateReportRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _category = $v.category;
      _comment = $v.comment;
      _forward = $v.forward;
      _ruleIds = $v.ruleIds?.toBuilder();
      _statusIds = $v.statusIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateReportRequest other) {
    _$v = other as _$CreateReportRequest;
  }

  @override
  void update(void Function(CreateReportRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateReportRequest build() => _build();

  _$CreateReportRequest _build() {
    _$CreateReportRequest _$result;
    try {
      _$result = _$v ??
          _$CreateReportRequest._(
            accountId: BuiltValueNullFieldError.checkNotNull(
                accountId, r'CreateReportRequest', 'accountId'),
            category: category,
            comment: comment,
            forward: forward,
            ruleIds: _ruleIds?.build(),
            statusIds: _statusIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ruleIds';
        _ruleIds?.build();
        _$failedField = 'statusIds';
        _statusIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateReportRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
