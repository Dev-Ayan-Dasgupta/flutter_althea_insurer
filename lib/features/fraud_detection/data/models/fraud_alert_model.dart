import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/fraud_alert_entity.dart';

part 'fraud_alert_model.freezed.dart';
part 'fraud_alert_model.g.dart';

@freezed
abstract class FraudAlertModel with _$FraudAlertModel {
  const FraudAlertModel._();

  const factory FraudAlertModel({
    required String id,
    required String fraudType,
    required String severity,
    required String status,
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
  }) = _FraudAlertModel;

  factory FraudAlertModel.fromJson(Map<String, dynamic> json) =>
      _$FraudAlertModelFromJson(json);

  FraudAlertEntity toEntity() {
    FraudType typeEnum;
    switch (fraudType.toLowerCase()) {
      case 'duplicate_claim':
        typeEnum = FraudType.duplicateClaim;
        break;
      case 'inflated_billing':
        typeEnum = FraudType.inflatedBilling;
        break;
      case 'service_mismatch':
        typeEnum = FraudType.serviceMismatch;
        break;
      case 'identity_fraud':
        typeEnum = FraudType.identityFraud;
        break;
      case 'provider_collusion':
        typeEnum = FraudType.providerCollusion;
        break;
      case 'unnecessary_services':
        typeEnum = FraudType.unnecessaryServices;
        break;
      case 'billing_manipulation':
        typeEnum = FraudType.billingManipulation;
        break;
      case 'location_anomaly':
        typeEnum = FraudType.locationAnomaly;
        break;
      default:
        typeEnum = FraudType.duplicateClaim;
    }

    FraudAlertSeverity severityEnum;
    switch (severity.toLowerCase()) {
      case 'low':
        severityEnum = FraudAlertSeverity.low;
        break;
      case 'medium':
        severityEnum = FraudAlertSeverity.medium;
        break;
      case 'high':
        severityEnum = FraudAlertSeverity.high;
        break;
      case 'critical':
        severityEnum = FraudAlertSeverity.critical;
        break;
      default:
        severityEnum = FraudAlertSeverity.medium;
    }

    AlertStatus statusEnum;
    switch (status.toLowerCase()) {
      case 'pending':
        statusEnum = AlertStatus.pending;
        break;
      case 'investigating':
        statusEnum = AlertStatus.investigating;
        break;
      case 'confirmed':
        statusEnum = AlertStatus.confirmed;
        break;
      case 'dismissed':
        statusEnum = AlertStatus.dismissed;
        break;
      default:
        statusEnum = AlertStatus.pending;
    }

    return FraudAlertEntity(
      id: id,
      fraudType: typeEnum,
      severity: severityEnum,
      status: statusEnum,
      claimId: claimId,
      patientName: patientName,
      providerId: providerId,
      providerName: providerName,
      claimAmount: claimAmount,
      fraudProbability: fraudProbability,
      riskScore: riskScore,
      detectionReason: detectionReason,
      anomalies: anomalies,
      detectedAt: detectedAt,
      investigatorAssigned: investigatorAssigned,
      investigationStarted: investigationStarted,
      resolutionNotes: resolutionNotes,
    );
  }
}
