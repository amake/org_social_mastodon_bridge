# mastodon_openapi.model.Instance

## Load the model package
```dart
import 'package:mastodon_openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**configuration** | [**InstanceConfiguration**](InstanceConfiguration.md) |  | 
**contact** | [**InstanceContact**](InstanceContact.md) |  | 
**description** | **String** | A short, plain-text description defined by the admin. | 
**domain** | **String** | The WebFinger domain name of the server. | 
**languages** | **BuiltList&lt;String&gt;** | Primary languages of the website and its staff. | 
**registrations** | [**InstanceRegistrations**](InstanceRegistrations.md) |  | 
**rules** | [**BuiltList&lt;Rule&gt;**](Rule.md) | An itemized list of rules for this website. | 
**sourceUrl** | **String** | The URL for the source code of the software running on this server, per the AGPL license requirements. | 
**thumbnail** | [**InstanceThumbnail**](InstanceThumbnail.md) |  | 
**title** | **String** | The title of the website. | 
**usage** | [**InstanceUsage**](InstanceUsage.md) |  | 
**version** | **String** | The version of Mastodon installed on the server. | 
**apiVersions** | [**InstanceApiVersions**](InstanceApiVersions.md) |  | [optional] 
**icon** | [**BuiltList&lt;InstanceIcon&gt;**](InstanceIcon.md) | The list of available size variants for this server's configured icon. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


