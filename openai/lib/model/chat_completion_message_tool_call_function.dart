//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ChatCompletionMessageToolCallFunction {
  /// Returns a new [ChatCompletionMessageToolCallFunction] instance.
  ChatCompletionMessageToolCallFunction({
    required this.name,
    required this.arguments,
  });

  /// The name of the function to call.
  String name;

  /// The arguments to call the function with, as generated by the model in JSON format. Note that the model does not always generate valid JSON, and may hallucinate parameters not defined by your function schema. Validate the arguments in your code before calling your function.
  String arguments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChatCompletionMessageToolCallFunction &&
    other.name == name &&
    other.arguments == arguments;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (arguments.hashCode);

  @override
  String toString() => 'ChatCompletionMessageToolCallFunction[name=$name, arguments=$arguments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'arguments'] = this.arguments;
    return json;
  }

  /// Returns a new [ChatCompletionMessageToolCallFunction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChatCompletionMessageToolCallFunction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChatCompletionMessageToolCallFunction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChatCompletionMessageToolCallFunction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChatCompletionMessageToolCallFunction(
        name: mapValueOfType<String>(json, r'name')!,
        arguments: mapValueOfType<String>(json, r'arguments')!,
      );
    }
    return null;
  }

  static List<ChatCompletionMessageToolCallFunction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChatCompletionMessageToolCallFunction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChatCompletionMessageToolCallFunction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChatCompletionMessageToolCallFunction> mapFromJson(dynamic json) {
    final map = <String, ChatCompletionMessageToolCallFunction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChatCompletionMessageToolCallFunction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChatCompletionMessageToolCallFunction-objects as value to a dart map
  static Map<String, List<ChatCompletionMessageToolCallFunction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChatCompletionMessageToolCallFunction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChatCompletionMessageToolCallFunction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'arguments',
  };
}

