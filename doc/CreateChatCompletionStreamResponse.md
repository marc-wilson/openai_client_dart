# openapi.model.CreateChatCompletionStreamResponse

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | A unique identifier for the chat completion. Each chunk has the same ID. | 
**choices** | [**List<CreateChatCompletionStreamResponseChoicesInner>**](CreateChatCompletionStreamResponseChoicesInner.md) | A list of chat completion choices. Can be more than one if `n` is greater than 1. | [default to const []]
**created** | **int** | The Unix timestamp (in seconds) of when the chat completion was created. Each chunk has the same timestamp. | 
**model** | **String** | The model to generate the completion. | 
**systemFingerprint** | **String** | This fingerprint represents the backend configuration that the model runs with. Can be used in conjunction with the `seed` request parameter to understand when backend changes have been made that might impact determinism.  | [optional] 
**object** | **String** | The object type, which is always `chat.completion.chunk`. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


