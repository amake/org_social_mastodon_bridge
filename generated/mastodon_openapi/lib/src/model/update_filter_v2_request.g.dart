// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_filter_v2_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateFilterV2Request extends UpdateFilterV2Request {
  @override
  final BuiltList<FilterContextEnum>? context;
  @override
  final int? expiresIn;
  @override
  final String? filterAction;
  @override
  final BuiltList<UpdateFilterV2RequestKeywordsAttributesInner>?
      keywordsAttributes;
  @override
  final String? title;

  factory _$UpdateFilterV2Request(
          [void Function(UpdateFilterV2RequestBuilder)? updates]) =>
      (UpdateFilterV2RequestBuilder()..update(updates))._build();

  _$UpdateFilterV2Request._(
      {this.context,
      this.expiresIn,
      this.filterAction,
      this.keywordsAttributes,
      this.title})
      : super._();
  @override
  UpdateFilterV2Request rebuild(
          void Function(UpdateFilterV2RequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateFilterV2RequestBuilder toBuilder() =>
      UpdateFilterV2RequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateFilterV2Request &&
        context == other.context &&
        expiresIn == other.expiresIn &&
        filterAction == other.filterAction &&
        keywordsAttributes == other.keywordsAttributes &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jc(_$hash, expiresIn.hashCode);
    _$hash = $jc(_$hash, filterAction.hashCode);
    _$hash = $jc(_$hash, keywordsAttributes.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateFilterV2Request')
          ..add('context', context)
          ..add('expiresIn', expiresIn)
          ..add('filterAction', filterAction)
          ..add('keywordsAttributes', keywordsAttributes)
          ..add('title', title))
        .toString();
  }
}

class UpdateFilterV2RequestBuilder
    implements Builder<UpdateFilterV2Request, UpdateFilterV2RequestBuilder> {
  _$UpdateFilterV2Request? _$v;

  ListBuilder<FilterContextEnum>? _context;
  ListBuilder<FilterContextEnum> get context =>
      _$this._context ??= ListBuilder<FilterContextEnum>();
  set context(ListBuilder<FilterContextEnum>? context) =>
      _$this._context = context;

  int? _expiresIn;
  int? get expiresIn => _$this._expiresIn;
  set expiresIn(int? expiresIn) => _$this._expiresIn = expiresIn;

  String? _filterAction;
  String? get filterAction => _$this._filterAction;
  set filterAction(String? filterAction) => _$this._filterAction = filterAction;

  ListBuilder<UpdateFilterV2RequestKeywordsAttributesInner>?
      _keywordsAttributes;
  ListBuilder<UpdateFilterV2RequestKeywordsAttributesInner>
      get keywordsAttributes => _$this._keywordsAttributes ??=
          ListBuilder<UpdateFilterV2RequestKeywordsAttributesInner>();
  set keywordsAttributes(
          ListBuilder<UpdateFilterV2RequestKeywordsAttributesInner>?
              keywordsAttributes) =>
      _$this._keywordsAttributes = keywordsAttributes;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  UpdateFilterV2RequestBuilder() {
    UpdateFilterV2Request._defaults(this);
  }

  UpdateFilterV2RequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _context = $v.context?.toBuilder();
      _expiresIn = $v.expiresIn;
      _filterAction = $v.filterAction;
      _keywordsAttributes = $v.keywordsAttributes?.toBuilder();
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateFilterV2Request other) {
    _$v = other as _$UpdateFilterV2Request;
  }

  @override
  void update(void Function(UpdateFilterV2RequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateFilterV2Request build() => _build();

  _$UpdateFilterV2Request _build() {
    _$UpdateFilterV2Request _$result;
    try {
      _$result = _$v ??
          _$UpdateFilterV2Request._(
            context: _context?.build(),
            expiresIn: expiresIn,
            filterAction: filterAction,
            keywordsAttributes: _keywordsAttributes?.build(),
            title: title,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'context';
        _context?.build();

        _$failedField = 'keywordsAttributes';
        _keywordsAttributes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateFilterV2Request', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
