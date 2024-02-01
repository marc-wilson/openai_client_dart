//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateTranslationResponse {
  /// Returns a new [CreateTranslationResponse] instance.
  CreateTranslationResponse({
    required this.text,
  });

  String text;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateTranslationResponse &&
    other.text == text;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (text.hashCode);

  @override
  String toString() => 'CreateTranslationResponse[text=$text]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'text'] = this.text;
    return json;
  }

  /// Returns a new [CreateTranslationResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateTranslationResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateTranslationResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateTranslationResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateTranslationResponse(
        text: mapValueOfType<String>(json, r'text')!,
      );
    }
    return null;
  }

  static List<CreateTranslationResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateTranslationResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateTranslationResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateTranslationResponse> mapFromJson(dynamic json) {
    final map = <String, CreateTranslationResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateTranslationResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateTranslationResponse-objects as value to a dart map
  static Map<String, List<CreateTranslationResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateTranslationResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateTranslationResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'text',
  };
}

