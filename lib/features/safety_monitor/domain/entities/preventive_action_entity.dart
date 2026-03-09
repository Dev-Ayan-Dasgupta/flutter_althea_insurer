import 'package:freezed_annotation/freezed_annotation.dart';

import 'cohort_entity.dart';

part 'preventive_action_entity.freezed.dart';

enum ActionType {
  homeSafetyInspection,
  caregiverVisit,
  physiotherapy,
  wearableCalibration,
  medicationReview,
  nutritionCounseling,
  prenatalCheckup,
  infantMonitoring,
  painManagement,
  mentalHealthSupport,
}

enum ActionStatus { pending, scheduled, inProgress, completed }

@freezed
abstract class PreventiveActionEntity with _$PreventiveActionEntity {
  const factory PreventiveActionEntity({
    required String id,
    required ActionType actionType,
    required String actionName,
    required CohortType cohortType,
    required String patientName,
    required String patientId,
    required ActionStatus status,
    required DateTime scheduledFor,
    String? assignedTo,
    String? notes,
    DateTime? completedAt,
  }) = _PreventiveActionEntity;
}
