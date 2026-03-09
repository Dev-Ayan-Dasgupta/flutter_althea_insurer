import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/preventive_action_entity.dart';
import '../../domain/entities/cohort_entity.dart';

part 'preventive_action_model.freezed.dart';
part 'preventive_action_model.g.dart';

@freezed
abstract class PreventiveActionModel with _$PreventiveActionModel {
  const PreventiveActionModel._();

  const factory PreventiveActionModel({
    required String id,
    required String actionType,
    required String actionName,
    required String cohortType,
    required String patientName,
    required String patientId,
    required String status,
    required DateTime scheduledFor,
    String? assignedTo,
    String? notes,
    DateTime? completedAt,
  }) = _PreventiveActionModel;

  factory PreventiveActionModel.fromJson(Map<String, dynamic> json) =>
      _$PreventiveActionModelFromJson(json);

  PreventiveActionEntity toEntity() {
    ActionType typeEnum;
    switch (actionType.toLowerCase()) {
      case 'home_safety_inspection':
        typeEnum = ActionType.homeSafetyInspection;
        break;
      case 'caregiver_visit':
        typeEnum = ActionType.caregiverVisit;
        break;
      case 'physiotherapy':
        typeEnum = ActionType.physiotherapy;
        break;
      case 'wearable_calibration':
        typeEnum = ActionType.wearableCalibration;
        break;
      case 'medication_review':
        typeEnum = ActionType.medicationReview;
        break;
      case 'nutrition_counseling':
        typeEnum = ActionType.nutritionCounseling;
        break;
      case 'prenatal_checkup':
        typeEnum = ActionType.prenatalCheckup;
        break;
      case 'infant_monitoring':
        typeEnum = ActionType.infantMonitoring;
        break;
      case 'pain_management':
        typeEnum = ActionType.painManagement;
        break;
      case 'mental_health_support':
        typeEnum = ActionType.mentalHealthSupport;
        break;
      default:
        typeEnum = ActionType.caregiverVisit;
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

    ActionStatus statusEnum;
    switch (status.toLowerCase()) {
      case 'pending':
        statusEnum = ActionStatus.pending;
        break;
      case 'scheduled':
        statusEnum = ActionStatus.scheduled;
        break;
      case 'in_progress':
        statusEnum = ActionStatus.inProgress;
        break;
      case 'completed':
        statusEnum = ActionStatus.completed;
        break;
      default:
        statusEnum = ActionStatus.pending;
    }

    return PreventiveActionEntity(
      id: id,
      actionType: typeEnum,
      actionName: actionName,
      cohortType: cohortEnum,
      patientName: patientName,
      patientId: patientId,
      status: statusEnum,
      scheduledFor: scheduledFor,
      assignedTo: assignedTo,
      notes: notes,
      completedAt: completedAt,
    );
  }
}
