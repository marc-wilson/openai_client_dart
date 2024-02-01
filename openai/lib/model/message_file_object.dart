//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MessageFileObject {
  /// Returns a new [MessageFileObject] instance.
  MessageFileObject({
    required this.id,
    required this.object,
    required this.createdAt,
    required this.messageId,
  });

  /// The identifier, which can be referenced in API endpoints.
  String id;

  /// The object type, which is always `thread.message.file`.
  MessageFileObjectObjectEnum object;

  /// The Unix timestamp (in seconds) for when the message file was created.
  int createdAt;

  /// The ID of the [message](/docs/api-reference/messages) that the [File](/docs/api-reference/files) is attached to.
  String messageId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageFileObject &&
    other.id == id &&
    other.object == object &&
    other.createdAt == createdAt &&
    other.messageId == messageId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (object.hashCode) +
    (createdAt.hashCode) +
    (messageId.hashCode);

  @override
  String toString() => 'MessageFileObject[id=$id, object=$object, createdAt=$createdAt, messageId=$messageId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'object'] = this.object;
      json[r'created_at'] = this.createdAt;
      json[r'message_id'] = this.messageId;
    return json;
  }

  /// Returns a new [MessageFileObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MessageFileObject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MessageFileObject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MessageFileObject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MessageFileObject(
        id: mapValueOfType<String>(json, r'id')!,
        object: MessageFileObjectObjectEnum.fromJson(json[r'object'])!,
        createdAt: mapValueOfType<int>(json, r'created_at')!,
        messageId: mapValueOfType<String>(json, r'message_id')!,
      );
    }
    return null;
  }

  static List<MessageFileObject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageFileObject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageFileObject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MessageFileObject> mapFromJson(dynamic json) {
    final map = <String, MessageFileObject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessageFileObject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MessageFileObject-objects as value to a dart map
  static Map<String, List<MessageFileObject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MessageFileObject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MessageFileObject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'object',
    'created_at',
    'message_id',
  };
}

/// The object type, which is always `thread.message.file`.
class MessageFileObjectObjectEnum {
  /// Instantiate a new enum with the provided [value].
  const MessageFileObjectObjectEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const threadPeriodMessagePeriodFile = MessageFileObjectObjectEnum._(r'thread.message.file');

  /// List of all possible values in this [enum][MessageFileObjectObjectEnum].
  static const values = <MessageFileObjectObjectEnum>[
    threadPeriodMessagePeriodFile,
  ];

  static MessageFileObjectObjectEnum? fromJson(dynamic value) => MessageFileObjectObjectEnumTypeTransformer().decode(value);

  static List<MessageFileObjectObjectEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageFileObjectObjectEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageFileObjectObjectEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MessageFileObjectObjectEnum] to String,
/// and [decode] dynamic data back to [MessageFileObjectObjectEnum].
class MessageFileObjectObjectEnumTypeTransformer {
  factory MessageFileObjectObjectEnumTypeTransformer() => _instance ??= const MessageFileObjectObjectEnumTypeTransformer._();

  const MessageFileObjectObjectEnumTypeTransformer._();

  String encode(MessageFileObjectObjectEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MessageFileObjectObjectEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MessageFileObjectObjectEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'thread.message.file': return MessageFileObjectObjectEnum.threadPeriodMessagePeriodFile;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MessageFileObjectObjectEnumTypeTransformer] instance.
  static MessageFileObjectObjectEnumTypeTransformer? _instance;
}


