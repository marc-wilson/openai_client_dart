# openapi.model.CreateCompletionResponse

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | A unique identifier for the completion. | 
**choices** | [**List<CreateCompletionResponseChoicesInner>**](CreateCompletionResponseChoicesInner.md) | The list of completion choices the model generated for the input prompt. | [default to const []]
**created** | **int** | The Unix timestamp (in seconds) of when the completion was created. | 
**model** | **String** | The model used for completion. | 
**systemFingerprint** | **String** | This fingerprint represents the backend configuration that the model runs with.  Can be used in conjunction with the `seed` request parameter to understand when backend changes have been made that might impact determinism.  | [optional] 
**object** | **String** | The object type, which is always \"text_completion\" | 
**usage** | [**CompletionUsage**](CompletionUsage.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


