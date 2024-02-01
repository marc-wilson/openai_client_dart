# openapi.model.CreateChatCompletionFunctionResponse

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | A unique identifier for the chat completion. | 
**choices** | [**List<CreateChatCompletionFunctionResponseChoicesInner>**](CreateChatCompletionFunctionResponseChoicesInner.md) | A list of chat completion choices. Can be more than one if `n` is greater than 1. | [default to const []]
**created** | **int** | The Unix timestamp (in seconds) of when the chat completion was created. | 
**model** | **String** | The model used for the chat completion. | 
**systemFingerprint** | **String** | This fingerprint represents the backend configuration that the model runs with.  Can be used in conjunction with the `seed` request parameter to understand when backend changes have been made that might impact determinism.  | [optional] 
**object** | **String** | The object type, which is always `chat.completion`. | 
**usage** | [**CompletionUsage**](CompletionUsage.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


