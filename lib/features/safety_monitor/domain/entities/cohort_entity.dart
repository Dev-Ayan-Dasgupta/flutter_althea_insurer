import 'package:freezed_annotation/freezed_annotation.dart';

part 'cohort_entity.freezed.dart';

enum CohortType {
  elderly,
  pregnancy,
  infantToddler,
  accidentRecovery,
  terminalIllness,
}

enum RiskLevel { low, moderate, high, critical }

@freezed
abstract class CohortEntity with _$CohortEntity {
  const factory CohortEntity({
    required String id,
    required CohortType cohortType,
    required String cohortName,
    required String description,
    required int totalPatients,
    required int lowRisk,
    required int moderateRisk,
    required int highRisk,
    required int criticalRisk,
    required int activeAlerts,
    required int incidentsThisMonth,
    required int incidentsLastMonth,
    required double incidentChangePercentage,
    required double avgRiskScore,
    required int preventiveActionsActive,
    required List<String> topRiskFactors,
    required double costImpact,
  }) = _CohortEntity;
}
