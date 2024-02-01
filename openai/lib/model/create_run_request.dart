//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateRunRequest {
  /// Returns a new [CreateRunRequest] instance.
  CreateRunRequest({
    required this.assistantId,
    this.model,
    this.instructions,
    this.additionalInstructions,
    this.tools = const [],
    this.metadata,
  });

  /// The ID of the [assistant](/docs/api-reference/assistants) to use to execute this run.
  String assistantId;

  /// The ID of the [Model](/docs/api-reference/models) to be used to execute this run. If a value is provided here, it will override the model associated with the assistant. If not, the model associated with the assistant will be used.
  String? model;

  /// Overrides the [instructions](/docs/api-reference/assistants/createAssistant) of the assistant. This is useful for modifying the behavior on a per-run basis.
  String? instructions;

  /// Appends additional instructions at the end of the instructions for the run. This is useful for modifying the behavior on a per-run basis without overriding other instructions.
  String? additionalInstructions;

  /// Override the tools the assistant can use for this run. This is useful for modifying the behavior on a per-run basis.
  List<AssistantObjectToolsInner>? tools;

  /// Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long. 
  Object? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateRunRequest &&
    other.assistantId == assistantId &&
    other.model == model &&
    other.instructions == instructions &&
    other.additionalInstructions == additionalInstructions &&
    _deepEquality.equals(other.tools, tools) &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assistantId.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (instructions == null ? 0 : instructions!.hashCode) +
    (additionalInstructions == null ? 0 : additionalInstructions!.hashCode) +
    (tools == null ? 0 : tools!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'CreateRunRequest[assistantId=$assistantId, model=$model, instructions=$instructions, additionalInstructions=$additionalInstructions, tools=$tools, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'assistant_id'] = this.assistantId;
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.instructions != null) {
      json[r'instructions'] = this.instructions;
    } else {
      json[r'instructions'] = null;
    }
    if (this.additionalInstructions != null) {
      json[r'additional_instructions'] = this.additionalInstructions;
    } else {
      json[r'additional_instructions'] = null;
    }
    if (this.tools != null) {
      json[r'tools'] = this.tools;
    } else {
      json[r'tools'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    return json;
  }

  /// Returns a new [CreateRunRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateRunRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateRunRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateRunRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateRunRequest(
        assistantId: mapValueOfType<String>(json, r'assistant_id')!,
        model: mapValueOfType<String>(json, r'model'),
        instructions: mapValueOfType<String>(json, r'instructions'),
        additionalInstructions: mapValueOfType<String>(json, r'additional_instructions'),
        tools: AssistantObjectToolsInner.listFromJson(json[r'tools']),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<CreateRunRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateRunRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateRunRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateRunRequest> mapFromJson(dynamic json) {
    final map = <String, CreateRunRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateRunRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateRunRequest-objects as value to a dart map
  static Map<String, List<CreateRunRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateRunRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateRunRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'assistant_id',
  };
}

