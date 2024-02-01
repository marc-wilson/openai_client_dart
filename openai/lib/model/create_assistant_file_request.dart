//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateAssistantFileRequest {
  /// Returns a new [CreateAssistantFileRequest] instance.
  CreateAssistantFileRequest({
    required this.fileId,
  });

  /// A [File](/docs/api-reference/files) ID (with `purpose=\"assistants\"`) that the assistant should use. Useful for tools like `retrieval` and `code_interpreter` that can access files.
  String fileId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAssistantFileRequest &&
    other.fileId == fileId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fileId.hashCode);

  @override
  String toString() => 'CreateAssistantFileRequest[fileId=$fileId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'file_id'] = this.fileId;
    return json;
  }

  /// Returns a new [CreateAssistantFileRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAssistantFileRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateAssistantFileRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateAssistantFileRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateAssistantFileRequest(
        fileId: mapValueOfType<String>(json, r'file_id')!,
      );
    }
    return null;
  }

  static List<CreateAssistantFileRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAssistantFileRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAssistantFileRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAssistantFileRequest> mapFromJson(dynamic json) {
    final map = <String, CreateAssistantFileRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAssistantFileRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAssistantFileRequest-objects as value to a dart map
  static Map<String, List<CreateAssistantFileRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAssistantFileRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateAssistantFileRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'file_id',
  };
}

