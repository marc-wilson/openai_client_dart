# openapi.model.CreateThreadAndRunRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assistantId** | **String** | The ID of the [assistant](/docs/api-reference/assistants) to use to execute this run. | 
**thread** | [**CreateThreadRequest**](CreateThreadRequest.md) |  | [optional] 
**model** | **String** | The ID of the [Model](/docs/api-reference/models) to be used to execute this run. If a value is provided here, it will override the model associated with the assistant. If not, the model associated with the assistant will be used. | [optional] 
**instructions** | **String** | Override the default system message of the assistant. This is useful for modifying the behavior on a per-run basis. | [optional] 
**tools** | [**List<CreateThreadAndRunRequestToolsInner>**](CreateThreadAndRunRequestToolsInner.md) | Override the tools the assistant can use for this run. This is useful for modifying the behavior on a per-run basis. | [optional] [default to const []]
**metadata** | [**Object**](.md) | Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


