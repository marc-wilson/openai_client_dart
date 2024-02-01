# openapi.model.CreateAssistantRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**model** | **String** |  | 
**name** | **String** | The name of the assistant. The maximum length is 256 characters.  | [optional] 
**description** | **String** | The description of the assistant. The maximum length is 512 characters.  | [optional] 
**instructions** | **String** | The system instructions that the assistant uses. The maximum length is 32768 characters.  | [optional] 
**tools** | [**List<AssistantObjectToolsInner>**](AssistantObjectToolsInner.md) | A list of tool enabled on the assistant. There can be a maximum of 128 tools per assistant. Tools can be of types `code_interpreter`, `retrieval`, or `function`.  | [optional] [default to const []]
**fileIds** | **List<String>** | A list of [file](/docs/api-reference/files) IDs attached to this assistant. There can be a maximum of 20 files attached to the assistant. Files are ordered by their creation date in ascending order.  | [optional] [default to const []]
**metadata** | [**Object**](.md) | Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


