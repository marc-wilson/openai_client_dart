//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/assistants_api.dart';
part 'api/audio_api.dart';
part 'api/chat_api.dart';
part 'api/completions_api.dart';
part 'api/embeddings_api.dart';
part 'api/files_api.dart';
part 'api/fine_tuning_api.dart';
part 'api/images_api.dart';
part 'api/models_api.dart';
part 'api/moderations_api.dart';

part 'model/assistant_file_object.dart';
part 'model/assistant_object.dart';
part 'model/assistant_object_tools_inner.dart';
part 'model/assistant_tools_code.dart';
part 'model/assistant_tools_function.dart';
part 'model/assistant_tools_retrieval.dart';
part 'model/chat_completion_function_call_option.dart';
part 'model/chat_completion_functions.dart';
part 'model/chat_completion_message_tool_call.dart';
part 'model/chat_completion_message_tool_call_chunk.dart';
part 'model/chat_completion_message_tool_call_chunk_function.dart';
part 'model/chat_completion_message_tool_call_function.dart';
part 'model/chat_completion_named_tool_choice.dart';
part 'model/chat_completion_named_tool_choice_function.dart';
part 'model/chat_completion_request_assistant_message.dart';
part 'model/chat_completion_request_assistant_message_function_call.dart';
part 'model/chat_completion_request_function_message.dart';
part 'model/chat_completion_request_message.dart';
part 'model/chat_completion_request_message_content_part.dart';
part 'model/chat_completion_request_message_content_part_image.dart';
part 'model/chat_completion_request_message_content_part_image_image_url.dart';
part 'model/chat_completion_request_message_content_part_text.dart';
part 'model/chat_completion_request_system_message.dart';
part 'model/chat_completion_request_tool_message.dart';
part 'model/chat_completion_request_user_message.dart';
part 'model/chat_completion_request_user_message_content.dart';
part 'model/chat_completion_response_message.dart';
part 'model/chat_completion_role.dart';
part 'model/chat_completion_stream_response_delta.dart';
part 'model/chat_completion_stream_response_delta_function_call.dart';
part 'model/chat_completion_token_logprob.dart';
part 'model/chat_completion_token_logprob_top_logprobs_inner.dart';
part 'model/chat_completion_tool.dart';
part 'model/chat_completion_tool_choice_option.dart';
part 'model/completion_usage.dart';
part 'model/create_assistant_file_request.dart';
part 'model/create_assistant_request.dart';
part 'model/create_chat_completion_function_response.dart';
part 'model/create_chat_completion_function_response_choices_inner.dart';
part 'model/create_chat_completion_request.dart';
part 'model/create_chat_completion_request_function_call.dart';
part 'model/create_chat_completion_request_model.dart';
part 'model/create_chat_completion_request_response_format.dart';
part 'model/create_chat_completion_request_stop.dart';
part 'model/create_chat_completion_response.dart';
part 'model/create_chat_completion_response_choices_inner.dart';
part 'model/create_chat_completion_response_choices_inner_logprobs.dart';
part 'model/create_chat_completion_stream_response.dart';
part 'model/create_chat_completion_stream_response_choices_inner.dart';
part 'model/create_completion_request.dart';
part 'model/create_completion_request_model.dart';
part 'model/create_completion_request_prompt.dart';
part 'model/create_completion_request_stop.dart';
part 'model/create_completion_response.dart';
part 'model/create_completion_response_choices_inner.dart';
part 'model/create_completion_response_choices_inner_logprobs.dart';
part 'model/create_embedding_request.dart';
part 'model/create_embedding_request_input.dart';
part 'model/create_embedding_request_model.dart';
part 'model/create_embedding_response.dart';
part 'model/create_embedding_response_usage.dart';
part 'model/create_fine_tuning_job_request.dart';
part 'model/create_fine_tuning_job_request_hyperparameters.dart';
part 'model/create_fine_tuning_job_request_hyperparameters_batch_size.dart';
part 'model/create_fine_tuning_job_request_hyperparameters_learning_rate_multiplier.dart';
part 'model/create_fine_tuning_job_request_hyperparameters_n_epochs.dart';
part 'model/create_fine_tuning_job_request_model.dart';
part 'model/create_image_edit_request_model.dart';
part 'model/create_image_request.dart';
part 'model/create_image_request_model.dart';
part 'model/create_message_request.dart';
part 'model/create_moderation_request.dart';
part 'model/create_moderation_request_input.dart';
part 'model/create_moderation_request_model.dart';
part 'model/create_moderation_response.dart';
part 'model/create_moderation_response_results_inner.dart';
part 'model/create_moderation_response_results_inner_categories.dart';
part 'model/create_moderation_response_results_inner_category_scores.dart';
part 'model/create_run_request.dart';
part 'model/create_speech_request.dart';
part 'model/create_speech_request_model.dart';
part 'model/create_thread_and_run_request.dart';
part 'model/create_thread_and_run_request_tools_inner.dart';
part 'model/create_thread_request.dart';
part 'model/create_transcription_request_model.dart';
part 'model/create_transcription_response.dart';
part 'model/create_translation_response.dart';
part 'model/delete_assistant_file_response.dart';
part 'model/delete_assistant_response.dart';
part 'model/delete_file_response.dart';
part 'model/delete_message_response.dart';
part 'model/delete_model_response.dart';
part 'model/delete_thread_response.dart';
part 'model/embedding.dart';
part 'model/error.dart';
part 'model/error_response.dart';
part 'model/fine_tuning_job.dart';
part 'model/fine_tuning_job_error.dart';
part 'model/fine_tuning_job_event.dart';
part 'model/fine_tuning_job_hyperparameters.dart';
part 'model/fine_tuning_job_hyperparameters_n_epochs.dart';
part 'model/function_object.dart';
part 'model/image.dart';
part 'model/images_response.dart';
part 'model/list_assistant_files_response.dart';
part 'model/list_assistants_response.dart';
part 'model/list_files_response.dart';
part 'model/list_fine_tuning_job_events_response.dart';
part 'model/list_message_files_response.dart';
part 'model/list_messages_response.dart';
part 'model/list_models_response.dart';
part 'model/list_paginated_fine_tuning_jobs_response.dart';
part 'model/list_run_steps_response.dart';
part 'model/list_runs_response.dart';
part 'model/list_threads_response.dart';
part 'model/message_content_image_file_object.dart';
part 'model/message_content_image_file_object_image_file.dart';
part 'model/message_content_text_annotations_file_citation_object.dart';
part 'model/message_content_text_annotations_file_citation_object_file_citation.dart';
part 'model/message_content_text_annotations_file_path_object.dart';
part 'model/message_content_text_annotations_file_path_object_file_path.dart';
part 'model/message_content_text_object.dart';
part 'model/message_content_text_object_text.dart';
part 'model/message_content_text_object_text_annotations_inner.dart';
part 'model/message_file_object.dart';
part 'model/message_object.dart';
part 'model/message_object_content_inner.dart';
part 'model/model.dart';
part 'model/modify_assistant_request.dart';
part 'model/modify_message_request.dart';
part 'model/modify_run_request.dart';
part 'model/modify_thread_request.dart';
part 'model/open_ai_file.dart';
part 'model/run_completion_usage.dart';
part 'model/run_object.dart';
part 'model/run_object_last_error.dart';
part 'model/run_object_required_action.dart';
part 'model/run_object_required_action_submit_tool_outputs.dart';
part 'model/run_step_completion_usage.dart';
part 'model/run_step_details_message_creation_object.dart';
part 'model/run_step_details_message_creation_object_message_creation.dart';
part 'model/run_step_details_tool_calls_code_object.dart';
part 'model/run_step_details_tool_calls_code_object_code_interpreter.dart';
part 'model/run_step_details_tool_calls_code_object_code_interpreter_outputs_inner.dart';
part 'model/run_step_details_tool_calls_code_output_image_object.dart';
part 'model/run_step_details_tool_calls_code_output_image_object_image.dart';
part 'model/run_step_details_tool_calls_code_output_logs_object.dart';
part 'model/run_step_details_tool_calls_function_object.dart';
part 'model/run_step_details_tool_calls_function_object_function.dart';
part 'model/run_step_details_tool_calls_object.dart';
part 'model/run_step_details_tool_calls_object_tool_calls_inner.dart';
part 'model/run_step_details_tool_calls_retrieval_object.dart';
part 'model/run_step_object.dart';
part 'model/run_step_object_last_error.dart';
part 'model/run_step_object_step_details.dart';
part 'model/run_tool_call_object.dart';
part 'model/run_tool_call_object_function.dart';
part 'model/submit_tool_outputs_run_request.dart';
part 'model/submit_tool_outputs_run_request_tool_outputs_inner.dart';
part 'model/thread_object.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
