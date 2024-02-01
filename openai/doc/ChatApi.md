# openapi.api.ChatApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createChatCompletion**](ChatApi.md#createchatcompletion) | **POST** /chat/completions | Creates a model response for the given chat conversation.


# **createChatCompletion**
> CreateChatCompletionResponse createChatCompletion(createChatCompletionRequest)

Creates a model response for the given chat conversation.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChatApi();
final createChatCompletionRequest = CreateChatCompletionRequest(); // CreateChatCompletionRequest | 

try {
    final result = api_instance.createChatCompletion(createChatCompletionRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChatApi->createChatCompletion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createChatCompletionRequest** | [**CreateChatCompletionRequest**](CreateChatCompletionRequest.md)|  | 

### Return type

[**CreateChatCompletionResponse**](CreateChatCompletionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

