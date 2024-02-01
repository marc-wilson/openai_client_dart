# openapi.model.OpenAIFile

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The file identifier, which can be referenced in the API endpoints. | 
**bytes** | **int** | The size of the file, in bytes. | 
**createdAt** | **int** | The Unix timestamp (in seconds) for when the file was created. | 
**filename** | **String** | The name of the file. | 
**object** | **String** | The object type, which is always `file`. | 
**purpose** | **String** | The intended purpose of the file. Supported values are `fine-tune`, `fine-tune-results`, `assistants`, and `assistants_output`. | 
**status** | **String** | Deprecated. The current status of the file, which can be either `uploaded`, `processed`, or `error`. | 
**statusDetails** | **String** | Deprecated. For details on why a fine-tuning training file failed validation, see the `error` field on `fine_tuning.job`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


