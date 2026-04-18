// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Filter extends Filter {
  @override
  final BuiltList<FilterContextEnum> context;
  @override
  final FilterFilterActionEnum filterAction;
  @override
  final String id;
  @override
  final String title;
  @override
  final DateTime? expiresAt;
  @override
  final BuiltList<FilterKeyword>? keywords;
  @override
  final BuiltList<FilterStatus>? statuses;

  factory _$Filter([void Function(FilterBuilder)? updates]) =>
      (FilterBuilder()..update(updates))._build();

  _$Filter._(
      {required this.context,
      required this.filterAction,
      required this.id,
      required this.title,
      this.expiresAt,
      this.keywords,
      this.statuses})
      : super._();
  @override
  Filter rebuild(void Function(FilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterBuilder toBuilder() => FilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Filter &&
        context == other.context &&
        filterAction == other.filterAction &&
        id == other.id &&
        title == other.title &&
        expiresAt == other.expiresAt &&
        keywords == other.keywords &&
        statuses == other.statuses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jc(_$hash, filterAction.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, keywords.hashCode);
    _$hash = $jc(_$hash, statuses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Filter')
          ..add('context', context)
          ..add('filterAction', filterAction)
          ..add('id', id)
          ..add('title', title)
          ..add('expiresAt', expiresAt)
          ..add('keywords', keywords)
          ..add('statuses', statuses))
        .toString();
  }
}

class FilterBuilder implements Builder<Filter, FilterBuilder> {
  _$Filter? _$v;

  ListBuilder<FilterContextEnum>? _context;
  ListBuilder<FilterContextEnum> get context =>
      _$this._context ??= ListBuilder<FilterContextEnum>();
  set context(ListBuilder<FilterContextEnum>? context) =>
      _$this._context = context;

  FilterFilterActionEnum? _filterAction;
  FilterFilterActionEnum? get filterAction => _$this._filterAction;
  set filterAction(FilterFilterActionEnum? filterAction) =>
      _$this._filterAction = filterAction;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  ListBuilder<FilterKeyword>? _keywords;
  ListBuilder<FilterKeyword> get keywords =>
      _$this._keywords ??= ListBuilder<FilterKeyword>();
  set keywords(ListBuilder<FilterKeyword>? keywords) =>
      _$this._keywords = keywords;

  ListBuilder<FilterStatus>? _statuses;
  ListBuilder<FilterStatus> get statuses =>
      _$this._statuses ??= ListBuilder<FilterStatus>();
  set statuses(ListBuilder<FilterStatus>? statuses) =>
      _$this._statuses = statuses;

  FilterBuilder() {
    Filter._defaults(this);
  }

  FilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _context = $v.context.toBuilder();
      _filterAction = $v.filterAction;
      _id = $v.id;
      _title = $v.title;
      _expiresAt = $v.expiresAt;
      _keywords = $v.keywords?.toBuilder();
      _statuses = $v.statuses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Filter other) {
    _$v = other as _$Filter;
  }

  @override
  void update(void Function(FilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Filter build() => _build();

  _$Filter _build() {
    _$Filter _$result;
    try {
      _$result = _$v ??
          _$Filter._(
            context: context.build(),
            filterAction: BuiltValueNullFieldError.checkNotNull(
                filterAction, r'Filter', 'filterAction'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'Filter', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'Filter', 'title'),
            expiresAt: expiresAt,
            keywords: _keywords?.build(),
            statuses: _statuses?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'context';
        context.build();

        _$failedField = 'keywords';
        _keywords?.build();
        _$failedField = 'statuses';
        _statuses?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Filter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
