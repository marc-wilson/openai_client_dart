# openapi.api.CompletionsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCompletion**](CompletionsApi.md#createcompletion) | **POST** /completions | Creates a completion for the provided prompt and parameters.


# **createCompletion**
> CreateCompletionResponse createCompletion(createCompletionRequest)

Creates a completion for the provided prompt and parameters.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CompletionsApi();
final createCompletionRequest = CreateCompletionRequest(); // CreateCompletionRequest | 

try {
    final result = api_instance.createCompletion(createCompletionRequest);
    print(result);
} catch (e) {
    print('Exception when calling CompletionsApi->createCompletion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCompletionRequest** | [**CreateCompletionRequest**](CreateCompletionRequest.md)|  | 

### Return type

[**CreateCompletionResponse**](CreateCompletionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

