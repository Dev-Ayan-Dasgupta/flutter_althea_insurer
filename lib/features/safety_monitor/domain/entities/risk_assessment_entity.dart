import 'package:freezed_annotation/freezed_annotation.dart';

import 'cohort_entity.dart';

part 'risk_assessment_entity.freezed.dart';

@freezed
abstract class RiskAssessmentEntity with _$RiskAssessmentEntity {
  const factory RiskAssessmentEntity({
    required String id,
    required String patientName,
    required String patientId,
    required CohortType cohortType,
    required RiskLevel riskLevel,
    required double riskScore,
    required List<RiskFactor> riskFactors,
    required DateTime lastAssessment,
    required DateTime nextAssessment,
    required String assessedBy,
  }) = _RiskAssessmentEntity;
}

@freezed
abstract class RiskFactor with _$RiskFactor {
  const factory RiskFactor({
    required String factor,
    required int score,
    required String description,
  }) = _RiskFactor;
}
