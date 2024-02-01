//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListAssistantFilesResponse {
  /// Returns a new [ListAssistantFilesResponse] instance.
  ListAssistantFilesResponse({
    required this.object,
    this.data = const [],
    required this.firstId,
    required this.lastId,
    required this.hasMore,
  });

  String object;

  List<AssistantFileObject> data;

  String firstId;

  String lastId;

  bool hasMore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListAssistantFilesResponse &&
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
  String toString() => 'ListAssistantFilesResponse[object=$object, data=$data, firstId=$firstId, lastId=$lastId, hasMore=$hasMore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'object'] = this.object;
      json[r'data'] = this.data;
      json[r'first_id'] = this.firstId;
      json[r'last_id'] = this.lastId;
      json[r'has_more'] = this.hasMore;
    return json;
  }

  /// Returns a new [ListAssistantFilesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListAssistantFilesResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListAssistantFilesResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListAssistantFilesResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListAssistantFilesResponse(
        object: mapValueOfType<String>(json, r'object')!,
        data: AssistantFileObject.listFromJson(json[r'data']),
        firstId: mapValueOfType<String>(json, r'first_id')!,
        lastId: mapValueOfType<String>(json, r'last_id')!,
        hasMore: mapValueOfType<bool>(json, r'has_more')!,
      );
    }
    return null;
  }

  static List<ListAssistantFilesResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListAssistantFilesResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListAssistantFilesResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListAssistantFilesResponse> mapFromJson(dynamic json) {
    final map = <String, ListAssistantFilesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListAssistantFilesResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListAssistantFilesResponse-objects as value to a dart map
  static Map<String, List<ListAssistantFilesResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListAssistantFilesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListAssistantFilesResponse.listFromJson(entry.value, growable: growable,);
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

