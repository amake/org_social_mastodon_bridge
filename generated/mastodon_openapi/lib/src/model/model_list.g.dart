// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModelList extends ModelList {
  @override
  final bool exclusive;
  @override
  final String id;
  @override
  final ListRepliesPolicyEnum repliesPolicy;
  @override
  final String title;

  factory _$ModelList([void Function(ModelListBuilder)? updates]) =>
      (ModelListBuilder()..update(updates))._build();

  _$ModelList._(
      {required this.exclusive,
      required this.id,
      required this.repliesPolicy,
      required this.title})
      : super._();
  @override
  ModelList rebuild(void Function(ModelListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModelListBuilder toBuilder() => ModelListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModelList &&
        exclusive == other.exclusive &&
        id == other.id &&
        repliesPolicy == other.repliesPolicy &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exclusive.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, repliesPolicy.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ModelList')
          ..add('exclusive', exclusive)
          ..add('id', id)
          ..add('repliesPolicy', repliesPolicy)
          ..add('title', title))
        .toString();
  }
}

class ModelListBuilder implements Builder<ModelList, ModelListBuilder> {
  _$ModelList? _$v;

  bool? _exclusive;
  bool? get exclusive => _$this._exclusive;
  set exclusive(bool? exclusive) => _$this._exclusive = exclusive;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListRepliesPolicyEnum? _repliesPolicy;
  ListRepliesPolicyEnum? get repliesPolicy => _$this._repliesPolicy;
  set repliesPolicy(ListRepliesPolicyEnum? repliesPolicy) =>
      _$this._repliesPolicy = repliesPolicy;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ModelListBuilder() {
    ModelList._defaults(this);
  }

  ModelListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exclusive = $v.exclusive;
      _id = $v.id;
      _repliesPolicy = $v.repliesPolicy;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModelList other) {
    _$v = other as _$ModelList;
  }

  @override
  void update(void Function(ModelListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModelList build() => _build();

  _$ModelList _build() {
    final _$result = _$v ??
        _$ModelList._(
          exclusive: BuiltValueNullFieldError.checkNotNull(
              exclusive, r'ModelList', 'exclusive'),
          id: BuiltValueNullFieldError.checkNotNull(id, r'ModelList', 'id'),
          repliesPolicy: BuiltValueNullFieldError.checkNotNull(
              repliesPolicy, r'ModelList', 'repliesPolicy'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'ModelList', 'title'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
