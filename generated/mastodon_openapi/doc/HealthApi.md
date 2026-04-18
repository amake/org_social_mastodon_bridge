# mastodon_openapi.api.HealthApi

## Load the API package
```dart
import 'package:mastodon_openapi/api.dart';
```

All URIs are relative to *https://mastodon.example*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHealth**](HealthApi.md#gethealth) | **GET** /health | Get basic health status as JSON


# **getHealth**
> getHealth()

Get basic health status as JSON

Version history:  3.0.0 - added

### Example
```dart
import 'package:mastodon_openapi/api.dart';

final api = MastodonOpenapi().getHealthApi();

try {
    api.getHealth();
} catch on DioException (e) {
    print('Exception when calling HealthApi->getHealth: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

