//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FineTuningJobHyperparameters {
  /// Returns a new [FineTuningJobHyperparameters] instance.
  FineTuningJobHyperparameters({
    required this.nEpochs,
  });

  FineTuningJobHyperparametersNEpochs nEpochs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FineTuningJobHyperparameters &&
    other.nEpochs == nEpochs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nEpochs.hashCode);

  @override
  String toString() => 'FineTuningJobHyperparameters[nEpochs=$nEpochs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'n_epochs'] = this.nEpochs;
    return json;
  }

  /// Returns a new [FineTuningJobHyperparameters] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FineTuningJobHyperparameters? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FineTuningJobHyperparameters[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FineTuningJobHyperparameters[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FineTuningJobHyperparameters(
        nEpochs: FineTuningJobHyperparametersNEpochs.fromJson(json[r'n_epochs'])!,
      );
    }
    return null;
  }

  static List<FineTuningJobHyperparameters> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FineTuningJobHyperparameters>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FineTuningJobHyperparameters.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FineTuningJobHyperparameters> mapFromJson(dynamic json) {
    final map = <String, FineTuningJobHyperparameters>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FineTuningJobHyperparameters.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FineTuningJobHyperparameters-objects as value to a dart map
  static Map<String, List<FineTuningJobHyperparameters>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FineTuningJobHyperparameters>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FineTuningJobHyperparameters.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'n_epochs',
  };
}

