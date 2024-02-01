//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssistantObjectToolsInner {
  /// Returns a new [AssistantObjectToolsInner] instance.
  AssistantObjectToolsInner({
    required this.type,
    required this.function_,
  });

  /// The type of tool being defined: `code_interpreter`
  AssistantObjectToolsInnerTypeEnum type;

  FunctionObject function_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssistantObjectToolsInner &&
    other.type == type &&
    other.function_ == function_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (function_.hashCode);

  @override
  String toString() => 'AssistantObjectToolsInner[type=$type, function_=$function_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'function'] = this.function_;
    return json;
  }

  /// Returns a new [AssistantObjectToolsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssistantObjectToolsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AssistantObjectToolsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AssistantObjectToolsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AssistantObjectToolsInner(
        type: AssistantObjectToolsInnerTypeEnum.fromJson(json[r'type'])!,
        function_: FunctionObject.fromJson(json[r'function'])!,
      );
    }
    return null;
  }

  static List<AssistantObjectToolsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssistantObjectToolsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssistantObjectToolsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssistantObjectToolsInner> mapFromJson(dynamic json) {
    final map = <String, AssistantObjectToolsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssistantObjectToolsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssistantObjectToolsInner-objects as value to a dart map
  static Map<String, List<AssistantObjectToolsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssistantObjectToolsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssistantObjectToolsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'function',
  };
}

/// The type of tool being defined: `code_interpreter`
class AssistantObjectToolsInnerTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AssistantObjectToolsInnerTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const codeInterpreter = AssistantObjectToolsInnerTypeEnum._(r'code_interpreter');
  static const retrieval = AssistantObjectToolsInnerTypeEnum._(r'retrieval');
  static const function_ = AssistantObjectToolsInnerTypeEnum._(r'function');

  /// List of all possible values in this [enum][AssistantObjectToolsInnerTypeEnum].
  static const values = <AssistantObjectToolsInnerTypeEnum>[
    codeInterpreter,
    retrieval,
    function_,
  ];

  static AssistantObjectToolsInnerTypeEnum? fromJson(dynamic value) => AssistantObjectToolsInnerTypeEnumTypeTransformer().decode(value);

  static List<AssistantObjectToolsInnerTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssistantObjectToolsInnerTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssistantObjectToolsInnerTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssistantObjectToolsInnerTypeEnum] to String,
/// and [decode] dynamic data back to [AssistantObjectToolsInnerTypeEnum].
class AssistantObjectToolsInnerTypeEnumTypeTransformer {
  factory AssistantObjectToolsInnerTypeEnumTypeTransformer() => _instance ??= const AssistantObjectToolsInnerTypeEnumTypeTransformer._();

  const AssistantObjectToolsInnerTypeEnumTypeTransformer._();

  String encode(AssistantObjectToolsInnerTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssistantObjectToolsInnerTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssistantObjectToolsInnerTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'code_interpreter': return AssistantObjectToolsInnerTypeEnum.codeInterpreter;
        case r'retrieval': return AssistantObjectToolsInnerTypeEnum.retrieval;
        case r'function': return AssistantObjectToolsInnerTypeEnum.function_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssistantObjectToolsInnerTypeEnumTypeTransformer] instance.
  static AssistantObjectToolsInnerTypeEnumTypeTransformer? _instance;
}


