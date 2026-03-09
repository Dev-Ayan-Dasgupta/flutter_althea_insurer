import 'package:freezed_annotation/freezed_annotation.dart';

part 'fraud_alert_entity.freezed.dart';

enum FraudAlertSeverity { low, medium, high, critical }

enum FraudType {
  duplicateClaim,
  inflatedBilling,
  serviceMismatch,
  identityFraud,
  providerCollusion,
  unnecessaryServices,
  billingManipulation,
  locationAnomaly,
}

enum AlertStatus { pending, investigating, confirmed, dismissed }

@freezed
abstract class FraudAlertEntity with _$FraudAlertEntity {
  const factory FraudAlertEntity({
    required String id,
    required FraudType fraudType,
    required FraudAlertSeverity severity,
    required AlertStatus status,
    required String claimId,
    required String patientName,
    required String providerId,
    required String providerName,
    required double claimAmount,
    required double fraudProbability,
    required int riskScore,
    required String detectionReason,
    required List<String> anomalies,
    required DateTime detectedAt,
    String? investigatorAssigned,
    DateTime? investigationStarted,
    String? resolutionNotes,
  }) = _FraudAlertEntity;
}
