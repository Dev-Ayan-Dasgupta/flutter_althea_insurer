import 'package:freezed_annotation/freezed_annotation.dart';
import 'verification_status_entity.dart';

part 'care_event_entity.freezed.dart';

enum CareEventType {
  nurseVisit,
  medicationDelivery,
  diagnosticTest,
  physiotherapy,
  woundCare,
  vitalCheck,
}

@freezed
abstract class CareEventEntity with _$CareEventEntity {
  const factory CareEventEntity({
    required String id,
    required String patientId,
    required String patientName,
    required String caregiverId,
    required String caregiverName,
    required CareEventType eventType,
    required String description,
    required DateTime scheduledAt,
    required DateTime? completedAt,
    required VerificationStatusEntity verificationStatus,
    required double? latitude,
    required double? longitude,
    required int duration,
    String? notes,
    List<String>? attachments,
    required double claimAmount,
    required DateTime createdAt,
  }) = _CareEventEntity;
}
