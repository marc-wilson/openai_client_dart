//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssistantObject {
  /// Returns a new [AssistantObject] instance.
  AssistantObject({
    required this.id,
    required this.object,
    required this.createdAt,
    required this.name,
    required this.description,
    required this.model,
    required this.instructions,
    this.tools = const [],
    this.fileIds = const [],
    required this.metadata,
  });

  /// The identifier, which can be referenced in API endpoints.
  String id;

  /// The object type, which is always `assistant`.
  AssistantObjectObjectEnum object;

  /// The Unix timestamp (in seconds) for when the assistant was created.
  int createdAt;

  /// The name of the assistant. The maximum length is 256 characters. 
  String? name;

  /// The description of the assistant. The maximum length is 512 characters. 
  String? description;

  /// ID of the model to use. You can use the [List models](/docs/api-reference/models/list) API to see all of your available models, or see our [Model overview](/docs/models/overview) for descriptions of them. 
  String model;

  /// The system instructions that the assistant uses. The maximum length is 32768 characters. 
  String? instructions;

  /// A list of tool enabled on the assistant. There can be a maximum of 128 tools per assistant. Tools can be of types `code_interpreter`, `retrieval`, or `function`. 
  List<AssistantObjectToolsInner> tools;

  /// A list of [file](/docs/api-reference/files) IDs attached to this assistant. There can be a maximum of 20 files attached to the assistant. Files are ordered by their creation date in ascending order. 
  List<String> fileIds;

  /// Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long. 
  Object? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssistantObject &&
    other.id == id &&
    other.object == object &&
    other.createdAt == createdAt &&
    other.name == name &&
    other.description == description &&
    other.model == model &&
    other.instructions == instructions &&
    _deepEquality.equals(other.tools, tools) &&
    _deepEquality.equals(other.fileIds, fileIds) &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (object.hashCode) +
    (createdAt.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (model.hashCode) +
    (instructions == null ? 0 : instructions!.hashCode) +
    (tools.hashCode) +
    (fileIds.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'AssistantObject[id=$id, object=$object, createdAt=$createdAt, name=$name, description=$description, model=$model, instructions=$instructions, tools=$tools, fileIds=$fileIds, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'object'] = this.object;
      json[r'created_at'] = this.createdAt;
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
      json[r'model'] = this.model;
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

  /// Returns a new [AssistantObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssistantObject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AssistantObject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AssistantObject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AssistantObject(
        id: mapValueOfType<String>(json, r'id')!,
        object: AssistantObjectObjectEnum.fromJson(json[r'object'])!,
        createdAt: mapValueOfType<int>(json, r'created_at')!,
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        model: mapValueOfType<String>(json, r'model')!,
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

  static List<AssistantObject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssistantObject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssistantObject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssistantObject> mapFromJson(dynamic json) {
    final map = <String, AssistantObject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssistantObject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssistantObject-objects as value to a dart map
  static Map<String, List<AssistantObject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssistantObject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssistantObject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'object',
    'created_at',
    'name',
    'description',
    'model',
    'instructions',
    'tools',
    'file_ids',
    'metadata',
  };
}

/// The object type, which is always `assistant`.
class AssistantObjectObjectEnum {
  /// Instantiate a new enum with the provided [value].
  const AssistantObjectObjectEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const assistant = AssistantObjectObjectEnum._(r'assistant');

  /// List of all possible values in this [enum][AssistantObjectObjectEnum].
  static const values = <AssistantObjectObjectEnum>[
    assistant,
  ];

  static AssistantObjectObjectEnum? fromJson(dynamic value) => AssistantObjectObjectEnumTypeTransformer().decode(value);

  static List<AssistantObjectObjectEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssistantObjectObjectEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssistantObjectObjectEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssistantObjectObjectEnum] to String,
/// and [decode] dynamic data back to [AssistantObjectObjectEnum].
class AssistantObjectObjectEnumTypeTransformer {
  factory AssistantObjectObjectEnumTypeTransformer() => _instance ??= const AssistantObjectObjectEnumTypeTransformer._();

  const AssistantObjectObjectEnumTypeTransformer._();

  String encode(AssistantObjectObjectEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssistantObjectObjectEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssistantObjectObjectEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'assistant': return AssistantObjectObjectEnum.assistant;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssistantObjectObjectEnumTypeTransformer] instance.
  static AssistantObjectObjectEnumTypeTransformer? _instance;
}


