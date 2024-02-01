# openapi.model.RunStepDetailsToolCallsObjectToolCallsInner

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of the tool call object. | 
**type** | **String** | The type of tool call. This is always going to be `code_interpreter` for this type of tool call. | 
**codeInterpreter** | [**RunStepDetailsToolCallsCodeObjectCodeInterpreter**](RunStepDetailsToolCallsCodeObjectCodeInterpreter.md) |  | 
**retrieval** | [**Object**](.md) | For now, this is always going to be an empty object. | 
**function_** | [**RunStepDetailsToolCallsFunctionObjectFunction**](RunStepDetailsToolCallsFunctionObjectFunction.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


