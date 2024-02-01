# openapi.model.FineTuningJob

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The object identifier, which can be referenced in the API endpoints. | 
**createdAt** | **int** | The Unix timestamp (in seconds) for when the fine-tuning job was created. | 
**error** | [**FineTuningJobError**](FineTuningJobError.md) |  | 
**fineTunedModel** | **String** | The name of the fine-tuned model that is being created. The value will be null if the fine-tuning job is still running. | 
**finishedAt** | **int** | The Unix timestamp (in seconds) for when the fine-tuning job was finished. The value will be null if the fine-tuning job is still running. | 
**hyperparameters** | [**FineTuningJobHyperparameters**](FineTuningJobHyperparameters.md) |  | 
**model** | **String** | The base model that is being fine-tuned. | 
**object** | **String** | The object type, which is always \"fine_tuning.job\". | 
**organizationId** | **String** | The organization that owns the fine-tuning job. | 
**resultFiles** | **List<String>** | The compiled results file ID(s) for the fine-tuning job. You can retrieve the results with the [Files API](/docs/api-reference/files/retrieve-contents). | [default to const []]
**status** | **String** | The current status of the fine-tuning job, which can be either `validating_files`, `queued`, `running`, `succeeded`, `failed`, or `cancelled`. | 
**trainedTokens** | **int** | The total number of billable tokens processed by this fine-tuning job. The value will be null if the fine-tuning job is still running. | 
**trainingFile** | **String** | The file ID used for training. You can retrieve the training data with the [Files API](/docs/api-reference/files/retrieve-contents). | 
**validationFile** | **String** | The file ID used for validation. You can retrieve the validation results with the [Files API](/docs/api-reference/files/retrieve-contents). | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


