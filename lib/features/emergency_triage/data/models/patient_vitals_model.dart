import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/patient_vitals_entity.dart';

part 'patient_vitals_model.freezed.dart';
part 'patient_vitals_model.g.dart';

@freezed
abstract class PatientVitalsModel with _$PatientVitalsModel {
  const PatientVitalsModel._();

  const factory PatientVitalsModel({
    required int heartRate,
    required int bloodPressureSystolic,
    required int bloodPressureDiastolic,
    required int oxygenSaturation,
    required double temperature,
    required int respiratoryRate,
    String? ecgData,
    required DateTime recordedAt,
  }) = _PatientVitalsModel;

  factory PatientVitalsModel.fromJson(Map<String, dynamic> json) =>
      _$PatientVitalsModelFromJson(json);

  PatientVitalsEntity toEntity() => PatientVitalsEntity(
    heartRate: heartRate,
    bloodPressureSystolic: bloodPressureSystolic,
    bloodPressureDiastolic: bloodPressureDiastolic,
    oxygenSaturation: oxygenSaturation,
    temperature: temperature,
    respiratoryRate: respiratoryRate,
    ecgData: ecgData,
    recordedAt: recordedAt,
  );
}
