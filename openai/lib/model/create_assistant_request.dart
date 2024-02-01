//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateAssistantRequest {
  /// Returns a new [CreateAssistantRequest] instance.
  CreateAssistantRequest({
    required this.model,
    this.name,
    this.description,
    this.instructions,
    this.tools = const [],
    this.fileIds = const [],
    this.metadata,
  });

  String model;

  /// The name of the assistant. The maximum length is 256 characters. 
  String? name;

  /// The description of the assistant. The maximum length is 512 characters. 
  String? description;

  /// The system instructions that the assistant uses. The maximum length is 32768 characters. 
  String? instructions;

  /// A list of tool enabled on the assistant. There can be a maximum of 128 tools per assistant. Tools can be of types `code_interpreter`, `retrieval`, or `function`. 
  List<AssistantObjectToolsInner> tools;

  /// A list of [file](/docs/api-reference/files) IDs attached to this assistant. There can be a maximum of 20 files attached to the assistant. Files are ordered by their creation date in ascending order. 
  List<String> fileIds;

  /// Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long. 
  Object? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAssistantRequest &&
    other.model == model &&
    other.name == name &&
    other.description == description &&
    other.instructions == instructions &&
    _deepEquality.equals(other.tools, tools) &&
    _deepEquality.equals(other.fileIds, fileIds) &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (model.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (instructions == null ? 0 : instructions!.hashCode) +
    (tools.hashCode) +
    (fileIds.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'CreateAssistantRequest[model=$model, name=$name, description=$description, instructions=$instructions, tools=$tools, fileIds=$fileIds, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'model'] = this.model;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.instructions != null) {
      json[r'instructions'] = this.instructions;
    } else {
      json[r'instructions'] = null;
    }
      json[r'tools'] = this.tools;
      json[r'file_ids'] = this.fileIds;
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    return json;
  }

  /// Returns a new [CreateAssistantRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAssistantRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateAssistantRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateAssistantRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateAssistantRequest(
        model: mapValueOfType<String>(json, r'model')!,
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        instructions: mapValueOfType<String>(json, r'instructions'),
        tools: AssistantObjectToolsInner.listFromJson(json[r'tools']),
        fileIds: json[r'file_ids'] is Iterable
            ? (json[r'file_ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<CreateAssistantRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAssistantRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAssistantRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAssistantRequest> mapFromJson(dynamic json) {
    final map = <String, CreateAssistantRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAssistantRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAssistantRequest-objects as value to a dart map
  static Map<String, List<CreateAssistantRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAssistantRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateAssistantRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'model',
  };
}

