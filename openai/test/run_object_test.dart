//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for RunObject
void main() {
  // final instance = RunObject();

  group('test RunObject', () {
    // The identifier, which can be referenced in API endpoints.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The object type, which is always `thread.run`.
    // String object
    test('to test the property `object`', () async {
      // TODO
    });

    // The Unix timestamp (in seconds) for when the run was created.
    // int createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // The ID of the [thread](/docs/api-reference/threads) that was executed on as a part of this run.
    // String threadId
    test('to test the property `threadId`', () async {
      // TODO
    });

    // The ID of the [assistant](/docs/api-reference/assistants) used for execution of this run.
    // String assistantId
    test('to test the property `assistantId`', () async {
      // TODO
    });

    // The status of the run, which can be either `queued`, `in_progress`, `requires_action`, `cancelling`, `cancelled`, `failed`, `completed`, or `expired`.
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // RunObjectRequiredAction requiredAction
    test('to test the property `requiredAction`', () async {
      // TODO
    });

    // RunObjectLastError lastError
    test('to test the property `lastError`', () async {
      // TODO
    });

    // The Unix timestamp (in seconds) for when the run will expire.
    // int expiresAt
    test('to test the property `expiresAt`', () async {
      // TODO
    });

    // The Unix timestamp (in seconds) for when the run was started.
    // int startedAt
    test('to test the property `startedAt`', () async {
      // TODO
    });

    // The Unix timestamp (in seconds) for when the run was cancelled.
    // int cancelledAt
    test('to test the property `cancelledAt`', () async {
      // TODO
    });

    // The Unix timestamp (in seconds) for when the run failed.
    // int failedAt
    test('to test the property `failedAt`', () async {
      // TODO
    });

    // The Unix timestamp (in seconds) for when the run was completed.
    // int completedAt
    test('to test the property `completedAt`', () async {
      // TODO
    });

    // The model that the [assistant](/docs/api-reference/assistants) used for this run.
    // String model
    test('to test the property `model`', () async {
      // TODO
    });

    // The instructions that the [assistant](/docs/api-reference/assistants) used for this run.
    // String instructions
    test('to test the property `instructions`', () async {
      // TODO
    });

    // The list of tools that the [assistant](/docs/api-reference/assistants) used for this run.
    // List<AssistantObjectToolsInner> tools (default value: const [])
    test('to test the property `tools`', () async {
      // TODO
    });

    // The list of [File](/docs/api-reference/files) IDs the [assistant](/docs/api-reference/assistants) used for this run.
    // List<String> fileIds (default value: const [])
    test('to test the property `fileIds`', () async {
      // TODO
    });

    // Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long. 
    // Object metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

    // RunCompletionUsage usage
    test('to test the property `usage`', () async {
      // TODO
    });


  });

}
