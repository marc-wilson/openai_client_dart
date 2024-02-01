//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RunStepDetailsToolCallsRetrievalObject {
  /// Returns a new [RunStepDetailsToolCallsRetrievalObject] instance.
  RunStepDetailsToolCallsRetrievalObject({
    required this.id,
    required this.type,
    required this.retrieval,
  });

  /// The ID of the tool call object.
  String id;

  /// The type of tool call. This is always going to be `retrieval` for this type of tool call.
  RunStepDetailsToolCallsRetrievalObjectTypeEnum type;

  /// For now, this is always going to be an empty object.
  Object retrieval;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RunStepDetailsToolCallsRetrievalObject &&
    other.id == id &&
    other.type == type &&
    other.retrieval == retrieval;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (retrieval.hashCode);

  @override
  String toString() => 'RunStepDetailsToolCallsRetrievalObject[id=$id, type=$type, retrieval=$retrieval]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'type'] = this.type;
      json[r'retrieval'] = this.retrieval;
    return json;
  }

  /// Returns a new [RunStepDetailsToolCallsRetrievalObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RunStepDetailsToolCallsRetrievalObject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RunStepDetailsToolCallsRetrievalObject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RunStepDetailsToolCallsRetrievalObject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RunStepDetailsToolCallsRetrievalObject(
        id: mapValueOfType<String>(json, r'id')!,
        type: RunStepDetailsToolCallsRetrievalObjectTypeEnum.fromJson(json[r'type'])!,
        retrieval: mapValueOfType<Object>(json, r'retrieval')!,
      );
    }
    return null;
  }

  static List<RunStepDetailsToolCallsRetrievalObject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RunStepDetailsToolCallsRetrievalObject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunStepDetailsToolCallsRetrievalObject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RunStepDetailsToolCallsRetrievalObject> mapFromJson(dynamic json) {
    final map = <String, RunStepDetailsToolCallsRetrievalObject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RunStepDetailsToolCallsRetrievalObject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RunStepDetailsToolCallsRetrievalObject-objects as value to a dart map
  static Map<String, List<RunStepDetailsToolCallsRetrievalObject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RunStepDetailsToolCallsRetrievalObject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RunStepDetailsToolCallsRetrievalObject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'retrieval',
  };
}

/// The type of tool call. This is always going to be `retrieval` for this type of tool call.
class RunStepDetailsToolCallsRetrievalObjectTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const RunStepDetailsToolCallsRetrievalObjectTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const retrieval = RunStepDetailsToolCallsRetrievalObjectTypeEnum._(r'retrieval');

  /// List of all possible values in this [enum][RunStepDetailsToolCallsRetrievalObjectTypeEnum].
  static const values = <RunStepDetailsToolCallsRetrievalObjectTypeEnum>[
    retrieval,
  ];

  static RunStepDetailsToolCallsRetrievalObjectTypeEnum? fromJson(dynamic value) => RunStepDetailsToolCallsRetrievalObjectTypeEnumTypeTransformer().decode(value);

  static List<RunStepDetailsToolCallsRetrievalObjectTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RunStepDetailsToolCallsRetrievalObjectTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunStepDetailsToolCallsRetrievalObjectTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RunStepDetailsToolCallsRetrievalObjectTypeEnum] to String,
/// and [decode] dynamic data back to [RunStepDetailsToolCallsRetrievalObjectTypeEnum].
class RunStepDetailsToolCallsRetrievalObjectTypeEnumTypeTransformer {
  factory RunStepDetailsToolCallsRetrievalObjectTypeEnumTypeTransformer() => _instance ??= const RunStepDetailsToolCallsRetrievalObjectTypeEnumTypeTransformer._();

  const RunStepDetailsToolCallsRetrievalObjectTypeEnumTypeTransformer._();

  String encode(RunStepDetailsToolCallsRetrievalObjectTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RunStepDetailsToolCallsRetrievalObjectTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RunStepDetailsToolCallsRetrievalObjectTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'retrieval': return RunStepDetailsToolCallsRetrievalObjectTypeEnum.retrieval;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RunStepDetailsToolCallsRetrievalObjectTypeEnumTypeTransformer] instance.
  static RunStepDetailsToolCallsRetrievalObjectTypeEnumTypeTransformer? _instance;
}


