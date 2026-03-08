import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/risk_profile_entity.dart';
import 'risk_factor_model.dart';
import 'intervention_model.dart';

part 'risk_profile_model.freezed.dart';
part 'risk_profile_model.g.dart';

@freezed
abstract class RiskProfileModel with _$RiskProfileModel {
  const RiskProfileModel._();

  const factory RiskProfileModel({
    required String id,
    required String patientId,
    required String patientName,
    required int patientAge,
    required String gender,
    required double riskScore,
    required String riskLevel,
    required List<RiskFactorModel> riskFactors,
    required List<InterventionModel> recommendedInterventions,
    required double hospitalizationProbability,
    required double emergencyVisitProbability,
    required double estimatedAnnualCost,
    required double potentialSavings,
    required DateTime lastUpdated,
    String? primaryCondition,
    List<String>? comorbidities,
  }) = _RiskProfileModel;

  factory RiskProfileModel.fromJson(Map<String, dynamic> json) =>
      _$RiskProfileModelFromJson(json);

  RiskProfileEntity toEntity() {
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

    return RiskProfileEntity(
      id: id,
      patientId: patientId,
      patientName: patientName,
      patientAge: patientAge,
      gender: gender,
      riskScore: riskScore,
      riskLevel: levelEnum,
      riskFactors: riskFactors.map((f) => f.toEntity()).toList(),
      recommendedInterventions: recommendedInterventions
          .map((i) => i.toEntity())
          .toList(),
      hospitalizationProbability: hospitalizationProbability,
      emergencyVisitProbability: emergencyVisitProbability,
      estimatedAnnualCost: estimatedAnnualCost,
      potentialSavings: potentialSavings,
      lastUpdated: lastUpdated,
      primaryCondition: primaryCondition,
      comorbidities: comorbidities,
    );
  }
}
