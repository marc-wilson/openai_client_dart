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

// tests for CreateRunRequest
void main() {
  // final instance = CreateRunRequest();

  group('test CreateRunRequest', () {
    // The ID of the [assistant](/docs/api-reference/assistants) to use to execute this run.
    // String assistantId
    test('to test the property `assistantId`', () async {
      // TODO
    });

    // The ID of the [Model](/docs/api-reference/models) to be used to execute this run. If a value is provided here, it will override the model associated with the assistant. If not, the model associated with the assistant will be used.
    // String model
    test('to test the property `model`', () async {
      // TODO
    });

    // Overrides the [instructions](/docs/api-reference/assistants/createAssistant) of the assistant. This is useful for modifying the behavior on a per-run basis.
    // String instructions
    test('to test the property `instructions`', () async {
      // TODO
    });

    // Appends additional instructions at the end of the instructions for the run. This is useful for modifying the behavior on a per-run basis without overriding other instructions.
    // String additionalInstructions
    test('to test the property `additionalInstructions`', () async {
      // TODO
    });

    // Override the tools the assistant can use for this run. This is useful for modifying the behavior on a per-run basis.
    // List<AssistantObjectToolsInner> tools (default value: const [])
    test('to test the property `tools`', () async {
      // TODO
    });

    // Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long. 
    // Object metadata
    test('to test the property `metadata`', () async {
      // TODO
    });


  });

}
