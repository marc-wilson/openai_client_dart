//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateThreadAndRunRequestToolsInner {
  /// Returns a new [CreateThreadAndRunRequestToolsInner] instance.
  CreateThreadAndRunRequestToolsInner({
    required this.type,
    required this.function_,
  });

  /// The type of tool being defined: `code_interpreter`
  CreateThreadAndRunRequestToolsInnerTypeEnum type;

  FunctionObject function_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateThreadAndRunRequestToolsInner &&
    other.type == type &&
    other.function_ == function_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (function_.hashCode);

  @override
  String toString() => 'CreateThreadAndRunRequestToolsInner[type=$type, function_=$function_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'function'] = this.function_;
    return json;
  }

  /// Returns a new [CreateThreadAndRunRequestToolsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateThreadAndRunRequestToolsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateThreadAndRunRequestToolsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateThreadAndRunRequestToolsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateThreadAndRunRequestToolsInner(
        type: CreateThreadAndRunRequestToolsInnerTypeEnum.fromJson(json[r'type'])!,
        function_: FunctionObject.fromJson(json[r'function'])!,
      );
    }
    return null;
  }

  static List<CreateThreadAndRunRequestToolsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateThreadAndRunRequestToolsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateThreadAndRunRequestToolsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateThreadAndRunRequestToolsInner> mapFromJson(dynamic json) {
    final map = <String, CreateThreadAndRunRequestToolsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateThreadAndRunRequestToolsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateThreadAndRunRequestToolsInner-objects as value to a dart map
  static Map<String, List<CreateThreadAndRunRequestToolsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateThreadAndRunRequestToolsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateThreadAndRunRequestToolsInner.listFromJson(entry.value, growable: growable,);
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
class CreateThreadAndRunRequestToolsInnerTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateThreadAndRunRequestToolsInnerTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const codeInterpreter = CreateThreadAndRunRequestToolsInnerTypeEnum._(r'code_interpreter');
  static const retrieval = CreateThreadAndRunRequestToolsInnerTypeEnum._(r'retrieval');
  static const function_ = CreateThreadAndRunRequestToolsInnerTypeEnum._(r'function');

  /// List of all possible values in this [enum][CreateThreadAndRunRequestToolsInnerTypeEnum].
  static const values = <CreateThreadAndRunRequestToolsInnerTypeEnum>[
    codeInterpreter,
    retrieval,
    function_,
  ];

  static CreateThreadAndRunRequestToolsInnerTypeEnum? fromJson(dynamic value) => CreateThreadAndRunRequestToolsInnerTypeEnumTypeTransformer().decode(value);

  static List<CreateThreadAndRunRequestToolsInnerTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateThreadAndRunRequestToolsInnerTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateThreadAndRunRequestToolsInnerTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateThreadAndRunRequestToolsInnerTypeEnum] to String,
/// and [decode] dynamic data back to [CreateThreadAndRunRequestToolsInnerTypeEnum].
class CreateThreadAndRunRequestToolsInnerTypeEnumTypeTransformer {
  factory CreateThreadAndRunRequestToolsInnerTypeEnumTypeTransformer() => _instance ??= const CreateThreadAndRunRequestToolsInnerTypeEnumTypeTransformer._();

  const CreateThreadAndRunRequestToolsInnerTypeEnumTypeTransformer._();

  String encode(CreateThreadAndRunRequestToolsInnerTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateThreadAndRunRequestToolsInnerTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateThreadAndRunRequestToolsInnerTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'code_interpreter': return CreateThreadAndRunRequestToolsInnerTypeEnum.codeInterpreter;
        case r'retrieval': return CreateThreadAndRunRequestToolsInnerTypeEnum.retrieval;
        case r'function': return CreateThreadAndRunRequestToolsInnerTypeEnum.function_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateThreadAndRunRequestToolsInnerTypeEnumTypeTransformer] instance.
  static CreateThreadAndRunRequestToolsInnerTypeEnumTypeTransformer? _instance;
}


