//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateFineTuningJobRequest {
  /// Returns a new [CreateFineTuningJobRequest] instance.
  CreateFineTuningJobRequest({
    required this.model,
    required this.trainingFile,
    this.hyperparameters,
    this.suffix,
    this.validationFile,
  });

  CreateFineTuningJobRequestModel model;

  /// The ID of an uploaded file that contains training data.  See [upload file](/docs/api-reference/files/upload) for how to upload a file.  Your dataset must be formatted as a JSONL file. Additionally, you must upload your file with the purpose `fine-tune`.  See the [fine-tuning guide](/docs/guides/fine-tuning) for more details. 
  String trainingFile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CreateFineTuningJobRequestHyperparameters? hyperparameters;

  /// A string of up to 18 characters that will be added to your fine-tuned model name.  For example, a `suffix` of \"custom-model-name\" would produce a model name like `ft:gpt-3.5-turbo:openai:custom-model-name:7p4lURel`. 
  String? suffix;

  /// The ID of an uploaded file that contains validation data.  If you provide this file, the data is used to generate validation metrics periodically during fine-tuning. These metrics can be viewed in the fine-tuning results file. The same data should not be present in both train and validation files.  Your dataset must be formatted as a JSONL file. You must upload your file with the purpose `fine-tune`.  See the [fine-tuning guide](/docs/guides/fine-tuning) for more details. 
  String? validationFile;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateFineTuningJobRequest &&
    other.model == model &&
    other.trainingFile == trainingFile &&
    other.hyperparameters == hyperparameters &&
    other.suffix == suffix &&
    other.validationFile == validationFile;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (model.hashCode) +
    (trainingFile.hashCode) +
    (hyperparameters == null ? 0 : hyperparameters!.hashCode) +
    (suffix == null ? 0 : suffix!.hashCode) +
    (validationFile == null ? 0 : validationFile!.hashCode);

  @override
  String toString() => 'CreateFineTuningJobRequest[model=$model, trainingFile=$trainingFile, hyperparameters=$hyperparameters, suffix=$suffix, validationFile=$validationFile]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'model'] = this.model;
      json[r'training_file'] = this.trainingFile;
    if (this.hyperparameters != null) {
      json[r'hyperparameters'] = this.hyperparameters;
    } else {
      json[r'hyperparameters'] = null;
    }
    if (this.suffix != null) {
      json[r'suffix'] = this.suffix;
    } else {
      json[r'suffix'] = null;
    }
    if (this.validationFile != null) {
      json[r'validation_file'] = this.validationFile;
    } else {
      json[r'validation_file'] = null;
    }
    return json;
  }

  /// Returns a new [CreateFineTuningJobRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateFineTuningJobRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateFineTuningJobRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateFineTuningJobRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateFineTuningJobRequest(
        model: CreateFineTuningJobRequestModel.fromJson(json[r'model'])!,
        trainingFile: mapValueOfType<String>(json, r'training_file')!,
        hyperparameters: CreateFineTuningJobRequestHyperparameters.fromJson(json[r'hyperparameters']),
        suffix: mapValueOfType<String>(json, r'suffix'),
        validationFile: mapValueOfType<String>(json, r'validation_file'),
      );
    }
    return null;
  }

  static List<CreateFineTuningJobRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateFineTuningJobRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateFineTuningJobRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateFineTuningJobRequest> mapFromJson(dynamic json) {
    final map = <String, CreateFineTuningJobRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateFineTuningJobRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateFineTuningJobRequest-objects as value to a dart map
  static Map<String, List<CreateFineTuningJobRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateFineTuningJobRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateFineTuningJobRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'model',
    'training_file',
  };
}

