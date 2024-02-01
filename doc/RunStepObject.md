# openapi.model.RunStepObject

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The identifier of the run step, which can be referenced in API endpoints. | 
**object** | **String** | The object type, which is always `thread.run.step`. | 
**createdAt** | **int** | The Unix timestamp (in seconds) for when the run step was created. | 
**assistantId** | **String** | The ID of the [assistant](/docs/api-reference/assistants) associated with the run step. | 
**threadId** | **String** | The ID of the [thread](/docs/api-reference/threads) that was run. | 
**runId** | **String** | The ID of the [run](/docs/api-reference/runs) that this run step is a part of. | 
**type** | **String** | The type of run step, which can be either `message_creation` or `tool_calls`. | 
**status** | **String** | The status of the run step, which can be either `in_progress`, `cancelled`, `failed`, `completed`, or `expired`. | 
**stepDetails** | [**RunStepObjectStepDetails**](RunStepObjectStepDetails.md) |  | 
**lastError** | [**RunStepObjectLastError**](RunStepObjectLastError.md) |  | 
**expiredAt** | **int** | The Unix timestamp (in seconds) for when the run step expired. A step is considered expired if the parent run is expired. | 
**cancelledAt** | **int** | The Unix timestamp (in seconds) for when the run step was cancelled. | 
**failedAt** | **int** | The Unix timestamp (in seconds) for when the run step failed. | 
**completedAt** | **int** | The Unix timestamp (in seconds) for when the run step completed. | 
**metadata** | [**Object**](.md) | Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long.  | 
**usage** | [**RunStepCompletionUsage**](RunStepCompletionUsage.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


