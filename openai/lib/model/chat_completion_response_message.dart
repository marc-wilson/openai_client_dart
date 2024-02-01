//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ChatCompletionResponseMessage {
  /// Returns a new [ChatCompletionResponseMessage] instance.
  ChatCompletionResponseMessage({
    required this.content,
    this.toolCalls = const [],
    required this.role,
    this.functionCall,
  });

  /// The contents of the message.
  String? content;

  /// The tool calls generated by the model, such as function calls.
  List<ChatCompletionMessageToolCall> toolCalls;

  /// The role of the author of this message.
  ChatCompletionResponseMessageRoleEnum role;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ChatCompletionRequestAssistantMessageFunctionCall? functionCall;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChatCompletionResponseMessage &&
    other.content == content &&
    _deepEquality.equals(other.toolCalls, toolCalls) &&
    other.role == role &&
    other.functionCall == functionCall;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content == null ? 0 : content!.hashCode) +
    (toolCalls.hashCode) +
    (role.hashCode) +
    (functionCall == null ? 0 : functionCall!.hashCode);

  @override
  String toString() => 'ChatCompletionResponseMessage[content=$content, toolCalls=$toolCalls, role=$role, functionCall=$functionCall]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
      json[r'tool_calls'] = this.toolCalls;
      json[r'role'] = this.role;
    if (this.functionCall != null) {
      json[r'function_call'] = this.functionCall;
    } else {
      json[r'function_call'] = null;
    }
    return json;
  }

  /// Returns a new [ChatCompletionResponseMessage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChatCompletionResponseMessage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChatCompletionResponseMessage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChatCompletionResponseMessage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChatCompletionResponseMessage(
        content: mapValueOfType<String>(json, r'content'),
        toolCalls: ChatCompletionMessageToolCall.listFromJson(json[r'tool_calls']),
        role: ChatCompletionResponseMessageRoleEnum.fromJson(json[r'role'])!,
        functionCall: ChatCompletionRequestAssistantMessageFunctionCall.fromJson(json[r'function_call']),
      );
    }
    return null;
  }

  static List<ChatCompletionResponseMessage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChatCompletionResponseMessage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChatCompletionResponseMessage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChatCompletionResponseMessage> mapFromJson(dynamic json) {
    final map = <String, ChatCompletionResponseMessage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChatCompletionResponseMessage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChatCompletionResponseMessage-objects as value to a dart map
  static Map<String, List<ChatCompletionResponseMessage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChatCompletionResponseMessage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChatCompletionResponseMessage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'content',
    'role',
  };
}

/// The role of the author of this message.
class ChatCompletionResponseMessageRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const ChatCompletionResponseMessageRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const assistant = ChatCompletionResponseMessageRoleEnum._(r'assistant');

  /// List of all possible values in this [enum][ChatCompletionResponseMessageRoleEnum].
  static const values = <ChatCompletionResponseMessageRoleEnum>[
    assistant,
  ];

  static ChatCompletionResponseMessageRoleEnum? fromJson(dynamic value) => ChatCompletionResponseMessageRoleEnumTypeTransformer().decode(value);

  static List<ChatCompletionResponseMessageRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChatCompletionResponseMessageRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChatCompletionResponseMessageRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ChatCompletionResponseMessageRoleEnum] to String,
/// and [decode] dynamic data back to [ChatCompletionResponseMessageRoleEnum].
class ChatCompletionResponseMessageRoleEnumTypeTransformer {
  factory ChatCompletionResponseMessageRoleEnumTypeTransformer() => _instance ??= const ChatCompletionResponseMessageRoleEnumTypeTransformer._();

  const ChatCompletionResponseMessageRoleEnumTypeTransformer._();

  String encode(ChatCompletionResponseMessageRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ChatCompletionResponseMessageRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ChatCompletionResponseMessageRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'assistant': return ChatCompletionResponseMessageRoleEnum.assistant;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ChatCompletionResponseMessageRoleEnumTypeTransformer] instance.
  static ChatCompletionResponseMessageRoleEnumTypeTransformer? _instance;
}


