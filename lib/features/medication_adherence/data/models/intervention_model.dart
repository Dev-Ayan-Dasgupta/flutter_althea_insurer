import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/intervention_entity.dart';

part 'intervention_model.freezed.dart';
part 'intervention_model.g.dart';

@freezed
abstract class InterventionModel with _$InterventionModel {
  const InterventionModel._();

  const factory InterventionModel({
    required String id,
    required String type,
    required String interventionName,
    required String patientId,
    required String patientName,
    required String description,
    required String expectedOutcome,
    required String status,
    required DateTime createdAt,
    DateTime? scheduledFor,
    DateTime? completedAt,
    String? assignedTo,
    String? outcome,
  }) = _InterventionModel;

  factory InterventionModel.fromJson(Map<String, dynamic> json) =>
      _$InterventionModelFromJson(json);

  InterventionEntity toEntity() {
    InterventionType typeEnum;
    switch (type.toLowerCase()) {
      case 'reminder':
        typeEnum = InterventionType.reminder;
        break;
      case 'counseling':
        typeEnum = InterventionType.counseling;
        break;
      case 'simplification':
        typeEnum = InterventionType.simplification;
        break;
      case 'pillbox':
        typeEnum = InterventionType.pillbox;
        break;
      case 'caregiver_support':
        typeEnum = InterventionType.caregiverSupport;
        break;
      case 'financial_assistance':
        typeEnum = InterventionType.financialAssistance;
        break;
      default:
        typeEnum = InterventionType.reminder;
    }

    InterventionStatus statusEnum;
    switch (status.toLowerCase()) {
      case 'recommended':
        statusEnum = InterventionStatus.recommended;
        break;
      case 'scheduled':
        statusEnum = InterventionStatus.scheduled;
        break;
      case 'in_progress':
        statusEnum = InterventionStatus.inProgress;
        break;
      case 'completed':
        statusEnum = InterventionStatus.completed;
        break;
      default:
        statusEnum = InterventionStatus.recommended;
    }

    return InterventionEntity(
      id: id,
      type: typeEnum,
      interventionName: interventionName,
      patientId: patientId,
      patientName: patientName,
      description: description,
      expectedOutcome: expectedOutcome,
      status: statusEnum,
      createdAt: createdAt,
      scheduledFor: scheduledFor,
      completedAt: completedAt,
      assignedTo: assignedTo,
      outcome: outcome,
    );
  }
}
