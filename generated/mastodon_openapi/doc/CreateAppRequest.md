# mastodon_openapi.model.CreateAppRequest

## Load the model package
```dart
import 'package:mastodon_openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientName** | **String** | A name for your application | 
**redirectUris** | **BuiltList&lt;String&gt;** | Where the user should be redirected after authorization. To display the authorization code to the user instead of redirecting to a web page, use `urn:ietf:wg:oauth:2.0:oob` in this parameter. | 
**scopes** | **String** | Space separated list of scopes. If none is provided, defaults to `read`. See [OAuth Scopes] for a list of possible scopes. | [optional] [default to 'read']
**website** | **String** | A URL to the homepage of your app | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


