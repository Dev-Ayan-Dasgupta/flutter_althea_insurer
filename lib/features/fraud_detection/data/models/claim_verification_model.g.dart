// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_verification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClaimVerificationModel _$ClaimVerificationModelFromJson(
  Map<String, dynamic> json,
) => _ClaimVerificationModel(
  id: json['id'] as String,
  claimId: json['claimId'] as String,
  patientName: json['patientName'] as String,
  providerName: json['providerName'] as String,
  claimAmount: (json['claimAmount'] as num).toDouble(),
  claimDate: DateTime.parse(json['claimDate'] as String),
  status: json['status'] as String,
  checksCompleted: (json['checksCompleted'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  checksPending: (json['checksPending'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  totalChecks: (json['totalChecks'] as num).toInt(),
  passedChecks: (json['passedChecks'] as num).toInt(),
  failedChecks: (json['failedChecks'] as num).toInt(),
  verificationScore: (json['verificationScore'] as num).toDouble(),
  redFlags: (json['redFlags'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  verifiedDocuments: (json['verifiedDocuments'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  assignedVerifier: json['assignedVerifier'] as String?,
  completedAt: json['completedAt'] == null
      ? null
      : DateTime.parse(json['completedAt'] as String),
  recommendation: json['recommendation'] as String?,
);

Map<String, dynamic> _$ClaimVerificationModelToJson(
  _ClaimVerificationModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'claimId': instance.claimId,
  'patientName': instance.patientName,
  'providerName': instance.providerName,
  'claimAmount': instance.claimAmount,
  'claimDate': instance.claimDate.toIso8601String(),
  'status': instance.status,
  'checksCompleted': instance.checksCompleted,
  'checksPending': instance.checksPending,
  'totalChecks': instance.totalChecks,
  'passedChecks': instance.passedChecks,
  'failedChecks': instance.failedChecks,
  'verificationScore': instance.verificationScore,
  'redFlags': instance.redFlags,
  'verifiedDocuments': instance.verifiedDocuments,
  'assignedVerifier': instance.assignedVerifier,
  'completedAt': instance.completedAt?.toIso8601String(),
  'recommendation': instance.recommendation,
};
