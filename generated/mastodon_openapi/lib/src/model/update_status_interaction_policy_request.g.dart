// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_status_interaction_policy_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateStatusInteractionPolicyRequest
    extends UpdateStatusInteractionPolicyRequest {
  @override
  final String? quoteApprovalPolicy;

  factory _$UpdateStatusInteractionPolicyRequest(
          [void Function(UpdateStatusInteractionPolicyRequestBuilder)?
              updates]) =>
      (UpdateStatusInteractionPolicyRequestBuilder()..update(updates))._build();

  _$UpdateStatusInteractionPolicyRequest._({this.quoteApprovalPolicy})
      : super._();
  @override
  UpdateStatusInteractionPolicyRequest rebuild(
          void Function(UpdateStatusInteractionPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateStatusInteractionPolicyRequestBuilder toBuilder() =>
      UpdateStatusInteractionPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateStatusInteractionPolicyRequest &&
        quoteApprovalPolicy == other.quoteApprovalPolicy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, quoteApprovalPolicy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateStatusInteractionPolicyRequest')
          ..add('quoteApprovalPolicy', quoteApprovalPolicy))
        .toString();
  }
}

class UpdateStatusInteractionPolicyRequestBuilder
    implements
        Builder<UpdateStatusInteractionPolicyRequest,
            UpdateStatusInteractionPolicyRequestBuilder> {
  _$UpdateStatusInteractionPolicyRequest? _$v;

  String? _quoteApprovalPolicy;
  String? get quoteApprovalPolicy => _$this._quoteApprovalPolicy;
  set quoteApprovalPolicy(String? quoteApprovalPolicy) =>
      _$this._quoteApprovalPolicy = quoteApprovalPolicy;

  UpdateStatusInteractionPolicyRequestBuilder() {
    UpdateStatusInteractionPolicyRequest._defaults(this);
  }

  UpdateStatusInteractionPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quoteApprovalPolicy = $v.quoteApprovalPolicy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateStatusInteractionPolicyRequest other) {
    _$v = other as _$UpdateStatusInteractionPolicyRequest;
  }

  @override
  void update(
      void Function(UpdateStatusInteractionPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateStatusInteractionPolicyRequest build() => _build();

  _$UpdateStatusInteractionPolicyRequest _build() {
    final _$result = _$v ??
        _$UpdateStatusInteractionPolicyRequest._(
          quoteApprovalPolicy: quoteApprovalPolicy,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
