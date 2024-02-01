//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssistantFileObject {
  /// Returns a new [AssistantFileObject] instance.
  AssistantFileObject({
    required this.id,
    required this.object,
    required this.createdAt,
    required this.assistantId,
  });

  /// The identifier, which can be referenced in API endpoints.
  String id;

  /// The object type, which is always `assistant.file`.
  AssistantFileObjectObjectEnum object;

  /// The Unix timestamp (in seconds) for when the assistant file was created.
  int createdAt;

  /// The assistant ID that the file is attached to.
  String assistantId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssistantFileObject &&
    other.id == id &&
    other.object == object &&
    other.createdAt == createdAt &&
    other.assistantId == assistantId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (object.hashCode) +
    (createdAt.hashCode) +
    (assistantId.hashCode);

  @override
  String toString() => 'AssistantFileObject[id=$id, object=$object, createdAt=$createdAt, assistantId=$assistantId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'object'] = this.object;
      json[r'created_at'] = this.createdAt;
      json[r'assistant_id'] = this.assistantId;
    return json;
  }

  /// Returns a new [AssistantFileObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssistantFileObject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AssistantFileObject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AssistantFileObject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AssistantFileObject(
        id: mapValueOfType<String>(json, r'id')!,
        object: AssistantFileObjectObjectEnum.fromJson(json[r'object'])!,
        createdAt: mapValueOfType<int>(json, r'created_at')!,
        assistantId: mapValueOfType<String>(json, r'assistant_id')!,
      );
    }
    return null;
  }

  static List<AssistantFileObject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssistantFileObject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssistantFileObject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssistantFileObject> mapFromJson(dynamic json) {
    final map = <String, AssistantFileObject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssistantFileObject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssistantFileObject-objects as value to a dart map
  static Map<String, List<AssistantFileObject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssistantFileObject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssistantFileObject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'object',
    'created_at',
    'assistant_id',
  };
}

/// The object type, which is always `assistant.file`.
class AssistantFileObjectObjectEnum {
  /// Instantiate a new enum with the provided [value].
  const AssistantFileObjectObjectEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const assistantPeriodFile = AssistantFileObjectObjectEnum._(r'assistant.file');

  /// List of all possible values in this [enum][AssistantFileObjectObjectEnum].
  static const values = <AssistantFileObjectObjectEnum>[
    assistantPeriodFile,
  ];

  static AssistantFileObjectObjectEnum? fromJson(dynamic value) => AssistantFileObjectObjectEnumTypeTransformer().decode(value);

  static List<AssistantFileObjectObjectEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssistantFileObjectObjectEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssistantFileObjectObjectEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssistantFileObjectObjectEnum] to String,
/// and [decode] dynamic data back to [AssistantFileObjectObjectEnum].
class AssistantFileObjectObjectEnumTypeTransformer {
  factory AssistantFileObjectObjectEnumTypeTransformer() => _instance ??= const AssistantFileObjectObjectEnumTypeTransformer._();

  const AssistantFileObjectObjectEnumTypeTransformer._();

  String encode(AssistantFileObjectObjectEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssistantFileObjectObjectEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssistantFileObjectObjectEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'assistant.file': return AssistantFileObjectObjectEnum.assistantPeriodFile;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssistantFileObjectObjectEnumTypeTransformer] instance.
  static AssistantFileObjectObjectEnumTypeTransformer? _instance;
}


