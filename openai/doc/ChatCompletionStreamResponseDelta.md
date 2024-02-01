# openapi.model.ChatCompletionStreamResponseDelta

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | **String** | The contents of the chunk message. | [optional] 
**functionCall** | [**ChatCompletionStreamResponseDeltaFunctionCall**](ChatCompletionStreamResponseDeltaFunctionCall.md) |  | [optional] 
**toolCalls** | [**List<ChatCompletionMessageToolCallChunk>**](ChatCompletionMessageToolCallChunk.md) |  | [optional] [default to const []]
**role** | **String** | The role of the author of this message. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


