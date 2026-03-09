import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/risk_assessment_entity.dart';
import '../../domain/entities/cohort_entity.dart';

part 'risk_assessment_model.freezed.dart';
part 'risk_assessment_model.g.dart';

@freezed
abstract class RiskAssessmentModel with _$RiskAssessmentModel {
  const RiskAssessmentModel._();

  const factory RiskAssessmentModel({
    required String id,
    required String patientName,
    required String patientId,
    required String cohortType,
    required String riskLevel,
    required double riskScore,
    required List<RiskFactorModel> riskFactors,
    required DateTime lastAssessment,
    required DateTime nextAssessment,
    required String assessedBy,
  }) = _RiskAssessmentModel;

  factory RiskAssessmentModel.fromJson(Map<String, dynamic> json) =>
      _$RiskAssessmentModelFromJson(json);

  RiskAssessmentEntity toEntity() {
    CohortType cohortEnum;
    switch (cohortType.toLowerCase()) {
      case 'elderly':
        cohortEnum = CohortType.elderly;
        break;
      case 'pregnancy':
        cohortEnum = CohortType.pregnancy;
        break;
      case 'infant_toddler':
        cohortEnum = CohortType.infantToddler;
        break;
      case 'accident_recovery':
        cohortEnum = CohortType.accidentRecovery;
        break;
      case 'terminal_illness':
        cohortEnum = CohortType.terminalIllness;
        break;
      default:
        cohortEnum = CohortType.elderly;
    }

    RiskLevel levelEnum;
    switch (riskLevel.toLowerCase()) {
      case 'low':
        levelEnum = RiskLevel.low;
        break;
      case 'moderate':
        levelEnum = RiskLevel.moderate;
        break;
      case 'high':
        levelEnum = RiskLevel.high;
        break;
      case 'critical':
        levelEnum = RiskLevel.critical;
        break;
      default:
        levelEnum = RiskLevel.moderate;
    }

    return RiskAssessmentEntity(
      id: id,
      patientName: patientName,
      patientId: patientId,
      cohortType: cohortEnum,
      riskLevel: levelEnum,
      riskScore: riskScore,
      riskFactors: riskFactors.map((f) => f.toEntity()).toList(),
      lastAssessment: lastAssessment,
      nextAssessment: nextAssessment,
      assessedBy: assessedBy,
    );
  }
}

@freezed
abstract class RiskFactorModel with _$RiskFactorModel {
  const RiskFactorModel._();

  const factory RiskFactorModel({
    required String factor,
    required int score,
    required String description,
  }) = _RiskFactorModel;

  factory RiskFactorModel.fromJson(Map<String, dynamic> json) =>
      _$RiskFactorModelFromJson(json);

  RiskFactor toEntity() =>
      RiskFactor(factor: factor, score: score, description: description);
}
