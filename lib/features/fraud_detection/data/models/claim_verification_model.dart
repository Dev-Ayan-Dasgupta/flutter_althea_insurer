import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/claim_verification_entity.dart';

part 'claim_verification_model.freezed.dart';
part 'claim_verification_model.g.dart';

@freezed
abstract class ClaimVerificationModel with _$ClaimVerificationModel {
  const ClaimVerificationModel._();

  const factory ClaimVerificationModel({
    required String id,
    required String claimId,
    required String patientName,
    required String providerName,
    required double claimAmount,
    required DateTime claimDate,
    required String status,
    required List<String> checksCompleted,
    required List<String> checksPending,
    required int totalChecks,
    required int passedChecks,
    required int failedChecks,
    required double verificationScore,
    required List<String> redFlags,
    required List<String> verifiedDocuments,
    String? assignedVerifier,
    DateTime? completedAt,
    String? recommendation,
  }) = _ClaimVerificationModel;

  factory ClaimVerificationModel.fromJson(Map<String, dynamic> json) =>
      _$ClaimVerificationModelFromJson(json);

  ClaimVerificationEntity toEntity() {
    VerificationStatus statusEnum;
    switch (status.toLowerCase()) {
      case 'pending':
        statusEnum = VerificationStatus.pending;
        break;
      case 'in_progress':
        statusEnum = VerificationStatus.inProgress;
        break;
      case 'verified':
        statusEnum = VerificationStatus.verified;
        break;
      case 'rejected':
        statusEnum = VerificationStatus.rejected;
        break;
      case 'needs_more_info':
        statusEnum = VerificationStatus.needsMoreInfo;
        break;
      default:
        statusEnum = VerificationStatus.pending;
    }

    List<VerificationCheck> _parseChecks(List<String> checks) {
      return checks.map((check) {
        switch (check.toLowerCase()) {
          case 'document_verification':
            return VerificationCheck.documentVerification;
          case 'service_validation':
            return VerificationCheck.serviceValidation;
          case 'price_validation':
            return VerificationCheck.priceValidation;
          case 'provider_validation':
            return VerificationCheck.providerValidation;
          case 'patient_validation':
            return VerificationCheck.patientValidation;
          case 'medical_necessity':
            return VerificationCheck.medicalNecessity;
          default:
            return VerificationCheck.documentVerification;
        }
      }).toList();
    }

    return ClaimVerificationEntity(
      id: id,
      claimId: claimId,
      patientName: patientName,
      providerName: providerName,
      claimAmount: claimAmount,
      claimDate: claimDate,
      status: statusEnum,
      checksCompleted: _parseChecks(checksCompleted),
      checksPending: _parseChecks(checksPending),
      totalChecks: totalChecks,
      passedChecks: passedChecks,
      failedChecks: failedChecks,
      verificationScore: verificationScore,
      redFlags: redFlags,
      verifiedDocuments: verifiedDocuments,
      assignedVerifier: assignedVerifier,
      completedAt: completedAt,
      recommendation: recommendation,
    );
  }
}
