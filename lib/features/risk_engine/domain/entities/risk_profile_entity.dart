import 'package:freezed_annotation/freezed_annotation.dart';
import 'risk_factor_entity.dart';
import 'intervention_entity.dart';

part 'risk_profile_entity.freezed.dart';

enum RiskLevel { low, moderate, high, critical }

@freezed
abstract class RiskProfileEntity with _$RiskProfileEntity {
  const factory RiskProfileEntity({
    required String id,
    required String patientId,
    required String patientName,
    required int patientAge,
    required String gender,
    required double riskScore,
    required RiskLevel riskLevel,
    required List<RiskFactorEntity> riskFactors,
    required List<InterventionEntity> recommendedInterventions,
    required double hospitalizationProbability,
    required double emergencyVisitProbability,
    required double estimatedAnnualCost,
    required double potentialSavings,
    required DateTime lastUpdated,
    String? primaryCondition,
    List<String>? comorbidities,
  }) = _RiskProfileEntity;
}
