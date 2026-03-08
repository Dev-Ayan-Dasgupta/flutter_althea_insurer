import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/emergency_case_entity.dart';
import 'patient_vitals_model.dart';
import 'pre_auth_model.dart';

part 'emergency_case_model.freezed.dart';
part 'emergency_case_model.g.dart';

@freezed
abstract class EmergencyCaseModel with _$EmergencyCaseModel {
  const EmergencyCaseModel._();

  const factory EmergencyCaseModel({
    required String id,
    required String patientId,
    required String patientName,
    required int patientAge,
    required String chiefComplaint,
    required String severity,
    required String status,
    required String ambulanceId,
    required String paramedicName,
    required PatientVitalsModel vitals,
    required String location,
    double? latitude,
    double? longitude,
    required String destinationHospital,
    required double estimatedCost,
    PreAuthModel? preAuth,
    String? medicalHistory,
    List<String>? medications,
    required DateTime dispatchedAt,
    DateTime? arrivedAt,
    DateTime? transportedAt,
    required DateTime createdAt,
  }) = _EmergencyCaseModel;

  factory EmergencyCaseModel.fromJson(Map<String, dynamic> json) =>
      _$EmergencyCaseModelFromJson(json);

  EmergencyCaseEntity toEntity() {
    EmergencySeverity severityEnum;
    switch (severity.toLowerCase()) {
      case 'critical':
        severityEnum = EmergencySeverity.critical;
        break;
      case 'high':
        severityEnum = EmergencySeverity.high;
        break;
      case 'moderate':
        severityEnum = EmergencySeverity.moderate;
        break;
      default:
        severityEnum = EmergencySeverity.low;
    }

    EmergencyStatus statusEnum;
    switch (status.toLowerCase().replaceAll(' ', '_')) {
      case 'dispatched':
        statusEnum = EmergencyStatus.dispatched;
        break;
      case 'en_route':
        statusEnum = EmergencyStatus.enRoute;
        break;
      case 'on_scene':
        statusEnum = EmergencyStatus.onScene;
        break;
      case 'transporting_to_hospital':
        statusEnum = EmergencyStatus.transportingToHospital;
        break;
      case 'at_hospital':
        statusEnum = EmergencyStatus.atHospital;
        break;
      default:
        statusEnum = EmergencyStatus.completed;
    }

    return EmergencyCaseEntity(
      id: id,
      patientId: patientId,
      patientName: patientName,
      patientAge: patientAge,
      chiefComplaint: chiefComplaint,
      severity: severityEnum,
      status: statusEnum,
      ambulanceId: ambulanceId,
      paramedicName: paramedicName,
      vitals: vitals.toEntity(),
      location: location,
      latitude: latitude,
      longitude: longitude,
      destinationHospital: destinationHospital,
      estimatedCost: estimatedCost,
      preAuth: preAuth?.toEntity(),
      medicalHistory: medicalHistory,
      medications: medications,
      dispatchedAt: dispatchedAt,
      arrivedAt: arrivedAt,
      transportedAt: transportedAt,
      createdAt: createdAt,
    );
  }
}
