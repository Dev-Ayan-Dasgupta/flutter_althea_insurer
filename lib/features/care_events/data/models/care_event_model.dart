import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/care_event_entity.dart';
import 'verification_status_model.dart';

part 'care_event_model.freezed.dart';
part 'care_event_model.g.dart';

@freezed
abstract class CareEventModel with _$CareEventModel {
  const CareEventModel._();

  const factory CareEventModel({
    required String id,
    required String patientId,
    required String patientName,
    required String caregiverId,
    required String caregiverName,
    required String eventType,
    required String description,
    required DateTime scheduledAt,
    DateTime? completedAt,
    required VerificationStatusModel verificationStatus,
    double? latitude,
    double? longitude,
    required int duration,
    String? notes,
    List<String>? attachments,
    required double claimAmount,
    required DateTime createdAt,
  }) = _CareEventModel;

  factory CareEventModel.fromJson(Map<String, dynamic> json) =>
      _$CareEventModelFromJson(json);

  CareEventEntity toEntity() {
    CareEventType eventTypeEnum;
    switch (eventType.toLowerCase().replaceAll(' ', '_')) {
      case 'nurse_visit':
        eventTypeEnum = CareEventType.nurseVisit;
        break;
      case 'medication_delivery':
        eventTypeEnum = CareEventType.medicationDelivery;
        break;
      case 'diagnostic_test':
        eventTypeEnum = CareEventType.diagnosticTest;
        break;
      case 'physiotherapy':
        eventTypeEnum = CareEventType.physiotherapy;
        break;
      case 'wound_care':
        eventTypeEnum = CareEventType.woundCare;
        break;
      case 'vital_check':
        eventTypeEnum = CareEventType.vitalCheck;
        break;
      default:
        eventTypeEnum = CareEventType.nurseVisit;
    }

    return CareEventEntity(
      id: id,
      patientId: patientId,
      patientName: patientName,
      caregiverId: caregiverId,
      caregiverName: caregiverName,
      eventType: eventTypeEnum,
      description: description,
      scheduledAt: scheduledAt,
      completedAt: completedAt,
      verificationStatus: verificationStatus.toEntity(),
      latitude: latitude,
      longitude: longitude,
      duration: duration,
      notes: notes,
      attachments: attachments,
      claimAmount: claimAmount,
      createdAt: createdAt,
    );
  }
}
