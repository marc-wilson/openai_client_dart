//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateMessageRequest {
  /// Returns a new [CreateMessageRequest] instance.
  CreateMessageRequest({
    required this.role,
    required this.content,
    this.fileIds = const [],
    this.metadata,
  });

  /// The role of the entity that is creating the message. Currently only `user` is supported.
  CreateMessageRequestRoleEnum role;

  /// The content of the message.
  String content;

  /// A list of [File](/docs/api-reference/files) IDs that the message should use. There can be a maximum of 10 files attached to a message. Useful for tools like `retrieval` and `code_interpreter` that can access and use files.
  List<String> fileIds;

  /// Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long. 
  Object? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateMessageRequest &&
    other.role == role &&
    other.content == content &&
    _deepEquality.equals(other.fileIds, fileIds) &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (role.hashCode) +
    (content.hashCode) +
    (fileIds.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'CreateMessageRequest[role=$role, content=$content, fileIds=$fileIds, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'role'] = this.role;
      json[r'content'] = this.content;
      json[r'file_ids'] = this.fileIds;
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    return json;
  }

  /// Returns a new [CreateMessageRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateMessageRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateMessageRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateMessageRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateMessageRequest(
        role: CreateMessageRequestRoleEnum.fromJson(json[r'role'])!,
        content: mapValueOfType<String>(json, r'content')!,
        fileIds: json[r'file_ids'] is Iterable
            ? (json[r'file_ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<CreateMessageRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateMessageRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateMessageRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateMessageRequest> mapFromJson(dynamic json) {
    final map = <String, CreateMessageRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateMessageRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateMessageRequest-objects as value to a dart map
  static Map<String, List<CreateMessageRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateMessageRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateMessageRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'role',
    'content',
  };
}

/// The role of the entity that is creating the message. Currently only `user` is supported.
class CreateMessageRequestRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateMessageRequestRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const user = CreateMessageRequestRoleEnum._(r'user');

  /// List of all possible values in this [enum][CreateMessageRequestRoleEnum].
  static const values = <CreateMessageRequestRoleEnum>[
    user,
  ];

  static CreateMessageRequestRoleEnum? fromJson(dynamic value) => CreateMessageRequestRoleEnumTypeTransformer().decode(value);

  static List<CreateMessageRequestRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateMessageRequestRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateMessageRequestRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateMessageRequestRoleEnum] to String,
/// and [decode] dynamic data back to [CreateMessageRequestRoleEnum].
class CreateMessageRequestRoleEnumTypeTransformer {
  factory CreateMessageRequestRoleEnumTypeTransformer() => _instance ??= const CreateMessageRequestRoleEnumTypeTransformer._();

  const CreateMessageRequestRoleEnumTypeTransformer._();

  String encode(CreateMessageRequestRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateMessageRequestRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateMessageRequestRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'user': return CreateMessageRequestRoleEnum.user;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateMessageRequestRoleEnumTypeTransformer] instance.
  static CreateMessageRequestRoleEnumTypeTransformer? _instance;
}


