# openapi.api.EmbeddingsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmbedding**](EmbeddingsApi.md#createembedding) | **POST** /embeddings | Creates an embedding vector representing the input text.


# **createEmbedding**
> CreateEmbeddingResponse createEmbedding(createEmbeddingRequest)

Creates an embedding vector representing the input text.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = EmbeddingsApi();
final createEmbeddingRequest = CreateEmbeddingRequest(); // CreateEmbeddingRequest | 

try {
    final result = api_instance.createEmbedding(createEmbeddingRequest);
    print(result);
} catch (e) {
    print('Exception when calling EmbeddingsApi->createEmbedding: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createEmbeddingRequest** | [**CreateEmbeddingRequest**](CreateEmbeddingRequest.md)|  | 

### Return type

[**CreateEmbeddingResponse**](CreateEmbeddingResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

