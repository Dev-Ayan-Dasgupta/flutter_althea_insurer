import 'package:freezed_annotation/freezed_annotation.dart';

part 'claim_verification_entity.freezed.dart';

enum VerificationStatus {
  pending,
  inProgress,
  verified,
  rejected,
  needsMoreInfo,
}

enum VerificationCheck {
  documentVerification,
  serviceValidation,
  priceValidation,
  providerValidation,
  patientValidation,
  medicalNecessity,
}

@freezed
abstract class ClaimVerificationEntity with _$ClaimVerificationEntity {
  const factory ClaimVerificationEntity({
    required String id,
    required String claimId,
    required String patientName,
    required String providerName,
    required double claimAmount,
    required DateTime claimDate,
    required VerificationStatus status,
    required List<VerificationCheck> checksCompleted,
    required List<VerificationCheck> checksPending,
    required int totalChecks,
    required int passedChecks,
    required int failedChecks,
    required double verificationScore,
    required List<String> redFlags,
    required List<String> verifiedDocuments,
    String? assignedVerifier,
    DateTime? completedAt,
    String? recommendation,
  }) = _ClaimVerificationEntity;
}
