//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListMessageFilesResponse {
  /// Returns a new [ListMessageFilesResponse] instance.
  ListMessageFilesResponse({
    required this.object,
    this.data = const [],
    required this.firstId,
    required this.lastId,
    required this.hasMore,
  });

  String object;

  List<MessageFileObject> data;

  String firstId;

  String lastId;

  bool hasMore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListMessageFilesResponse &&
    other.object == object &&
    _deepEquality.equals(other.data, data) &&
    other.firstId == firstId &&
    other.lastId == lastId &&
    other.hasMore == hasMore;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (object.hashCode) +
    (data.hashCode) +
    (firstId.hashCode) +
    (lastId.hashCode) +
    (hasMore.hashCode);

  @override
  String toString() => 'ListMessageFilesResponse[object=$object, data=$data, firstId=$firstId, lastId=$lastId, hasMore=$hasMore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'object'] = this.object;
      json[r'data'] = this.data;
      json[r'first_id'] = this.firstId;
      json[r'last_id'] = this.lastId;
      json[r'has_more'] = this.hasMore;
    return json;
  }

  /// Returns a new [ListMessageFilesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListMessageFilesResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListMessageFilesResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListMessageFilesResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListMessageFilesResponse(
        object: mapValueOfType<String>(json, r'object')!,
        data: MessageFileObject.listFromJson(json[r'data']),
        firstId: mapValueOfType<String>(json, r'first_id')!,
        lastId: mapValueOfType<String>(json, r'last_id')!,
        hasMore: mapValueOfType<bool>(json, r'has_more')!,
      );
    }
    return null;
  }

  static List<ListMessageFilesResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListMessageFilesResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListMessageFilesResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListMessageFilesResponse> mapFromJson(dynamic json) {
    final map = <String, ListMessageFilesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListMessageFilesResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListMessageFilesResponse-objects as value to a dart map
  static Map<String, List<ListMessageFilesResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListMessageFilesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListMessageFilesResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'object',
    'data',
    'first_id',
    'last_id',
    'has_more',
  };
}

