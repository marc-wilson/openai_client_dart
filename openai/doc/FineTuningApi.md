# openapi.api.FineTuningApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelFineTuningJob**](FineTuningApi.md#cancelfinetuningjob) | **POST** /fine_tuning/jobs/{fine_tuning_job_id}/cancel | Immediately cancel a fine-tune job. 
[**createFineTuningJob**](FineTuningApi.md#createfinetuningjob) | **POST** /fine_tuning/jobs | Creates a fine-tuning job which begins the process of creating a new model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about fine-tuning](/docs/guides/fine-tuning) 
[**listFineTuningEvents**](FineTuningApi.md#listfinetuningevents) | **GET** /fine_tuning/jobs/{fine_tuning_job_id}/events | Get status updates for a fine-tuning job. 
[**listPaginatedFineTuningJobs**](FineTuningApi.md#listpaginatedfinetuningjobs) | **GET** /fine_tuning/jobs | List your organization's fine-tuning jobs 
[**retrieveFineTuningJob**](FineTuningApi.md#retrievefinetuningjob) | **GET** /fine_tuning/jobs/{fine_tuning_job_id} | Get info about a fine-tuning job.  [Learn more about fine-tuning](/docs/guides/fine-tuning) 


# **cancelFineTuningJob**
> FineTuningJob cancelFineTuningJob(fineTuningJobId)

Immediately cancel a fine-tune job. 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FineTuningApi();
final fineTuningJobId = ft-AF1WoRqd3aJAHsqc9NY7iL8F; // String | The ID of the fine-tuning job to cancel. 

try {
    final result = api_instance.cancelFineTuningJob(fineTuningJobId);
    print(result);
} catch (e) {
    print('Exception when calling FineTuningApi->cancelFineTuningJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fineTuningJobId** | **String**| The ID of the fine-tuning job to cancel.  | 

### Return type

[**FineTuningJob**](FineTuningJob.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFineTuningJob**
> FineTuningJob createFineTuningJob(createFineTuningJobRequest)

Creates a fine-tuning job which begins the process of creating a new model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about fine-tuning](/docs/guides/fine-tuning) 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FineTuningApi();
final createFineTuningJobRequest = CreateFineTuningJobRequest(); // CreateFineTuningJobRequest | 

try {
    final result = api_instance.createFineTuningJob(createFineTuningJobRequest);
    print(result);
} catch (e) {
    print('Exception when calling FineTuningApi->createFineTuningJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createFineTuningJobRequest** | [**CreateFineTuningJobRequest**](CreateFineTuningJobRequest.md)|  | 

### Return type

[**FineTuningJob**](FineTuningJob.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFineTuningEvents**
> ListFineTuningJobEventsResponse listFineTuningEvents(fineTuningJobId, after, limit)

Get status updates for a fine-tuning job. 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FineTuningApi();
final fineTuningJobId = ft-AF1WoRqd3aJAHsqc9NY7iL8F; // String | The ID of the fine-tuning job to get events for. 
final after = after_example; // String | Identifier for the last event from the previous pagination request.
final limit = 56; // int | Number of events to retrieve.

try {
    final result = api_instance.listFineTuningEvents(fineTuningJobId, after, limit);
    print(result);
} catch (e) {
    print('Exception when calling FineTuningApi->listFineTuningEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fineTuningJobId** | **String**| The ID of the fine-tuning job to get events for.  | 
 **after** | **String**| Identifier for the last event from the previous pagination request. | [optional] 
 **limit** | **int**| Number of events to retrieve. | [optional] [default to 20]

### Return type

[**ListFineTuningJobEventsResponse**](ListFineTuningJobEventsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPaginatedFineTuningJobs**
> ListPaginatedFineTuningJobsResponse listPaginatedFineTuningJobs(after, limit)

List your organization's fine-tuning jobs 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FineTuningApi();
final after = after_example; // String | Identifier for the last job from the previous pagination request.
final limit = 56; // int | Number of fine-tuning jobs to retrieve.

try {
    final result = api_instance.listPaginatedFineTuningJobs(after, limit);
    print(result);
} catch (e) {
    print('Exception when calling FineTuningApi->listPaginatedFineTuningJobs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **String**| Identifier for the last job from the previous pagination request. | [optional] 
 **limit** | **int**| Number of fine-tuning jobs to retrieve. | [optional] [default to 20]

### Return type

[**ListPaginatedFineTuningJobsResponse**](ListPaginatedFineTuningJobsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveFineTuningJob**
> FineTuningJob retrieveFineTuningJob(fineTuningJobId)

Get info about a fine-tuning job.  [Learn more about fine-tuning](/docs/guides/fine-tuning) 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FineTuningApi();
final fineTuningJobId = ft-AF1WoRqd3aJAHsqc9NY7iL8F; // String | The ID of the fine-tuning job. 

try {
    final result = api_instance.retrieveFineTuningJob(fineTuningJobId);
    print(result);
} catch (e) {
    print('Exception when calling FineTuningApi->retrieveFineTuningJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fineTuningJobId** | **String**| The ID of the fine-tuning job.  | 

### Return type

[**FineTuningJob**](FineTuningJob.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

