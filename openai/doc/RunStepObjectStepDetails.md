# openapi.model.RunStepObjectStepDetails

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Always `message_creation`. | 
**messageCreation** | [**RunStepDetailsMessageCreationObjectMessageCreation**](RunStepDetailsMessageCreationObjectMessageCreation.md) |  | 
**toolCalls** | [**List<RunStepDetailsToolCallsObjectToolCallsInner>**](RunStepDetailsToolCallsObjectToolCallsInner.md) | An array of tool calls the run step was involved in. These can be associated with one of three types of tools: `code_interpreter`, `retrieval`, or `function`.  | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


