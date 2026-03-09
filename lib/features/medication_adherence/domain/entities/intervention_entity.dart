import 'package:freezed_annotation/freezed_annotation.dart';

part 'intervention_entity.freezed.dart';

enum InterventionType {
  reminder,
  counseling,
  simplification,
  pillbox,
  caregiverSupport,
  financialAssistance,
}

enum InterventionStatus { recommended, scheduled, inProgress, completed }

@freezed
abstract class InterventionEntity with _$InterventionEntity {
  const factory InterventionEntity({
    required String id,
    required InterventionType type,
    required String interventionName,
    required String patientId,
    required String patientName,
    required String description,
    required String expectedOutcome,
    required InterventionStatus status,
    required DateTime createdAt,
    DateTime? scheduledFor,
    DateTime? completedAt,
    String? assignedTo,
    String? outcome,
  }) = _InterventionEntity;
}
