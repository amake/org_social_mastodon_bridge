# mastodon_openapi.model.AdminEmailDomainBlock

## Load the model package
```dart
import 'package:mastodon_openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | [**DateTime**](DateTime.md) | When the email domain was disallowed from signups. | 
**domain** | **String** | The email domain that is not allowed to be used for signups. | 
**history** | [**BuiltList&lt;AdminEmailDomainBlockHistory&gt;**](AdminEmailDomainBlockHistory.md) | Usage statistics for given days (typically the past week). | 
**id** | **String** | The ID of the EmailDomainBlock in the database. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


