import 'package:freezed_annotation/freezed_annotation.dart';
import 'patient_vitals_entity.dart';
import 'pre_auth_entity.dart';

part 'emergency_case_entity.freezed.dart';

enum EmergencySeverity { critical, high, moderate, low }

enum EmergencyStatus {
  dispatched,
  enRoute,
  onScene,
  transportingToHospital,
  atHospital,
  completed,
}

@freezed
abstract class EmergencyCaseEntity with _$EmergencyCaseEntity {
  const factory EmergencyCaseEntity({
    required String id,
    required String patientId,
    required String patientName,
    required int patientAge,
    required String chiefComplaint,
    required EmergencySeverity severity,
    required EmergencyStatus status,
    required String ambulanceId,
    required String paramedicName,
    required PatientVitalsEntity vitals,
    required String location,
    required double? latitude,
    required double? longitude,
    required String destinationHospital,
    required double estimatedCost,
    PreAuthEntity? preAuth,
    String? medicalHistory,
    List<String>? medications,
    required DateTime dispatchedAt,
    DateTime? arrivedAt,
    DateTime? transportedAt,
    required DateTime createdAt,
  }) = _EmergencyCaseEntity;
}
