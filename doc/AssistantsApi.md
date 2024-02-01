# openapi.api.AssistantsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelRun**](AssistantsApi.md#cancelrun) | **POST** /threads/{thread_id}/runs/{run_id}/cancel | Cancels a run that is `in_progress`.
[**createAssistant**](AssistantsApi.md#createassistant) | **POST** /assistants | Create an assistant with a model and instructions.
[**createAssistantFile**](AssistantsApi.md#createassistantfile) | **POST** /assistants/{assistant_id}/files | Create an assistant file by attaching a [File](/docs/api-reference/files) to an [assistant](/docs/api-reference/assistants).
[**createMessage**](AssistantsApi.md#createmessage) | **POST** /threads/{thread_id}/messages | Create a message.
[**createRun**](AssistantsApi.md#createrun) | **POST** /threads/{thread_id}/runs | Create a run.
[**createThread**](AssistantsApi.md#createthread) | **POST** /threads | Create a thread.
[**createThreadAndRun**](AssistantsApi.md#createthreadandrun) | **POST** /threads/runs | Create a thread and run it in one request.
[**deleteAssistant**](AssistantsApi.md#deleteassistant) | **DELETE** /assistants/{assistant_id} | Delete an assistant.
[**deleteAssistantFile**](AssistantsApi.md#deleteassistantfile) | **DELETE** /assistants/{assistant_id}/files/{file_id} | Delete an assistant file.
[**deleteThread**](AssistantsApi.md#deletethread) | **DELETE** /threads/{thread_id} | Delete a thread.
[**getAssistant**](AssistantsApi.md#getassistant) | **GET** /assistants/{assistant_id} | Retrieves an assistant.
[**getAssistantFile**](AssistantsApi.md#getassistantfile) | **GET** /assistants/{assistant_id}/files/{file_id} | Retrieves an AssistantFile.
[**getMessage**](AssistantsApi.md#getmessage) | **GET** /threads/{thread_id}/messages/{message_id} | Retrieve a message.
[**getMessageFile**](AssistantsApi.md#getmessagefile) | **GET** /threads/{thread_id}/messages/{message_id}/files/{file_id} | Retrieves a message file.
[**getRun**](AssistantsApi.md#getrun) | **GET** /threads/{thread_id}/runs/{run_id} | Retrieves a run.
[**getRunStep**](AssistantsApi.md#getrunstep) | **GET** /threads/{thread_id}/runs/{run_id}/steps/{step_id} | Retrieves a run step.
[**getThread**](AssistantsApi.md#getthread) | **GET** /threads/{thread_id} | Retrieves a thread.
[**listAssistantFiles**](AssistantsApi.md#listassistantfiles) | **GET** /assistants/{assistant_id}/files | Returns a list of assistant files.
[**listAssistants**](AssistantsApi.md#listassistants) | **GET** /assistants | Returns a list of assistants.
[**listMessageFiles**](AssistantsApi.md#listmessagefiles) | **GET** /threads/{thread_id}/messages/{message_id}/files | Returns a list of message files.
[**listMessages**](AssistantsApi.md#listmessages) | **GET** /threads/{thread_id}/messages | Returns a list of messages for a given thread.
[**listRunSteps**](AssistantsApi.md#listrunsteps) | **GET** /threads/{thread_id}/runs/{run_id}/steps | Returns a list of run steps belonging to a run.
[**listRuns**](AssistantsApi.md#listruns) | **GET** /threads/{thread_id}/runs | Returns a list of runs belonging to a thread.
[**modifyAssistant**](AssistantsApi.md#modifyassistant) | **POST** /assistants/{assistant_id} | Modifies an assistant.
[**modifyMessage**](AssistantsApi.md#modifymessage) | **POST** /threads/{thread_id}/messages/{message_id} | Modifies a message.
[**modifyRun**](AssistantsApi.md#modifyrun) | **POST** /threads/{thread_id}/runs/{run_id} | Modifies a run.
[**modifyThread**](AssistantsApi.md#modifythread) | **POST** /threads/{thread_id} | Modifies a thread.
[**submitToolOuputsToRun**](AssistantsApi.md#submittoolouputstorun) | **POST** /threads/{thread_id}/runs/{run_id}/submit_tool_outputs | When a run has the `status: \"requires_action\"` and `required_action.type` is `submit_tool_outputs`, this endpoint can be used to submit the outputs from the tool calls once they're all completed. All outputs must be submitted in a single request. 


# **cancelRun**
> RunObject cancelRun(threadId, runId)

Cancels a run that is `in_progress`.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final threadId = threadId_example; // String | The ID of the thread to which this run belongs.
final runId = runId_example; // String | The ID of the run to cancel.

try {
    final result = api_instance.cancelRun(threadId, runId);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->cancelRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**| The ID of the thread to which this run belongs. | 
 **runId** | **String**| The ID of the run to cancel. | 

### Return type

[**RunObject**](RunObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAssistant**
> AssistantObject createAssistant(createAssistantRequest)

Create an assistant with a model and instructions.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final createAssistantRequest = CreateAssistantRequest(); // CreateAssistantRequest | 

try {
    final result = api_instance.createAssistant(createAssistantRequest);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->createAssistant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAssistantRequest** | [**CreateAssistantRequest**](CreateAssistantRequest.md)|  | 

### Return type

[**AssistantObject**](AssistantObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAssistantFile**
> AssistantFileObject createAssistantFile(assistantId, createAssistantFileRequest)

Create an assistant file by attaching a [File](/docs/api-reference/files) to an [assistant](/docs/api-reference/assistants).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final assistantId = file-abc123; // String | The ID of the assistant for which to create a File. 
final createAssistantFileRequest = CreateAssistantFileRequest(); // CreateAssistantFileRequest | 

try {
    final result = api_instance.createAssistantFile(assistantId, createAssistantFileRequest);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->createAssistantFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assistantId** | **String**| The ID of the assistant for which to create a File.  | 
 **createAssistantFileRequest** | [**CreateAssistantFileRequest**](CreateAssistantFileRequest.md)|  | 

### Return type

[**AssistantFileObject**](AssistantFileObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMessage**
> MessageObject createMessage(threadId, createMessageRequest)

Create a message.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final threadId = threadId_example; // String | The ID of the [thread](/docs/api-reference/threads) to create a message for.
final createMessageRequest = CreateMessageRequest(); // CreateMessageRequest | 

try {
    final result = api_instance.createMessage(threadId, createMessageRequest);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->createMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**| The ID of the [thread](/docs/api-reference/threads) to create a message for. | 
 **createMessageRequest** | [**CreateMessageRequest**](CreateMessageRequest.md)|  | 

### Return type

[**MessageObject**](MessageObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRun**
> RunObject createRun(threadId, createRunRequest)

Create a run.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final threadId = threadId_example; // String | The ID of the thread to run.
final createRunRequest = CreateRunRequest(); // CreateRunRequest | 

try {
    final result = api_instance.createRun(threadId, createRunRequest);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->createRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**| The ID of the thread to run. | 
 **createRunRequest** | [**CreateRunRequest**](CreateRunRequest.md)|  | 

### Return type

[**RunObject**](RunObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createThread**
> ThreadObject createThread(createThreadRequest)

Create a thread.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final createThreadRequest = CreateThreadRequest(); // CreateThreadRequest | 

try {
    final result = api_instance.createThread(createThreadRequest);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->createThread: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createThreadRequest** | [**CreateThreadRequest**](CreateThreadRequest.md)|  | [optional] 

### Return type

[**ThreadObject**](ThreadObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createThreadAndRun**
> RunObject createThreadAndRun(createThreadAndRunRequest)

Create a thread and run it in one request.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final createThreadAndRunRequest = CreateThreadAndRunRequest(); // CreateThreadAndRunRequest | 

try {
    final result = api_instance.createThreadAndRun(createThreadAndRunRequest);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->createThreadAndRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createThreadAndRunRequest** | [**CreateThreadAndRunRequest**](CreateThreadAndRunRequest.md)|  | 

### Return type

[**RunObject**](RunObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAssistant**
> DeleteAssistantResponse deleteAssistant(assistantId)

Delete an assistant.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final assistantId = assistantId_example; // String | The ID of the assistant to delete.

try {
    final result = api_instance.deleteAssistant(assistantId);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->deleteAssistant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assistantId** | **String**| The ID of the assistant to delete. | 

### Return type

[**DeleteAssistantResponse**](DeleteAssistantResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAssistantFile**
> DeleteAssistantFileResponse deleteAssistantFile(assistantId, fileId)

Delete an assistant file.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final assistantId = assistantId_example; // String | The ID of the assistant that the file belongs to.
final fileId = fileId_example; // String | The ID of the file to delete.

try {
    final result = api_instance.deleteAssistantFile(assistantId, fileId);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->deleteAssistantFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assistantId** | **String**| The ID of the assistant that the file belongs to. | 
 **fileId** | **String**| The ID of the file to delete. | 

### Return type

[**DeleteAssistantFileResponse**](DeleteAssistantFileResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteThread**
> DeleteThreadResponse deleteThread(threadId)

Delete a thread.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final threadId = threadId_example; // String | The ID of the thread to delete.

try {
    final result = api_instance.deleteThread(threadId);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->deleteThread: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**| The ID of the thread to delete. | 

### Return type

[**DeleteThreadResponse**](DeleteThreadResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssistant**
> AssistantObject getAssistant(assistantId)

Retrieves an assistant.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final assistantId = assistantId_example; // String | The ID of the assistant to retrieve.

try {
    final result = api_instance.getAssistant(assistantId);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->getAssistant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assistantId** | **String**| The ID of the assistant to retrieve. | 

### Return type

[**AssistantObject**](AssistantObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssistantFile**
> AssistantFileObject getAssistantFile(assistantId, fileId)

Retrieves an AssistantFile.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final assistantId = assistantId_example; // String | The ID of the assistant who the file belongs to.
final fileId = fileId_example; // String | The ID of the file we're getting.

try {
    final result = api_instance.getAssistantFile(assistantId, fileId);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->getAssistantFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assistantId** | **String**| The ID of the assistant who the file belongs to. | 
 **fileId** | **String**| The ID of the file we're getting. | 

### Return type

[**AssistantFileObject**](AssistantFileObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessage**
> MessageObject getMessage(threadId, messageId)

Retrieve a message.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final threadId = threadId_example; // String | The ID of the [thread](/docs/api-reference/threads) to which this message belongs.
final messageId = messageId_example; // String | The ID of the message to retrieve.

try {
    final result = api_instance.getMessage(threadId, messageId);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->getMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**| The ID of the [thread](/docs/api-reference/threads) to which this message belongs. | 
 **messageId** | **String**| The ID of the message to retrieve. | 

### Return type

[**MessageObject**](MessageObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessageFile**
> MessageFileObject getMessageFile(threadId, messageId, fileId)

Retrieves a message file.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final threadId = thread_abc123; // String | The ID of the thread to which the message and File belong.
final messageId = msg_abc123; // String | The ID of the message the file belongs to.
final fileId = file-abc123; // String | The ID of the file being retrieved.

try {
    final result = api_instance.getMessageFile(threadId, messageId, fileId);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->getMessageFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**| The ID of the thread to which the message and File belong. | 
 **messageId** | **String**| The ID of the message the file belongs to. | 
 **fileId** | **String**| The ID of the file being retrieved. | 

### Return type

[**MessageFileObject**](MessageFileObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRun**
> RunObject getRun(threadId, runId)

Retrieves a run.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final threadId = threadId_example; // String | The ID of the [thread](/docs/api-reference/threads) that was run.
final runId = runId_example; // String | The ID of the run to retrieve.

try {
    final result = api_instance.getRun(threadId, runId);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->getRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**| The ID of the [thread](/docs/api-reference/threads) that was run. | 
 **runId** | **String**| The ID of the run to retrieve. | 

### Return type

[**RunObject**](RunObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRunStep**
> RunStepObject getRunStep(threadId, runId, stepId)

Retrieves a run step.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final threadId = threadId_example; // String | The ID of the thread to which the run and run step belongs.
final runId = runId_example; // String | The ID of the run to which the run step belongs.
final stepId = stepId_example; // String | The ID of the run step to retrieve.

try {
    final result = api_instance.getRunStep(threadId, runId, stepId);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->getRunStep: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**| The ID of the thread to which the run and run step belongs. | 
 **runId** | **String**| The ID of the run to which the run step belongs. | 
 **stepId** | **String**| The ID of the run step to retrieve. | 

### Return type

[**RunStepObject**](RunStepObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThread**
> ThreadObject getThread(threadId)

Retrieves a thread.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final threadId = threadId_example; // String | The ID of the thread to retrieve.

try {
    final result = api_instance.getThread(threadId);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->getThread: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**| The ID of the thread to retrieve. | 

### Return type

[**ThreadObject**](ThreadObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAssistantFiles**
> ListAssistantFilesResponse listAssistantFiles(assistantId, limit, order, after, before)

Returns a list of assistant files.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final assistantId = assistantId_example; // String | The ID of the assistant the file belongs to.
final limit = 56; // int | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
final order = order_example; // String | Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order. 
final after = after_example; // String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
final before = before_example; // String | A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list. 

try {
    final result = api_instance.listAssistantFiles(assistantId, limit, order, after, before);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->listAssistantFiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assistantId** | **String**| The ID of the assistant the file belongs to. | 
 **limit** | **int**| A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional] [default to 20]
 **order** | **String**| Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order.  | [optional] [default to 'desc']
 **after** | **String**| A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list.  | [optional] 
 **before** | **String**| A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list.  | [optional] 

### Return type

[**ListAssistantFilesResponse**](ListAssistantFilesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAssistants**
> ListAssistantsResponse listAssistants(limit, order, after, before)

Returns a list of assistants.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final limit = 56; // int | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
final order = order_example; // String | Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order. 
final after = after_example; // String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
final before = before_example; // String | A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list. 

try {
    final result = api_instance.listAssistants(limit, order, after, before);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->listAssistants: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional] [default to 20]
 **order** | **String**| Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order.  | [optional] [default to 'desc']
 **after** | **String**| A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list.  | [optional] 
 **before** | **String**| A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list.  | [optional] 

### Return type

[**ListAssistantsResponse**](ListAssistantsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMessageFiles**
> ListMessageFilesResponse listMessageFiles(threadId, messageId, limit, order, after, before)

Returns a list of message files.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final threadId = threadId_example; // String | The ID of the thread that the message and files belong to.
final messageId = messageId_example; // String | The ID of the message that the files belongs to.
final limit = 56; // int | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
final order = order_example; // String | Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order. 
final after = after_example; // String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
final before = before_example; // String | A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list. 

try {
    final result = api_instance.listMessageFiles(threadId, messageId, limit, order, after, before);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->listMessageFiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**| The ID of the thread that the message and files belong to. | 
 **messageId** | **String**| The ID of the message that the files belongs to. | 
 **limit** | **int**| A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional] [default to 20]
 **order** | **String**| Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order.  | [optional] [default to 'desc']
 **after** | **String**| A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list.  | [optional] 
 **before** | **String**| A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list.  | [optional] 

### Return type

[**ListMessageFilesResponse**](ListMessageFilesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMessages**
> ListMessagesResponse listMessages(threadId, limit, order, after, before)

Returns a list of messages for a given thread.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final threadId = threadId_example; // String | The ID of the [thread](/docs/api-reference/threads) the messages belong to.
final limit = 56; // int | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
final order = order_example; // String | Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order. 
final after = after_example; // String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
final before = before_example; // String | A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list. 

try {
    final result = api_instance.listMessages(threadId, limit, order, after, before);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->listMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**| The ID of the [thread](/docs/api-reference/threads) the messages belong to. | 
 **limit** | **int**| A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional] [default to 20]
 **order** | **String**| Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order.  | [optional] [default to 'desc']
 **after** | **String**| A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list.  | [optional] 
 **before** | **String**| A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list.  | [optional] 

### Return type

[**ListMessagesResponse**](ListMessagesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRunSteps**
> ListRunStepsResponse listRunSteps(threadId, runId, limit, order, after, before)

Returns a list of run steps belonging to a run.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final threadId = threadId_example; // String | The ID of the thread the run and run steps belong to.
final runId = runId_example; // String | The ID of the run the run steps belong to.
final limit = 56; // int | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
final order = order_example; // String | Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order. 
final after = after_example; // String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
final before = before_example; // String | A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list. 

try {
    final result = api_instance.listRunSteps(threadId, runId, limit, order, after, before);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->listRunSteps: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**| The ID of the thread the run and run steps belong to. | 
 **runId** | **String**| The ID of the run the run steps belong to. | 
 **limit** | **int**| A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional] [default to 20]
 **order** | **String**| Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order.  | [optional] [default to 'desc']
 **after** | **String**| A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list.  | [optional] 
 **before** | **String**| A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list.  | [optional] 

### Return type

[**ListRunStepsResponse**](ListRunStepsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRuns**
> ListRunsResponse listRuns(threadId, limit, order, after, before)

Returns a list of runs belonging to a thread.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final threadId = threadId_example; // String | The ID of the thread the run belongs to.
final limit = 56; // int | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
final order = order_example; // String | Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order. 
final after = after_example; // String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
final before = before_example; // String | A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list. 

try {
    final result = api_instance.listRuns(threadId, limit, order, after, before);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->listRuns: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**| The ID of the thread the run belongs to. | 
 **limit** | **int**| A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional] [default to 20]
 **order** | **String**| Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order.  | [optional] [default to 'desc']
 **after** | **String**| A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list.  | [optional] 
 **before** | **String**| A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list.  | [optional] 

### Return type

[**ListRunsResponse**](ListRunsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyAssistant**
> AssistantObject modifyAssistant(assistantId, modifyAssistantRequest)

Modifies an assistant.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final assistantId = assistantId_example; // String | The ID of the assistant to modify.
final modifyAssistantRequest = ModifyAssistantRequest(); // ModifyAssistantRequest | 

try {
    final result = api_instance.modifyAssistant(assistantId, modifyAssistantRequest);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->modifyAssistant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assistantId** | **String**| The ID of the assistant to modify. | 
 **modifyAssistantRequest** | [**ModifyAssistantRequest**](ModifyAssistantRequest.md)|  | 

### Return type

[**AssistantObject**](AssistantObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyMessage**
> MessageObject modifyMessage(threadId, messageId, modifyMessageRequest)

Modifies a message.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final threadId = threadId_example; // String | The ID of the thread to which this message belongs.
final messageId = messageId_example; // String | The ID of the message to modify.
final modifyMessageRequest = ModifyMessageRequest(); // ModifyMessageRequest | 

try {
    final result = api_instance.modifyMessage(threadId, messageId, modifyMessageRequest);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->modifyMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**| The ID of the thread to which this message belongs. | 
 **messageId** | **String**| The ID of the message to modify. | 
 **modifyMessageRequest** | [**ModifyMessageRequest**](ModifyMessageRequest.md)|  | 

### Return type

[**MessageObject**](MessageObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyRun**
> RunObject modifyRun(threadId, runId, modifyRunRequest)

Modifies a run.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final threadId = threadId_example; // String | The ID of the [thread](/docs/api-reference/threads) that was run.
final runId = runId_example; // String | The ID of the run to modify.
final modifyRunRequest = ModifyRunRequest(); // ModifyRunRequest | 

try {
    final result = api_instance.modifyRun(threadId, runId, modifyRunRequest);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->modifyRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**| The ID of the [thread](/docs/api-reference/threads) that was run. | 
 **runId** | **String**| The ID of the run to modify. | 
 **modifyRunRequest** | [**ModifyRunRequest**](ModifyRunRequest.md)|  | 

### Return type

[**RunObject**](RunObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyThread**
> ThreadObject modifyThread(threadId, modifyThreadRequest)

Modifies a thread.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final threadId = threadId_example; // String | The ID of the thread to modify. Only the `metadata` can be modified.
final modifyThreadRequest = ModifyThreadRequest(); // ModifyThreadRequest | 

try {
    final result = api_instance.modifyThread(threadId, modifyThreadRequest);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->modifyThread: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**| The ID of the thread to modify. Only the `metadata` can be modified. | 
 **modifyThreadRequest** | [**ModifyThreadRequest**](ModifyThreadRequest.md)|  | 

### Return type

[**ThreadObject**](ThreadObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitToolOuputsToRun**
> RunObject submitToolOuputsToRun(threadId, runId, submitToolOutputsRunRequest)

When a run has the `status: \"requires_action\"` and `required_action.type` is `submit_tool_outputs`, this endpoint can be used to submit the outputs from the tool calls once they're all completed. All outputs must be submitted in a single request. 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: ApiKeyAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('ApiKeyAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssistantsApi();
final threadId = threadId_example; // String | The ID of the [thread](/docs/api-reference/threads) to which this run belongs.
final runId = runId_example; // String | The ID of the run that requires the tool output submission.
final submitToolOutputsRunRequest = SubmitToolOutputsRunRequest(); // SubmitToolOutputsRunRequest | 

try {
    final result = api_instance.submitToolOuputsToRun(threadId, runId, submitToolOutputsRunRequest);
    print(result);
} catch (e) {
    print('Exception when calling AssistantsApi->submitToolOuputsToRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**| The ID of the [thread](/docs/api-reference/threads) to which this run belongs. | 
 **runId** | **String**| The ID of the run that requires the tool output submission. | 
 **submitToolOutputsRunRequest** | [**SubmitToolOutputsRunRequest**](SubmitToolOutputsRunRequest.md)|  | 

### Return type

[**RunObject**](RunObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

