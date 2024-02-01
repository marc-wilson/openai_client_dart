//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateThreadAndRunRequest {
  /// Returns a new [CreateThreadAndRunRequest] instance.
  CreateThreadAndRunRequest({
    required this.assistantId,
    this.thread,
    this.model,
    this.instructions,
    this.tools = const [],
    this.metadata,
  });

  /// The ID of the [assistant](/docs/api-reference/assistants) to use to execute this run.
  String assistantId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CreateThreadRequest? thread;

  /// The ID of the [Model](/docs/api-reference/models) to be used to execute this run. If a value is provided here, it will override the model associated with the assistant. If not, the model associated with the assistant will be used.
  String? model;

  /// Override the default system message of the assistant. This is useful for modifying the behavior on a per-run basis.
  String? instructions;

  /// Override the tools the assistant can use for this run. This is useful for modifying the behavior on a per-run basis.
  List<CreateThreadAndRunRequestToolsInner>? tools;

  /// Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long. 
  Object? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateThreadAndRunRequest &&
    other.assistantId == assistantId &&
    other.thread == thread &&
    other.model == model &&
    other.instructions == instructions &&
    _deepEquality.equals(other.tools, tools) &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assistantId.hashCode) +
    (thread == null ? 0 : thread!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (instructions == null ? 0 : instructions!.hashCode) +
    (tools == null ? 0 : tools!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'CreateThreadAndRunRequest[assistantId=$assistantId, thread=$thread, model=$model, instructions=$instructions, tools=$tools, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'assistant_id'] = this.assistantId;
    if (this.thread != null) {
      json[r'thread'] = this.thread;
    } else {
      json[r'thread'] = null;
    }
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

  /// Returns a new [CreateThreadAndRunRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateThreadAndRunRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateThreadAndRunRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateThreadAndRunRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateThreadAndRunRequest(
        assistantId: mapValueOfType<String>(json, r'assistant_id')!,
        thread: CreateThreadRequest.fromJson(json[r'thread']),
        model: mapValueOfType<String>(json, r'model'),
        instructions: mapValueOfType<String>(json, r'instructions'),
        tools: CreateThreadAndRunRequestToolsInner.listFromJson(json[r'tools']),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<CreateThreadAndRunRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateThreadAndRunRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateThreadAndRunRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateThreadAndRunRequest> mapFromJson(dynamic json) {
    final map = <String, CreateThreadAndRunRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateThreadAndRunRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateThreadAndRunRequest-objects as value to a dart map
  static Map<String, List<CreateThreadAndRunRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateThreadAndRunRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateThreadAndRunRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'assistant_id',
  };
}

