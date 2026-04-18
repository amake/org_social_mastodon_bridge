# mastodon_openapi.model.QuoteApproval

## Load the model package
```dart
import 'package:mastodon_openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**automatic** | [**BuiltList&lt;QuoteApprovalAutomaticEnum&gt;**](QuoteApprovalAutomaticEnum.md) | Describes who is expected to be able to quote that status and have the quote automatically authorized. An empty list means that nobody is expected to be able to quote this post. Other values may be added in the future, so unknown values should be treated as `unsupported_policy`. | 
**currentUser** | [**QuoteApprovalCurrentUserEnum**](QuoteApprovalCurrentUserEnum.md) | Describes how this status' quote policy applies to the current user. | 
**manual** | [**BuiltList&lt;QuoteApprovalAutomaticEnum&gt;**](QuoteApprovalAutomaticEnum.md) | Describes who is expected to have their quotes of this status be manually reviewed by the author before being accepted. An empty list means that nobody is expected to be able to quote this post. Other values may be added in the future, so unknown values should be treated as `unsupported_policy`. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


