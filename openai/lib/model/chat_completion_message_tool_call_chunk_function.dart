//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ChatCompletionMessageToolCallChunkFunction {
  /// Returns a new [ChatCompletionMessageToolCallChunkFunction] instance.
  ChatCompletionMessageToolCallChunkFunction({
    this.name,
    this.arguments,
  });

  /// The name of the function to call.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The arguments to call the function with, as generated by the model in JSON format. Note that the model does not always generate valid JSON, and may hallucinate parameters not defined by your function schema. Validate the arguments in your code before calling your function.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? arguments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChatCompletionMessageToolCallChunkFunction &&
    other.name == name &&
    other.arguments == arguments;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (arguments == null ? 0 : arguments!.hashCode);

  @override
  String toString() => 'ChatCompletionMessageToolCallChunkFunction[name=$name, arguments=$arguments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.arguments != null) {
      json[r'arguments'] = this.arguments;
    } else {
      json[r'arguments'] = null;
    }
    return json;
  }

  /// Returns a new [ChatCompletionMessageToolCallChunkFunction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChatCompletionMessageToolCallChunkFunction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChatCompletionMessageToolCallChunkFunction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChatCompletionMessageToolCallChunkFunction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChatCompletionMessageToolCallChunkFunction(
        name: mapValueOfType<String>(json, r'name'),
        arguments: mapValueOfType<String>(json, r'arguments'),
      );
    }
    return null;
  }

  static List<ChatCompletionMessageToolCallChunkFunction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChatCompletionMessageToolCallChunkFunction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChatCompletionMessageToolCallChunkFunction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChatCompletionMessageToolCallChunkFunction> mapFromJson(dynamic json) {
    final map = <String, ChatCompletionMessageToolCallChunkFunction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChatCompletionMessageToolCallChunkFunction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChatCompletionMessageToolCallChunkFunction-objects as value to a dart map
  static Map<String, List<ChatCompletionMessageToolCallChunkFunction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChatCompletionMessageToolCallChunkFunction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChatCompletionMessageToolCallChunkFunction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

