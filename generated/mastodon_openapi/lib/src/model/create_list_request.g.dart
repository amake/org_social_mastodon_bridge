// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_list_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateListRequest extends CreateListRequest {
  @override
  final String title;
  @override
  final bool? exclusive;
  @override
  final ListRepliesPolicyEnum? repliesPolicy;

  factory _$CreateListRequest(
          [void Function(CreateListRequestBuilder)? updates]) =>
      (CreateListRequestBuilder()..update(updates))._build();

  _$CreateListRequest._(
      {required this.title, this.exclusive, this.repliesPolicy})
      : super._();
  @override
  CreateListRequest rebuild(void Function(CreateListRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateListRequestBuilder toBuilder() =>
      CreateListRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateListRequest &&
        title == other.title &&
        exclusive == other.exclusive &&
        repliesPolicy == other.repliesPolicy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, exclusive.hashCode);
    _$hash = $jc(_$hash, repliesPolicy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateListRequest')
          ..add('title', title)
          ..add('exclusive', exclusive)
          ..add('repliesPolicy', repliesPolicy))
        .toString();
  }
}

class CreateListRequestBuilder
    implements Builder<CreateListRequest, CreateListRequestBuilder> {
  _$CreateListRequest? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _exclusive;
  bool? get exclusive => _$this._exclusive;
  set exclusive(bool? exclusive) => _$this._exclusive = exclusive;

  ListRepliesPolicyEnum? _repliesPolicy;
  ListRepliesPolicyEnum? get repliesPolicy => _$this._repliesPolicy;
  set repliesPolicy(ListRepliesPolicyEnum? repliesPolicy) =>
      _$this._repliesPolicy = repliesPolicy;

  CreateListRequestBuilder() {
    CreateListRequest._defaults(this);
  }

  CreateListRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _exclusive = $v.exclusive;
      _repliesPolicy = $v.repliesPolicy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateListRequest other) {
    _$v = other as _$CreateListRequest;
  }

  @override
  void update(void Function(CreateListRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateListRequest build() => _build();

  _$CreateListRequest _build() {
    final _$result = _$v ??
        _$CreateListRequest._(
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'CreateListRequest', 'title'),
          exclusive: exclusive,
          repliesPolicy: repliesPolicy,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
