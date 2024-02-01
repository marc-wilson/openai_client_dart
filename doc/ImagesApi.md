# openapi.api.ImagesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createImage**](ImagesApi.md#createimage) | **POST** /images/generations | Creates an image given a prompt.
[**createImageEdit**](ImagesApi.md#createimageedit) | **POST** /images/edits | Creates an edited or extended image given an original image and a prompt.
[**createImageVariation**](ImagesApi.md#createimagevariation) | **POST** /images/variations | Creates a variation of a given image.


# **createImage**
> ImagesResponse createImage(createImageRequest)

Creates an image given a prompt.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ImagesApi();
final createImageRequest = CreateImageRequest(); // CreateImageRequest | 

try {
    final result = api_instance.createImage(createImageRequest);
    print(result);
} catch (e) {
    print('Exception when calling ImagesApi->createImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createImageRequest** | [**CreateImageRequest**](CreateImageRequest.md)|  | 

### Return type

[**ImagesResponse**](ImagesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createImageEdit**
> ImagesResponse createImageEdit(image, prompt, mask, model, n, size, responseFormat, user)

Creates an edited or extended image given an original image and a prompt.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ImagesApi();
final image = BINARY_DATA_HERE; // MultipartFile | The image to edit. Must be a valid PNG file, less than 4MB, and square. If mask is not provided, image must have transparency, which will be used as the mask.
final prompt = prompt_example; // String | A text description of the desired image(s). The maximum length is 1000 characters.
final mask = BINARY_DATA_HERE; // MultipartFile | An additional image whose fully transparent areas (e.g. where alpha is zero) indicate where `image` should be edited. Must be a valid PNG file, less than 4MB, and have the same dimensions as `image`.
final model = ; // CreateImageEditRequestModel | 
final n = 56; // int | The number of images to generate. Must be between 1 and 10.
final size = size_example; // String | The size of the generated images. Must be one of `256x256`, `512x512`, or `1024x1024`.
final responseFormat = responseFormat_example; // String | The format in which the generated images are returned. Must be one of `url` or `b64_json`.
final user = user_example; // String | A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids). 

try {
    final result = api_instance.createImageEdit(image, prompt, mask, model, n, size, responseFormat, user);
    print(result);
} catch (e) {
    print('Exception when calling ImagesApi->createImageEdit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image** | **MultipartFile**| The image to edit. Must be a valid PNG file, less than 4MB, and square. If mask is not provided, image must have transparency, which will be used as the mask. | 
 **prompt** | **String**| A text description of the desired image(s). The maximum length is 1000 characters. | 
 **mask** | **MultipartFile**| An additional image whose fully transparent areas (e.g. where alpha is zero) indicate where `image` should be edited. Must be a valid PNG file, less than 4MB, and have the same dimensions as `image`. | [optional] 
 **model** | [**CreateImageEditRequestModel**](CreateImageEditRequestModel.md)|  | [optional] 
 **n** | **int**| The number of images to generate. Must be between 1 and 10. | [optional] [default to 1]
 **size** | **String**| The size of the generated images. Must be one of `256x256`, `512x512`, or `1024x1024`. | [optional] [default to '1024x1024']
 **responseFormat** | **String**| The format in which the generated images are returned. Must be one of `url` or `b64_json`. | [optional] [default to 'url']
 **user** | **String**| A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids).  | [optional] 

### Return type

[**ImagesResponse**](ImagesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createImageVariation**
> ImagesResponse createImageVariation(image, model, n, responseFormat, size, user)

Creates a variation of a given image.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ImagesApi();
final image = BINARY_DATA_HERE; // MultipartFile | The image to use as the basis for the variation(s). Must be a valid PNG file, less than 4MB, and square.
final model = ; // CreateImageEditRequestModel | 
final n = 56; // int | The number of images to generate. Must be between 1 and 10. For `dall-e-3`, only `n=1` is supported.
final responseFormat = responseFormat_example; // String | The format in which the generated images are returned. Must be one of `url` or `b64_json`.
final size = size_example; // String | The size of the generated images. Must be one of `256x256`, `512x512`, or `1024x1024`.
final user = user_example; // String | A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids). 

try {
    final result = api_instance.createImageVariation(image, model, n, responseFormat, size, user);
    print(result);
} catch (e) {
    print('Exception when calling ImagesApi->createImageVariation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image** | **MultipartFile**| The image to use as the basis for the variation(s). Must be a valid PNG file, less than 4MB, and square. | 
 **model** | [**CreateImageEditRequestModel**](CreateImageEditRequestModel.md)|  | [optional] 
 **n** | **int**| The number of images to generate. Must be between 1 and 10. For `dall-e-3`, only `n=1` is supported. | [optional] [default to 1]
 **responseFormat** | **String**| The format in which the generated images are returned. Must be one of `url` or `b64_json`. | [optional] [default to 'url']
 **size** | **String**| The size of the generated images. Must be one of `256x256`, `512x512`, or `1024x1024`. | [optional] [default to '1024x1024']
 **user** | **String**| A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids).  | [optional] 

### Return type

[**ImagesResponse**](ImagesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

