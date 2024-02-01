//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListFilesResponse {
  /// Returns a new [ListFilesResponse] instance.
  ListFilesResponse({
    this.data = const [],
    required this.object,
  });

  List<OpenAIFile> data;

  ListFilesResponseObjectEnum object;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListFilesResponse &&
    _deepEquality.equals(other.data, data) &&
    other.object == object;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (object.hashCode);

  @override
  String toString() => 'ListFilesResponse[data=$data, object=$object]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
      json[r'object'] = this.object;
    return json;
  }

  /// Returns a new [ListFilesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListFilesResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListFilesResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListFilesResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListFilesResponse(
        data: OpenAIFile.listFromJson(json[r'data']),
        object: ListFilesResponseObjectEnum.fromJson(json[r'object'])!,
      );
    }
    return null;
  }

  static List<ListFilesResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListFilesResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListFilesResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListFilesResponse> mapFromJson(dynamic json) {
    final map = <String, ListFilesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListFilesResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListFilesResponse-objects as value to a dart map
  static Map<String, List<ListFilesResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListFilesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListFilesResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
    'object',
  };
}


class ListFilesResponseObjectEnum {
  /// Instantiate a new enum with the provided [value].
  const ListFilesResponseObjectEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const list = ListFilesResponseObjectEnum._(r'list');

  /// List of all possible values in this [enum][ListFilesResponseObjectEnum].
  static const values = <ListFilesResponseObjectEnum>[
    list,
  ];

  static ListFilesResponseObjectEnum? fromJson(dynamic value) => ListFilesResponseObjectEnumTypeTransformer().decode(value);

  static List<ListFilesResponseObjectEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListFilesResponseObjectEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListFilesResponseObjectEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ListFilesResponseObjectEnum] to String,
/// and [decode] dynamic data back to [ListFilesResponseObjectEnum].
class ListFilesResponseObjectEnumTypeTransformer {
  factory ListFilesResponseObjectEnumTypeTransformer() => _instance ??= const ListFilesResponseObjectEnumTypeTransformer._();

  const ListFilesResponseObjectEnumTypeTransformer._();

  String encode(ListFilesResponseObjectEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ListFilesResponseObjectEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ListFilesResponseObjectEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'list': return ListFilesResponseObjectEnum.list;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ListFilesResponseObjectEnumTypeTransformer] instance.
  static ListFilesResponseObjectEnumTypeTransformer? _instance;
}


