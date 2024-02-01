//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ChatCompletionRequestMessageContentPart {
  /// Returns a new [ChatCompletionRequestMessageContentPart] instance.
  ChatCompletionRequestMessageContentPart({
    required this.type,
    required this.text,
    required this.imageUrl,
  });

  /// The type of the content part.
  ChatCompletionRequestMessageContentPartTypeEnum type;

  /// The text content.
  String text;

  ChatCompletionRequestMessageContentPartImageImageUrl imageUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChatCompletionRequestMessageContentPart &&
    other.type == type &&
    other.text == text &&
    other.imageUrl == imageUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (text.hashCode) +
    (imageUrl.hashCode);

  @override
  String toString() => 'ChatCompletionRequestMessageContentPart[type=$type, text=$text, imageUrl=$imageUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'text'] = this.text;
      json[r'image_url'] = this.imageUrl;
    return json;
  }

  /// Returns a new [ChatCompletionRequestMessageContentPart] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChatCompletionRequestMessageContentPart? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChatCompletionRequestMessageContentPart[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChatCompletionRequestMessageContentPart[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChatCompletionRequestMessageContentPart(
        type: ChatCompletionRequestMessageContentPartTypeEnum.fromJson(json[r'type'])!,
        text: mapValueOfType<String>(json, r'text')!,
        imageUrl: ChatCompletionRequestMessageContentPartImageImageUrl.fromJson(json[r'image_url'])!,
      );
    }
    return null;
  }

  static List<ChatCompletionRequestMessageContentPart> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChatCompletionRequestMessageContentPart>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChatCompletionRequestMessageContentPart.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChatCompletionRequestMessageContentPart> mapFromJson(dynamic json) {
    final map = <String, ChatCompletionRequestMessageContentPart>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChatCompletionRequestMessageContentPart.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChatCompletionRequestMessageContentPart-objects as value to a dart map
  static Map<String, List<ChatCompletionRequestMessageContentPart>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChatCompletionRequestMessageContentPart>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChatCompletionRequestMessageContentPart.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'text',
    'image_url',
  };
}

/// The type of the content part.
class ChatCompletionRequestMessageContentPartTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ChatCompletionRequestMessageContentPartTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const text = ChatCompletionRequestMessageContentPartTypeEnum._(r'text');
  static const imageUrl = ChatCompletionRequestMessageContentPartTypeEnum._(r'image_url');

  /// List of all possible values in this [enum][ChatCompletionRequestMessageContentPartTypeEnum].
  static const values = <ChatCompletionRequestMessageContentPartTypeEnum>[
    text,
    imageUrl,
  ];

  static ChatCompletionRequestMessageContentPartTypeEnum? fromJson(dynamic value) => ChatCompletionRequestMessageContentPartTypeEnumTypeTransformer().decode(value);

  static List<ChatCompletionRequestMessageContentPartTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChatCompletionRequestMessageContentPartTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChatCompletionRequestMessageContentPartTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ChatCompletionRequestMessageContentPartTypeEnum] to String,
/// and [decode] dynamic data back to [ChatCompletionRequestMessageContentPartTypeEnum].
class ChatCompletionRequestMessageContentPartTypeEnumTypeTransformer {
  factory ChatCompletionRequestMessageContentPartTypeEnumTypeTransformer() => _instance ??= const ChatCompletionRequestMessageContentPartTypeEnumTypeTransformer._();

  const ChatCompletionRequestMessageContentPartTypeEnumTypeTransformer._();

  String encode(ChatCompletionRequestMessageContentPartTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ChatCompletionRequestMessageContentPartTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ChatCompletionRequestMessageContentPartTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'text': return ChatCompletionRequestMessageContentPartTypeEnum.text;
        case r'image_url': return ChatCompletionRequestMessageContentPartTypeEnum.imageUrl;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ChatCompletionRequestMessageContentPartTypeEnumTypeTransformer] instance.
  static ChatCompletionRequestMessageContentPartTypeEnumTypeTransformer? _instance;
}


