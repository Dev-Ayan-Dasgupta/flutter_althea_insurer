import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_vitals_entity.freezed.dart';

@freezed
abstract class PatientVitalsEntity with _$PatientVitalsEntity {
  const factory PatientVitalsEntity({
    required int heartRate,
    required int bloodPressureSystolic,
    required int bloodPressureDiastolic,
    required int oxygenSaturation,
    required double temperature,
    required int respiratoryRate,
    String? ecgData,
    required DateTime recordedAt,
  }) = _PatientVitalsEntity;
}
