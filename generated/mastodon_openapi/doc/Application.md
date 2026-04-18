# mastodon_openapi.model.Application

## Load the model package
```dart
import 'package:mastodon_openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The numeric ID of the application. | 
**name** | **String** | The name of the application. | 
**redirectUri** | **String** | The registered redirection URI(s) for the application stored as a single string. Multiple URIs are separated by whitespace characters. May contain `\\n` characters when multiple redirect URIs are registered. | [optional] 
**redirectUris** | **BuiltList&lt;String&gt;** | The registered redirection URI(s) for the application. | [optional] 
**scopes** | [**BuiltList&lt;OAuthScope&gt;**](OAuthScope.md) | Array of OAuth scopes | [optional] 
**vapidKey** | **String** | Used for Push Streaming API. Returned with [POST /api/v1/apps]({{< relref \"methods/apps#create\" >}}). Equivalent to [WebPushSubscription#server_key]({{< relref \"entities/WebPushSubscription#server_key\" >}}) and [Instance#vapid_public_key]({{< relref \"entities/Instance#vapid_public_key\" >}}) | [optional] 
**website** | **String** | The website associated with the application. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


