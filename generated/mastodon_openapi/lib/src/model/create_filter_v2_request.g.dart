// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_filter_v2_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateFilterV2Request extends CreateFilterV2Request {
  @override
  final BuiltList<FilterContextEnum> context;
  @override
  final String title;
  @override
  final int? expiresIn;
  @override
  final String? filterAction;
  @override
  final BuiltList<CreateFilterV2RequestKeywordsAttributesInner>?
      keywordsAttributes;

  factory _$CreateFilterV2Request(
          [void Function(CreateFilterV2RequestBuilder)? updates]) =>
      (CreateFilterV2RequestBuilder()..update(updates))._build();

  _$CreateFilterV2Request._(
      {required this.context,
      required this.title,
      this.expiresIn,
      this.filterAction,
      this.keywordsAttributes})
      : super._();
  @override
  CreateFilterV2Request rebuild(
          void Function(CreateFilterV2RequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateFilterV2RequestBuilder toBuilder() =>
      CreateFilterV2RequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateFilterV2Request &&
        context == other.context &&
        title == other.title &&
        expiresIn == other.expiresIn &&
        filterAction == other.filterAction &&
        keywordsAttributes == other.keywordsAttributes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, expiresIn.hashCode);
    _$hash = $jc(_$hash, filterAction.hashCode);
    _$hash = $jc(_$hash, keywordsAttributes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateFilterV2Request')
          ..add('context', context)
          ..add('title', title)
          ..add('expiresIn', expiresIn)
          ..add('filterAction', filterAction)
          ..add('keywordsAttributes', keywordsAttributes))
        .toString();
  }
}

class CreateFilterV2RequestBuilder
    implements Builder<CreateFilterV2Request, CreateFilterV2RequestBuilder> {
  _$CreateFilterV2Request? _$v;

  ListBuilder<FilterContextEnum>? _context;
  ListBuilder<FilterContextEnum> get context =>
      _$this._context ??= ListBuilder<FilterContextEnum>();
  set context(ListBuilder<FilterContextEnum>? context) =>
      _$this._context = context;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _expiresIn;
  int? get expiresIn => _$this._expiresIn;
  set expiresIn(int? expiresIn) => _$this._expiresIn = expiresIn;

  String? _filterAction;
  String? get filterAction => _$this._filterAction;
  set filterAction(String? filterAction) => _$this._filterAction = filterAction;

  ListBuilder<CreateFilterV2RequestKeywordsAttributesInner>?
      _keywordsAttributes;
  ListBuilder<CreateFilterV2RequestKeywordsAttributesInner>
      get keywordsAttributes => _$this._keywordsAttributes ??=
          ListBuilder<CreateFilterV2RequestKeywordsAttributesInner>();
  set keywordsAttributes(
          ListBuilder<CreateFilterV2RequestKeywordsAttributesInner>?
              keywordsAttributes) =>
      _$this._keywordsAttributes = keywordsAttributes;

  CreateFilterV2RequestBuilder() {
    CreateFilterV2Request._defaults(this);
  }

  CreateFilterV2RequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _context = $v.context.toBuilder();
      _title = $v.title;
      _expiresIn = $v.expiresIn;
      _filterAction = $v.filterAction;
      _keywordsAttributes = $v.keywordsAttributes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateFilterV2Request other) {
    _$v = other as _$CreateFilterV2Request;
  }

  @override
  void update(void Function(CreateFilterV2RequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateFilterV2Request build() => _build();

  _$CreateFilterV2Request _build() {
    _$CreateFilterV2Request _$result;
    try {
      _$result = _$v ??
          _$CreateFilterV2Request._(
            context: context.build(),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'CreateFilterV2Request', 'title'),
            expiresIn: expiresIn,
            filterAction: filterAction,
            keywordsAttributes: _keywordsAttributes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'context';
        context.build();

        _$failedField = 'keywordsAttributes';
        _keywordsAttributes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateFilterV2Request', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
