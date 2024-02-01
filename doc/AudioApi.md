# openapi.api.AudioApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSpeech**](AudioApi.md#createspeech) | **POST** /audio/speech | Generates audio from the input text.
[**createTranscription**](AudioApi.md#createtranscription) | **POST** /audio/transcriptions | Transcribes audio into the input language.
[**createTranslation**](AudioApi.md#createtranslation) | **POST** /audio/translations | Translates audio into English.


# **createSpeech**
> MultipartFile createSpeech(createSpeechRequest)

Generates audio from the input text.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AudioApi();
final createSpeechRequest = CreateSpeechRequest(); // CreateSpeechRequest | 

try {
    final result = api_instance.createSpeech(createSpeechRequest);
    print(result);
} catch (e) {
    print('Exception when calling AudioApi->createSpeech: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createSpeechRequest** | [**CreateSpeechRequest**](CreateSpeechRequest.md)|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTranscription**
> CreateTranscriptionResponse createTranscription(file, model, language, prompt, responseFormat, temperature)

Transcribes audio into the input language.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AudioApi();
final file = BINARY_DATA_HERE; // MultipartFile | The audio file object (not file name) to transcribe, in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a, ogg, wav, or webm. 
final model = ; // CreateTranscriptionRequestModel | 
final language = language_example; // String | The language of the input audio. Supplying the input language in [ISO-639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) format will improve accuracy and latency. 
final prompt = prompt_example; // String | An optional text to guide the model's style or continue a previous audio segment. The [prompt](/docs/guides/speech-to-text/prompting) should match the audio language. 
final responseFormat = responseFormat_example; // String | The format of the transcript output, in one of these options: `json`, `text`, `srt`, `verbose_json`, or `vtt`. 
final temperature = 8.14; // num | The sampling temperature, between 0 and 1. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. If set to 0, the model will use [log probability](https://en.wikipedia.org/wiki/Log_probability) to automatically increase the temperature until certain thresholds are hit. 

try {
    final result = api_instance.createTranscription(file, model, language, prompt, responseFormat, temperature);
    print(result);
} catch (e) {
    print('Exception when calling AudioApi->createTranscription: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**| The audio file object (not file name) to transcribe, in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a, ogg, wav, or webm.  | 
 **model** | [**CreateTranscriptionRequestModel**](CreateTranscriptionRequestModel.md)|  | 
 **language** | **String**| The language of the input audio. Supplying the input language in [ISO-639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) format will improve accuracy and latency.  | [optional] 
 **prompt** | **String**| An optional text to guide the model's style or continue a previous audio segment. The [prompt](/docs/guides/speech-to-text/prompting) should match the audio language.  | [optional] 
 **responseFormat** | **String**| The format of the transcript output, in one of these options: `json`, `text`, `srt`, `verbose_json`, or `vtt`.  | [optional] [default to 'json']
 **temperature** | **num**| The sampling temperature, between 0 and 1. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. If set to 0, the model will use [log probability](https://en.wikipedia.org/wiki/Log_probability) to automatically increase the temperature until certain thresholds are hit.  | [optional] [default to 0]

### Return type

[**CreateTranscriptionResponse**](CreateTranscriptionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTranslation**
> CreateTranslationResponse createTranslation(file, model, prompt, responseFormat, temperature)

Translates audio into English.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AudioApi();
final file = BINARY_DATA_HERE; // MultipartFile | The audio file object (not file name) translate, in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a, ogg, wav, or webm. 
final model = ; // CreateTranscriptionRequestModel | 
final prompt = prompt_example; // String | An optional text to guide the model's style or continue a previous audio segment. The [prompt](/docs/guides/speech-to-text/prompting) should be in English. 
final responseFormat = responseFormat_example; // String | The format of the transcript output, in one of these options: `json`, `text`, `srt`, `verbose_json`, or `vtt`. 
final temperature = 8.14; // num | The sampling temperature, between 0 and 1. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. If set to 0, the model will use [log probability](https://en.wikipedia.org/wiki/Log_probability) to automatically increase the temperature until certain thresholds are hit. 

try {
    final result = api_instance.createTranslation(file, model, prompt, responseFormat, temperature);
    print(result);
} catch (e) {
    print('Exception when calling AudioApi->createTranslation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**| The audio file object (not file name) translate, in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a, ogg, wav, or webm.  | 
 **model** | [**CreateTranscriptionRequestModel**](CreateTranscriptionRequestModel.md)|  | 
 **prompt** | **String**| An optional text to guide the model's style or continue a previous audio segment. The [prompt](/docs/guides/speech-to-text/prompting) should be in English.  | [optional] 
 **responseFormat** | **String**| The format of the transcript output, in one of these options: `json`, `text`, `srt`, `verbose_json`, or `vtt`.  | [optional] [default to 'json']
 **temperature** | **num**| The sampling temperature, between 0 and 1. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. If set to 0, the model will use [log probability](https://en.wikipedia.org/wiki/Log_probability) to automatically increase the temperature until certain thresholds are hit.  | [optional] [default to 0]

### Return type

[**CreateTranslationResponse**](CreateTranslationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

