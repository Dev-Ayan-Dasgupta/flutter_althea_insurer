import 'package:freezed_annotation/freezed_annotation.dart';

import 'cohort_entity.dart';

part 'safety_alert_entity.freezed.dart';

enum AlertSeverity { low, medium, high, critical }

enum AlertType {
  fallRisk,
  abnormalVitals,
  mobilityDeclining,
  missedMedication,
  inactivity,
  maternalComplication,
  infantDistress,
  painEscalation,
  recoverySetback,
  caregiverAlert,
}

@freezed
abstract class SafetyAlertEntity with _$SafetyAlertEntity {
  const factory SafetyAlertEntity({
    required String id,
    required AlertType alertType,
    required AlertSeverity severity,
    required CohortType cohortType,
    required String patientName,
    required String patientId,
    required String alertMessage,
    required String detectedReason,
    required DateTime detectedAt,
    required bool requiresImmediateAction,
    required String recommendedAction,
    String? assignedCaregiver,
    bool? actionTaken,
  }) = _SafetyAlertEntity;
}
