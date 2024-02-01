# openapi.model.ChatCompletionTokenLogprob

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | **String** | The token. | 
**logprob** | **num** | The log probability of this token. | 
**bytes** | **List<int>** | A list of integers representing the UTF-8 bytes representation of the token. Useful in instances where characters are represented by multiple tokens and their byte representations must be combined to generate the correct text representation. Can be `null` if there is no bytes representation for the token. | [default to const []]
**topLogprobs** | [**List<ChatCompletionTokenLogprobTopLogprobsInner>**](ChatCompletionTokenLogprobTopLogprobsInner.md) | List of the most likely tokens and their log probability, at this token position. In rare cases, there may be fewer than the number of requested `top_logprobs` returned. | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


