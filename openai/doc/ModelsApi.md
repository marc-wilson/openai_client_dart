# openapi.api.ModelsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteModel**](ModelsApi.md#deletemodel) | **DELETE** /models/{model} | Delete a fine-tuned model. You must have the Owner role in your organization to delete a model.
[**listModels**](ModelsApi.md#listmodels) | **GET** /models | Lists the currently available models, and provides basic information about each one such as the owner and availability.
[**retrieveModel**](ModelsApi.md#retrievemodel) | **GET** /models/{model} | Retrieves a model instance, providing basic information about the model such as the owner and permissioning.


# **deleteModel**
> DeleteModelResponse deleteModel(model)

Delete a fine-tuned model. You must have the Owner role in your organization to delete a model.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ModelsApi();
final model = ft:gpt-3.5-turbo:acemeco:suffix:abc123; // String | The model to delete

try {
    final result = api_instance.deleteModel(model);
    print(result);
} catch (e) {
    print('Exception when calling ModelsApi->deleteModel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | **String**| The model to delete | 

### Return type

[**DeleteModelResponse**](DeleteModelResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listModels**
> ListModelsResponse listModels()

Lists the currently available models, and provides basic information about each one such as the owner and availability.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ModelsApi();

try {
    final result = api_instance.listModels();
    print(result);
} catch (e) {
    print('Exception when calling ModelsApi->listModels: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListModelsResponse**](ListModelsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveModel**
> Model retrieveModel(model)

Retrieves a model instance, providing basic information about the model such as the owner and permissioning.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ModelsApi();
final model = gpt-3.5-turbo; // String | The ID of the model to use for this request

try {
    final result = api_instance.retrieveModel(model);
    print(result);
} catch (e) {
    print('Exception when calling ModelsApi->retrieveModel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | **String**| The ID of the model to use for this request | 

### Return type

[**Model**](Model.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

