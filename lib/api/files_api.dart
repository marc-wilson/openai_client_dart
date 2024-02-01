//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FilesApi {
  FilesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Upload a file that can be used across various endpoints. The size of all the files uploaded by one organization can be up to 100 GB.  The size of individual files can be a maximum of 512 MB or 2 million tokens for Assistants. See the [Assistants Tools guide](/docs/assistants/tools) to learn more about the types of files supported. The Fine-tuning API only supports `.jsonl` files.  Please [contact us](https://help.openai.com/) if you need to increase these storage limits. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] file (required):
  ///   The File object (not file name) to be uploaded. 
  ///
  /// * [String] purpose (required):
  ///   The intended purpose of the uploaded file.  Use \\\"fine-tune\\\" for [Fine-tuning](/docs/api-reference/fine-tuning) and \\\"assistants\\\" for [Assistants](/docs/api-reference/assistants) and [Messages](/docs/api-reference/messages). This allows us to validate the format of the uploaded file is correct for fine-tuning. 
  Future<Response> createFileWithHttpInfo(MultipartFile file, String purpose,) async {
    // ignore: prefer_const_declarations
    final path = r'/files';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (file != null) {
      hasFields = true;
      mp.fields[r'file'] = file.field;
      mp.files.add(file);
    }
    if (purpose != null) {
      hasFields = true;
      mp.fields[r'purpose'] = parameterToString(purpose);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Upload a file that can be used across various endpoints. The size of all the files uploaded by one organization can be up to 100 GB.  The size of individual files can be a maximum of 512 MB or 2 million tokens for Assistants. See the [Assistants Tools guide](/docs/assistants/tools) to learn more about the types of files supported. The Fine-tuning API only supports `.jsonl` files.  Please [contact us](https://help.openai.com/) if you need to increase these storage limits. 
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] file (required):
  ///   The File object (not file name) to be uploaded. 
  ///
  /// * [String] purpose (required):
  ///   The intended purpose of the uploaded file.  Use \\\"fine-tune\\\" for [Fine-tuning](/docs/api-reference/fine-tuning) and \\\"assistants\\\" for [Assistants](/docs/api-reference/assistants) and [Messages](/docs/api-reference/messages). This allows us to validate the format of the uploaded file is correct for fine-tuning. 
  Future<OpenAIFile?> createFile(MultipartFile file, String purpose,) async {
    final response = await createFileWithHttpInfo(file, purpose,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OpenAIFile',) as OpenAIFile;
    
    }
    return null;
  }

  /// Delete a file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to use for this request.
  Future<Response> deleteFileWithHttpInfo(String fileId,) async {
    // ignore: prefer_const_declarations
    final path = r'/files/{file_id}'
      .replaceAll('{file_id}', fileId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a file.
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to use for this request.
  Future<DeleteFileResponse?> deleteFile(String fileId,) async {
    final response = await deleteFileWithHttpInfo(fileId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteFileResponse',) as DeleteFileResponse;
    
    }
    return null;
  }

  /// Returns the contents of the specified file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to use for this request.
  Future<Response> downloadFileWithHttpInfo(String fileId,) async {
    // ignore: prefer_const_declarations
    final path = r'/files/{file_id}/content'
      .replaceAll('{file_id}', fileId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Returns the contents of the specified file.
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to use for this request.
  Future<String?> downloadFile(String fileId,) async {
    final response = await downloadFileWithHttpInfo(fileId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Returns a list of files that belong to the user's organization.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] purpose:
  ///   Only return files with the given purpose.
  Future<Response> listFilesWithHttpInfo({ String? purpose, }) async {
    // ignore: prefer_const_declarations
    final path = r'/files';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (purpose != null) {
      queryParams.addAll(_queryParams('', 'purpose', purpose));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Returns a list of files that belong to the user's organization.
  ///
  /// Parameters:
  ///
  /// * [String] purpose:
  ///   Only return files with the given purpose.
  Future<ListFilesResponse?> listFiles({ String? purpose, }) async {
    final response = await listFilesWithHttpInfo( purpose: purpose, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListFilesResponse',) as ListFilesResponse;
    
    }
    return null;
  }

  /// Returns information about a specific file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to use for this request.
  Future<Response> retrieveFileWithHttpInfo(String fileId,) async {
    // ignore: prefer_const_declarations
    final path = r'/files/{file_id}'
      .replaceAll('{file_id}', fileId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Returns information about a specific file.
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to use for this request.
  Future<OpenAIFile?> retrieveFile(String fileId,) async {
    final response = await retrieveFileWithHttpInfo(fileId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OpenAIFile',) as OpenAIFile;
    
    }
    return null;
  }
}
