//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://api.openai.com/v1', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'AssistantFileObject':
          return AssistantFileObject.fromJson(value);
        case 'AssistantObject':
          return AssistantObject.fromJson(value);
        case 'AssistantObjectToolsInner':
          return AssistantObjectToolsInner.fromJson(value);
        case 'AssistantToolsCode':
          return AssistantToolsCode.fromJson(value);
        case 'AssistantToolsFunction':
          return AssistantToolsFunction.fromJson(value);
        case 'AssistantToolsRetrieval':
          return AssistantToolsRetrieval.fromJson(value);
        case 'ChatCompletionFunctionCallOption':
          return ChatCompletionFunctionCallOption.fromJson(value);
        case 'ChatCompletionFunctions':
          return ChatCompletionFunctions.fromJson(value);
        case 'ChatCompletionMessageToolCall':
          return ChatCompletionMessageToolCall.fromJson(value);
        case 'ChatCompletionMessageToolCallChunk':
          return ChatCompletionMessageToolCallChunk.fromJson(value);
        case 'ChatCompletionMessageToolCallChunkFunction':
          return ChatCompletionMessageToolCallChunkFunction.fromJson(value);
        case 'ChatCompletionMessageToolCallFunction':
          return ChatCompletionMessageToolCallFunction.fromJson(value);
        case 'ChatCompletionNamedToolChoice':
          return ChatCompletionNamedToolChoice.fromJson(value);
        case 'ChatCompletionNamedToolChoiceFunction':
          return ChatCompletionNamedToolChoiceFunction.fromJson(value);
        case 'ChatCompletionRequestAssistantMessage':
          return ChatCompletionRequestAssistantMessage.fromJson(value);
        case 'ChatCompletionRequestAssistantMessageFunctionCall':
          return ChatCompletionRequestAssistantMessageFunctionCall.fromJson(value);
        case 'ChatCompletionRequestFunctionMessage':
          return ChatCompletionRequestFunctionMessage.fromJson(value);
        case 'ChatCompletionRequestMessage':
          return ChatCompletionRequestMessage.fromJson(value);
        case 'ChatCompletionRequestMessageContentPart':
          return ChatCompletionRequestMessageContentPart.fromJson(value);
        case 'ChatCompletionRequestMessageContentPartImage':
          return ChatCompletionRequestMessageContentPartImage.fromJson(value);
        case 'ChatCompletionRequestMessageContentPartImageImageUrl':
          return ChatCompletionRequestMessageContentPartImageImageUrl.fromJson(value);
        case 'ChatCompletionRequestMessageContentPartText':
          return ChatCompletionRequestMessageContentPartText.fromJson(value);
        case 'ChatCompletionRequestSystemMessage':
          return ChatCompletionRequestSystemMessage.fromJson(value);
        case 'ChatCompletionRequestToolMessage':
          return ChatCompletionRequestToolMessage.fromJson(value);
        case 'ChatCompletionRequestUserMessage':
          return ChatCompletionRequestUserMessage.fromJson(value);
        case 'ChatCompletionRequestUserMessageContent':
          return ChatCompletionRequestUserMessageContent.fromJson(value);
        case 'ChatCompletionResponseMessage':
          return ChatCompletionResponseMessage.fromJson(value);
        case 'ChatCompletionRole':
          return ChatCompletionRoleTypeTransformer().decode(value);
        case 'ChatCompletionStreamResponseDelta':
          return ChatCompletionStreamResponseDelta.fromJson(value);
        case 'ChatCompletionStreamResponseDeltaFunctionCall':
          return ChatCompletionStreamResponseDeltaFunctionCall.fromJson(value);
        case 'ChatCompletionTokenLogprob':
          return ChatCompletionTokenLogprob.fromJson(value);
        case 'ChatCompletionTokenLogprobTopLogprobsInner':
          return ChatCompletionTokenLogprobTopLogprobsInner.fromJson(value);
        case 'ChatCompletionTool':
          return ChatCompletionTool.fromJson(value);
        case 'ChatCompletionToolChoiceOption':
          return ChatCompletionToolChoiceOption.fromJson(value);
        case 'CompletionUsage':
          return CompletionUsage.fromJson(value);
        case 'CreateAssistantFileRequest':
          return CreateAssistantFileRequest.fromJson(value);
        case 'CreateAssistantRequest':
          return CreateAssistantRequest.fromJson(value);
        case 'CreateChatCompletionFunctionResponse':
          return CreateChatCompletionFunctionResponse.fromJson(value);
        case 'CreateChatCompletionFunctionResponseChoicesInner':
          return CreateChatCompletionFunctionResponseChoicesInner.fromJson(value);
        case 'CreateChatCompletionRequest':
          return CreateChatCompletionRequest.fromJson(value);
        case 'CreateChatCompletionRequestFunctionCall':
          return CreateChatCompletionRequestFunctionCall.fromJson(value);
        case 'CreateChatCompletionRequestModel':
          return CreateChatCompletionRequestModel.fromJson(value);
        case 'CreateChatCompletionRequestResponseFormat':
          return CreateChatCompletionRequestResponseFormat.fromJson(value);
        case 'CreateChatCompletionRequestStop':
          return CreateChatCompletionRequestStop.fromJson(value);
        case 'CreateChatCompletionResponse':
          return CreateChatCompletionResponse.fromJson(value);
        case 'CreateChatCompletionResponseChoicesInner':
          return CreateChatCompletionResponseChoicesInner.fromJson(value);
        case 'CreateChatCompletionResponseChoicesInnerLogprobs':
          return CreateChatCompletionResponseChoicesInnerLogprobs.fromJson(value);
        case 'CreateChatCompletionStreamResponse':
          return CreateChatCompletionStreamResponse.fromJson(value);
        case 'CreateChatCompletionStreamResponseChoicesInner':
          return CreateChatCompletionStreamResponseChoicesInner.fromJson(value);
        case 'CreateCompletionRequest':
          return CreateCompletionRequest.fromJson(value);
        case 'CreateCompletionRequestModel':
          return CreateCompletionRequestModel.fromJson(value);
        case 'CreateCompletionRequestPrompt':
          return CreateCompletionRequestPrompt.fromJson(value);
        case 'CreateCompletionRequestStop':
          return CreateCompletionRequestStop.fromJson(value);
        case 'CreateCompletionResponse':
          return CreateCompletionResponse.fromJson(value);
        case 'CreateCompletionResponseChoicesInner':
          return CreateCompletionResponseChoicesInner.fromJson(value);
        case 'CreateCompletionResponseChoicesInnerLogprobs':
          return CreateCompletionResponseChoicesInnerLogprobs.fromJson(value);
        case 'CreateEmbeddingRequest':
          return CreateEmbeddingRequest.fromJson(value);
        case 'CreateEmbeddingRequestInput':
          return CreateEmbeddingRequestInput.fromJson(value);
        case 'CreateEmbeddingRequestModel':
          return CreateEmbeddingRequestModel.fromJson(value);
        case 'CreateEmbeddingResponse':
          return CreateEmbeddingResponse.fromJson(value);
        case 'CreateEmbeddingResponseUsage':
          return CreateEmbeddingResponseUsage.fromJson(value);
        case 'CreateFineTuningJobRequest':
          return CreateFineTuningJobRequest.fromJson(value);
        case 'CreateFineTuningJobRequestHyperparameters':
          return CreateFineTuningJobRequestHyperparameters.fromJson(value);
        case 'CreateFineTuningJobRequestHyperparametersBatchSize':
          return CreateFineTuningJobRequestHyperparametersBatchSize.fromJson(value);
        case 'CreateFineTuningJobRequestHyperparametersLearningRateMultiplier':
          return CreateFineTuningJobRequestHyperparametersLearningRateMultiplier.fromJson(value);
        case 'CreateFineTuningJobRequestHyperparametersNEpochs':
          return CreateFineTuningJobRequestHyperparametersNEpochs.fromJson(value);
        case 'CreateFineTuningJobRequestModel':
          return CreateFineTuningJobRequestModel.fromJson(value);
        case 'CreateImageEditRequestModel':
          return CreateImageEditRequestModel.fromJson(value);
        case 'CreateImageRequest':
          return CreateImageRequest.fromJson(value);
        case 'CreateImageRequestModel':
          return CreateImageRequestModel.fromJson(value);
        case 'CreateMessageRequest':
          return CreateMessageRequest.fromJson(value);
        case 'CreateModerationRequest':
          return CreateModerationRequest.fromJson(value);
        case 'CreateModerationRequestInput':
          return CreateModerationRequestInput.fromJson(value);
        case 'CreateModerationRequestModel':
          return CreateModerationRequestModel.fromJson(value);
        case 'CreateModerationResponse':
          return CreateModerationResponse.fromJson(value);
        case 'CreateModerationResponseResultsInner':
          return CreateModerationResponseResultsInner.fromJson(value);
        case 'CreateModerationResponseResultsInnerCategories':
          return CreateModerationResponseResultsInnerCategories.fromJson(value);
        case 'CreateModerationResponseResultsInnerCategoryScores':
          return CreateModerationResponseResultsInnerCategoryScores.fromJson(value);
        case 'CreateRunRequest':
          return CreateRunRequest.fromJson(value);
        case 'CreateSpeechRequest':
          return CreateSpeechRequest.fromJson(value);
        case 'CreateSpeechRequestModel':
          return CreateSpeechRequestModel.fromJson(value);
        case 'CreateThreadAndRunRequest':
          return CreateThreadAndRunRequest.fromJson(value);
        case 'CreateThreadAndRunRequestToolsInner':
          return CreateThreadAndRunRequestToolsInner.fromJson(value);
        case 'CreateThreadRequest':
          return CreateThreadRequest.fromJson(value);
        case 'CreateTranscriptionRequestModel':
          return CreateTranscriptionRequestModel.fromJson(value);
        case 'CreateTranscriptionResponse':
          return CreateTranscriptionResponse.fromJson(value);
        case 'CreateTranslationResponse':
          return CreateTranslationResponse.fromJson(value);
        case 'DeleteAssistantFileResponse':
          return DeleteAssistantFileResponse.fromJson(value);
        case 'DeleteAssistantResponse':
          return DeleteAssistantResponse.fromJson(value);
        case 'DeleteFileResponse':
          return DeleteFileResponse.fromJson(value);
        case 'DeleteMessageResponse':
          return DeleteMessageResponse.fromJson(value);
        case 'DeleteModelResponse':
          return DeleteModelResponse.fromJson(value);
        case 'DeleteThreadResponse':
          return DeleteThreadResponse.fromJson(value);
        case 'Embedding':
          return Embedding.fromJson(value);
        case 'Error':
          return Error.fromJson(value);
        case 'ErrorResponse':
          return ErrorResponse.fromJson(value);
        case 'FineTuningJob':
          return FineTuningJob.fromJson(value);
        case 'FineTuningJobError':
          return FineTuningJobError.fromJson(value);
        case 'FineTuningJobEvent':
          return FineTuningJobEvent.fromJson(value);
        case 'FineTuningJobHyperparameters':
          return FineTuningJobHyperparameters.fromJson(value);
        case 'FineTuningJobHyperparametersNEpochs':
          return FineTuningJobHyperparametersNEpochs.fromJson(value);
        case 'FunctionObject':
          return FunctionObject.fromJson(value);
        case 'Image':
          return Image.fromJson(value);
        case 'ImagesResponse':
          return ImagesResponse.fromJson(value);
        case 'ListAssistantFilesResponse':
          return ListAssistantFilesResponse.fromJson(value);
        case 'ListAssistantsResponse':
          return ListAssistantsResponse.fromJson(value);
        case 'ListFilesResponse':
          return ListFilesResponse.fromJson(value);
        case 'ListFineTuningJobEventsResponse':
          return ListFineTuningJobEventsResponse.fromJson(value);
        case 'ListMessageFilesResponse':
          return ListMessageFilesResponse.fromJson(value);
        case 'ListMessagesResponse':
          return ListMessagesResponse.fromJson(value);
        case 'ListModelsResponse':
          return ListModelsResponse.fromJson(value);
        case 'ListPaginatedFineTuningJobsResponse':
          return ListPaginatedFineTuningJobsResponse.fromJson(value);
        case 'ListRunStepsResponse':
          return ListRunStepsResponse.fromJson(value);
        case 'ListRunsResponse':
          return ListRunsResponse.fromJson(value);
        case 'ListThreadsResponse':
          return ListThreadsResponse.fromJson(value);
        case 'MessageContentImageFileObject':
          return MessageContentImageFileObject.fromJson(value);
        case 'MessageContentImageFileObjectImageFile':
          return MessageContentImageFileObjectImageFile.fromJson(value);
        case 'MessageContentTextAnnotationsFileCitationObject':
          return MessageContentTextAnnotationsFileCitationObject.fromJson(value);
        case 'MessageContentTextAnnotationsFileCitationObjectFileCitation':
          return MessageContentTextAnnotationsFileCitationObjectFileCitation.fromJson(value);
        case 'MessageContentTextAnnotationsFilePathObject':
          return MessageContentTextAnnotationsFilePathObject.fromJson(value);
        case 'MessageContentTextAnnotationsFilePathObjectFilePath':
          return MessageContentTextAnnotationsFilePathObjectFilePath.fromJson(value);
        case 'MessageContentTextObject':
          return MessageContentTextObject.fromJson(value);
        case 'MessageContentTextObjectText':
          return MessageContentTextObjectText.fromJson(value);
        case 'MessageContentTextObjectTextAnnotationsInner':
          return MessageContentTextObjectTextAnnotationsInner.fromJson(value);
        case 'MessageFileObject':
          return MessageFileObject.fromJson(value);
        case 'MessageObject':
          return MessageObject.fromJson(value);
        case 'MessageObjectContentInner':
          return MessageObjectContentInner.fromJson(value);
        case 'Model':
          return Model.fromJson(value);
        case 'ModifyAssistantRequest':
          return ModifyAssistantRequest.fromJson(value);
        case 'ModifyMessageRequest':
          return ModifyMessageRequest.fromJson(value);
        case 'ModifyRunRequest':
          return ModifyRunRequest.fromJson(value);
        case 'ModifyThreadRequest':
          return ModifyThreadRequest.fromJson(value);
        case 'OpenAIFile':
          return OpenAIFile.fromJson(value);
        case 'RunCompletionUsage':
          return RunCompletionUsage.fromJson(value);
        case 'RunObject':
          return RunObject.fromJson(value);
        case 'RunObjectLastError':
          return RunObjectLastError.fromJson(value);
        case 'RunObjectRequiredAction':
          return RunObjectRequiredAction.fromJson(value);
        case 'RunObjectRequiredActionSubmitToolOutputs':
          return RunObjectRequiredActionSubmitToolOutputs.fromJson(value);
        case 'RunStepCompletionUsage':
          return RunStepCompletionUsage.fromJson(value);
        case 'RunStepDetailsMessageCreationObject':
          return RunStepDetailsMessageCreationObject.fromJson(value);
        case 'RunStepDetailsMessageCreationObjectMessageCreation':
          return RunStepDetailsMessageCreationObjectMessageCreation.fromJson(value);
        case 'RunStepDetailsToolCallsCodeObject':
          return RunStepDetailsToolCallsCodeObject.fromJson(value);
        case 'RunStepDetailsToolCallsCodeObjectCodeInterpreter':
          return RunStepDetailsToolCallsCodeObjectCodeInterpreter.fromJson(value);
        case 'RunStepDetailsToolCallsCodeObjectCodeInterpreterOutputsInner':
          return RunStepDetailsToolCallsCodeObjectCodeInterpreterOutputsInner.fromJson(value);
        case 'RunStepDetailsToolCallsCodeOutputImageObject':
          return RunStepDetailsToolCallsCodeOutputImageObject.fromJson(value);
        case 'RunStepDetailsToolCallsCodeOutputImageObjectImage':
          return RunStepDetailsToolCallsCodeOutputImageObjectImage.fromJson(value);
        case 'RunStepDetailsToolCallsCodeOutputLogsObject':
          return RunStepDetailsToolCallsCodeOutputLogsObject.fromJson(value);
        case 'RunStepDetailsToolCallsFunctionObject':
          return RunStepDetailsToolCallsFunctionObject.fromJson(value);
        case 'RunStepDetailsToolCallsFunctionObjectFunction':
          return RunStepDetailsToolCallsFunctionObjectFunction.fromJson(value);
        case 'RunStepDetailsToolCallsObject':
          return RunStepDetailsToolCallsObject.fromJson(value);
        case 'RunStepDetailsToolCallsObjectToolCallsInner':
          return RunStepDetailsToolCallsObjectToolCallsInner.fromJson(value);
        case 'RunStepDetailsToolCallsRetrievalObject':
          return RunStepDetailsToolCallsRetrievalObject.fromJson(value);
        case 'RunStepObject':
          return RunStepObject.fromJson(value);
        case 'RunStepObjectLastError':
          return RunStepObjectLastError.fromJson(value);
        case 'RunStepObjectStepDetails':
          return RunStepObjectStepDetails.fromJson(value);
        case 'RunToolCallObject':
          return RunToolCallObject.fromJson(value);
        case 'RunToolCallObjectFunction':
          return RunToolCallObjectFunction.fromJson(value);
        case 'SubmitToolOutputsRunRequest':
          return SubmitToolOutputsRunRequest.fromJson(value);
        case 'SubmitToolOutputsRunRequestToolOutputsInner':
          return SubmitToolOutputsRunRequestToolOutputsInner.fromJson(value);
        case 'ThreadObject':
          return ThreadObject.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
