//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MessageObject {
  /// Returns a new [MessageObject] instance.
  MessageObject({
    required this.id,
    required this.object,
    required this.createdAt,
    required this.threadId,
    required this.role,
    this.content = const [],
    required this.assistantId,
    required this.runId,
    this.fileIds = const [],
    required this.metadata,
  });

  /// The identifier, which can be referenced in API endpoints.
  String id;

  /// The object type, which is always `thread.message`.
  MessageObjectObjectEnum object;

  /// The Unix timestamp (in seconds) for when the message was created.
  int createdAt;

  /// The [thread](/docs/api-reference/threads) ID that this message belongs to.
  String threadId;

  /// The entity that produced the message. One of `user` or `assistant`.
  MessageObjectRoleEnum role;

  /// The content of the message in array of text and/or images.
  List<MessageObjectContentInner> content;

  /// If applicable, the ID of the [assistant](/docs/api-reference/assistants) that authored this message.
  String? assistantId;

  /// If applicable, the ID of the [run](/docs/api-reference/runs) associated with the authoring of this message.
  String? runId;

  /// A list of [file](/docs/api-reference/files) IDs that the assistant should use. Useful for tools like retrieval and code_interpreter that can access files. A maximum of 10 files can be attached to a message.
  List<String> fileIds;

  /// Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long. 
  Object? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageObject &&
    other.id == id &&
    other.object == object &&
    other.createdAt == createdAt &&
    other.threadId == threadId &&
    other.role == role &&
    _deepEquality.equals(other.content, content) &&
    other.assistantId == assistantId &&
    other.runId == runId &&
    _deepEquality.equals(other.fileIds, fileIds) &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (object.hashCode) +
    (createdAt.hashCode) +
    (threadId.hashCode) +
    (role.hashCode) +
    (content.hashCode) +
    (assistantId == null ? 0 : assistantId!.hashCode) +
    (runId == null ? 0 : runId!.hashCode) +
    (fileIds.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'MessageObject[id=$id, object=$object, createdAt=$createdAt, threadId=$threadId, role=$role, content=$content, assistantId=$assistantId, runId=$runId, fileIds=$fileIds, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'object'] = this.object;
      json[r'created_at'] = this.createdAt;
      json[r'thread_id'] = this.threadId;
      json[r'role'] = this.role;
      json[r'content'] = this.content;
    if (this.assistantId != null) {
      json[r'assistant_id'] = this.assistantId;
    } else {
      json[r'assistant_id'] = null;
    }
    if (this.runId != null) {
      json[r'run_id'] = this.runId;
    } else {
      json[r'run_id'] = null;
    }
      json[r'file_ids'] = this.fileIds;
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    return json;
  }

  /// Returns a new [MessageObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MessageObject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MessageObject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MessageObject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MessageObject(
        id: mapValueOfType<String>(json, r'id')!,
        object: MessageObjectObjectEnum.fromJson(json[r'object'])!,
        createdAt: mapValueOfType<int>(json, r'created_at')!,
        threadId: mapValueOfType<String>(json, r'thread_id')!,
        role: MessageObjectRoleEnum.fromJson(json[r'role'])!,
        content: MessageObjectContentInner.listFromJson(json[r'content']),
        assistantId: mapValueOfType<String>(json, r'assistant_id'),
        runId: mapValueOfType<String>(json, r'run_id'),
        fileIds: json[r'file_ids'] is Iterable
            ? (json[r'file_ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<MessageObject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageObject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageObject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MessageObject> mapFromJson(dynamic json) {
    final map = <String, MessageObject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessageObject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MessageObject-objects as value to a dart map
  static Map<String, List<MessageObject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MessageObject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MessageObject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'object',
    'created_at',
    'thread_id',
    'role',
    'content',
    'assistant_id',
    'run_id',
    'file_ids',
    'metadata',
  };
}

/// The object type, which is always `thread.message`.
class MessageObjectObjectEnum {
  /// Instantiate a new enum with the provided [value].
  const MessageObjectObjectEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const threadPeriodMessage = MessageObjectObjectEnum._(r'thread.message');

  /// List of all possible values in this [enum][MessageObjectObjectEnum].
  static const values = <MessageObjectObjectEnum>[
    threadPeriodMessage,
  ];

  static MessageObjectObjectEnum? fromJson(dynamic value) => MessageObjectObjectEnumTypeTransformer().decode(value);

  static List<MessageObjectObjectEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageObjectObjectEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageObjectObjectEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MessageObjectObjectEnum] to String,
/// and [decode] dynamic data back to [MessageObjectObjectEnum].
class MessageObjectObjectEnumTypeTransformer {
  factory MessageObjectObjectEnumTypeTransformer() => _instance ??= const MessageObjectObjectEnumTypeTransformer._();

  const MessageObjectObjectEnumTypeTransformer._();

  String encode(MessageObjectObjectEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MessageObjectObjectEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MessageObjectObjectEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'thread.message': return MessageObjectObjectEnum.threadPeriodMessage;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MessageObjectObjectEnumTypeTransformer] instance.
  static MessageObjectObjectEnumTypeTransformer? _instance;
}


/// The entity that produced the message. One of `user` or `assistant`.
class MessageObjectRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const MessageObjectRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const user = MessageObjectRoleEnum._(r'user');
  static const assistant = MessageObjectRoleEnum._(r'assistant');

  /// List of all possible values in this [enum][MessageObjectRoleEnum].
  static const values = <MessageObjectRoleEnum>[
    user,
    assistant,
  ];

  static MessageObjectRoleEnum? fromJson(dynamic value) => MessageObjectRoleEnumTypeTransformer().decode(value);

  static List<MessageObjectRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageObjectRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageObjectRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MessageObjectRoleEnum] to String,
/// and [decode] dynamic data back to [MessageObjectRoleEnum].
class MessageObjectRoleEnumTypeTransformer {
  factory MessageObjectRoleEnumTypeTransformer() => _instance ??= const MessageObjectRoleEnumTypeTransformer._();

  const MessageObjectRoleEnumTypeTransformer._();

  String encode(MessageObjectRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MessageObjectRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MessageObjectRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'user': return MessageObjectRoleEnum.user;
        case r'assistant': return MessageObjectRoleEnum.assistant;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MessageObjectRoleEnumTypeTransformer] instance.
  static MessageObjectRoleEnumTypeTransformer? _instance;
}


