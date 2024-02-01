# openapi.model.RunObject

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The identifier, which can be referenced in API endpoints. | 
**object** | **String** | The object type, which is always `thread.run`. | 
**createdAt** | **int** | The Unix timestamp (in seconds) for when the run was created. | 
**threadId** | **String** | The ID of the [thread](/docs/api-reference/threads) that was executed on as a part of this run. | 
**assistantId** | **String** | The ID of the [assistant](/docs/api-reference/assistants) used for execution of this run. | 
**status** | **String** | The status of the run, which can be either `queued`, `in_progress`, `requires_action`, `cancelling`, `cancelled`, `failed`, `completed`, or `expired`. | 
**requiredAction** | [**RunObjectRequiredAction**](RunObjectRequiredAction.md) |  | 
**lastError** | [**RunObjectLastError**](RunObjectLastError.md) |  | 
**expiresAt** | **int** | The Unix timestamp (in seconds) for when the run will expire. | 
**startedAt** | **int** | The Unix timestamp (in seconds) for when the run was started. | 
**cancelledAt** | **int** | The Unix timestamp (in seconds) for when the run was cancelled. | 
**failedAt** | **int** | The Unix timestamp (in seconds) for when the run failed. | 
**completedAt** | **int** | The Unix timestamp (in seconds) for when the run was completed. | 
**model** | **String** | The model that the [assistant](/docs/api-reference/assistants) used for this run. | 
**instructions** | **String** | The instructions that the [assistant](/docs/api-reference/assistants) used for this run. | 
**tools** | [**List<AssistantObjectToolsInner>**](AssistantObjectToolsInner.md) | The list of tools that the [assistant](/docs/api-reference/assistants) used for this run. | [default to const []]
**fileIds** | **List<String>** | The list of [File](/docs/api-reference/files) IDs the [assistant](/docs/api-reference/assistants) used for this run. | [default to const []]
**metadata** | [**Object**](.md) | Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long.  | 
**usage** | [**RunCompletionUsage**](RunCompletionUsage.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


