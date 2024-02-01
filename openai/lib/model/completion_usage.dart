//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CompletionUsage {
  /// Returns a new [CompletionUsage] instance.
  CompletionUsage({
    required this.completionTokens,
    required this.promptTokens,
    required this.totalTokens,
  });

  /// Number of tokens in the generated completion.
  int completionTokens;

  /// Number of tokens in the prompt.
  int promptTokens;

  /// Total number of tokens used in the request (prompt + completion).
  int totalTokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CompletionUsage &&
    other.completionTokens == completionTokens &&
    other.promptTokens == promptTokens &&
    other.totalTokens == totalTokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (completionTokens.hashCode) +
    (promptTokens.hashCode) +
    (totalTokens.hashCode);

  @override
  String toString() => 'CompletionUsage[completionTokens=$completionTokens, promptTokens=$promptTokens, totalTokens=$totalTokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'completion_tokens'] = this.completionTokens;
      json[r'prompt_tokens'] = this.promptTokens;
      json[r'total_tokens'] = this.totalTokens;
    return json;
  }

  /// Returns a new [CompletionUsage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CompletionUsage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CompletionUsage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CompletionUsage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CompletionUsage(
        completionTokens: mapValueOfType<int>(json, r'completion_tokens')!,
        promptTokens: mapValueOfType<int>(json, r'prompt_tokens')!,
        totalTokens: mapValueOfType<int>(json, r'total_tokens')!,
      );
    }
    return null;
  }

  static List<CompletionUsage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CompletionUsage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CompletionUsage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CompletionUsage> mapFromJson(dynamic json) {
    final map = <String, CompletionUsage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CompletionUsage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CompletionUsage-objects as value to a dart map
  static Map<String, List<CompletionUsage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CompletionUsage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CompletionUsage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'completion_tokens',
    'prompt_tokens',
    'total_tokens',
  };
}

