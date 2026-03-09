import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/safety_alert_entity.dart';
import '../../domain/entities/cohort_entity.dart';

part 'safety_alert_model.freezed.dart';
part 'safety_alert_model.g.dart';

@freezed
abstract class SafetyAlertModel with _$SafetyAlertModel {
  const SafetyAlertModel._();

  const factory SafetyAlertModel({
    required String id,
    required String alertType,
    required String severity,
    required String cohortType,
    required String patientName,
    required String patientId,
    required String alertMessage,
    required String detectedReason,
    required DateTime detectedAt,
    required bool requiresImmediateAction,
    required String recommendedAction,
    String? assignedCaregiver,
    bool? actionTaken,
  }) = _SafetyAlertModel;

  factory SafetyAlertModel.fromJson(Map<String, dynamic> json) =>
      _$SafetyAlertModelFromJson(json);

  SafetyAlertEntity toEntity() {
    AlertType typeEnum;
    switch (alertType.toLowerCase()) {
      case 'fall_risk':
        typeEnum = AlertType.fallRisk;
        break;
      case 'abnormal_vitals':
        typeEnum = AlertType.abnormalVitals;
        break;
      case 'mobility_declining':
        typeEnum = AlertType.mobilityDeclining;
        break;
      case 'missed_medication':
        typeEnum = AlertType.missedMedication;
        break;
      case 'inactivity':
        typeEnum = AlertType.inactivity;
        break;
      case 'maternal_complication':
        typeEnum = AlertType.maternalComplication;
        break;
      case 'infant_distress':
        typeEnum = AlertType.infantDistress;
        break;
      case 'pain_escalation':
        typeEnum = AlertType.painEscalation;
        break;
      case 'recovery_setback':
        typeEnum = AlertType.recoverySetback;
        break;
      case 'caregiver_alert':
        typeEnum = AlertType.caregiverAlert;
        break;
      default:
        typeEnum = AlertType.fallRisk;
    }

    AlertSeverity severityEnum;
    switch (severity.toLowerCase()) {
      case 'low':
        severityEnum = AlertSeverity.low;
        break;
      case 'medium':
        severityEnum = AlertSeverity.medium;
        break;
      case 'high':
        severityEnum = AlertSeverity.high;
        break;
      case 'critical':
        severityEnum = AlertSeverity.critical;
        break;
      default:
        severityEnum = AlertSeverity.medium;
    }

    CohortType cohortEnum;
    switch (cohortType.toLowerCase()) {
      case 'elderly':
        cohortEnum = CohortType.elderly;
        break;
      case 'pregnancy':
        cohortEnum = CohortType.pregnancy;
        break;
      case 'infant_toddler':
        cohortEnum = CohortType.infantToddler;
        break;
      case 'accident_recovery':
        cohortEnum = CohortType.accidentRecovery;
        break;
      case 'terminal_illness':
        cohortEnum = CohortType.terminalIllness;
        break;
      default:
        cohortEnum = CohortType.elderly;
    }

    return SafetyAlertEntity(
      id: id,
      alertType: typeEnum,
      severity: severityEnum,
      cohortType: cohortEnum,
      patientName: patientName,
      patientId: patientId,
      alertMessage: alertMessage,
      detectedReason: detectedReason,
      detectedAt: detectedAt,
      requiresImmediateAction: requiresImmediateAction,
      recommendedAction: recommendedAction,
      assignedCaregiver: assignedCaregiver,
      actionTaken: actionTaken,
    );
  }
}
