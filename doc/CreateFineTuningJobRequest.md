# openapi.model.CreateFineTuningJobRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**model** | [**CreateFineTuningJobRequestModel**](CreateFineTuningJobRequestModel.md) |  | 
**trainingFile** | **String** | The ID of an uploaded file that contains training data.  See [upload file](/docs/api-reference/files/upload) for how to upload a file.  Your dataset must be formatted as a JSONL file. Additionally, you must upload your file with the purpose `fine-tune`.  See the [fine-tuning guide](/docs/guides/fine-tuning) for more details.  | 
**hyperparameters** | [**CreateFineTuningJobRequestHyperparameters**](CreateFineTuningJobRequestHyperparameters.md) |  | [optional] 
**suffix** | **String** | A string of up to 18 characters that will be added to your fine-tuned model name.  For example, a `suffix` of \"custom-model-name\" would produce a model name like `ft:gpt-3.5-turbo:openai:custom-model-name:7p4lURel`.  | [optional] 
**validationFile** | **String** | The ID of an uploaded file that contains validation data.  If you provide this file, the data is used to generate validation metrics periodically during fine-tuning. These metrics can be viewed in the fine-tuning results file. The same data should not be present in both train and validation files.  Your dataset must be formatted as a JSONL file. You must upload your file with the purpose `fine-tune`.  See the [fine-tuning guide](/docs/guides/fine-tuning) for more details.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


