import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/cohort_entity.dart';

part 'cohort_model.freezed.dart';
part 'cohort_model.g.dart';

@freezed
abstract class CohortModel with _$CohortModel {
  const CohortModel._();

  const factory CohortModel({
    required String id,
    required String cohortType,
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
  }) = _CohortModel;

  factory CohortModel.fromJson(Map<String, dynamic> json) =>
      _$CohortModelFromJson(json);

  CohortEntity toEntity() {
    CohortType typeEnum;
    switch (cohortType.toLowerCase()) {
      case 'elderly':
        typeEnum = CohortType.elderly;
        break;
      case 'pregnancy':
        typeEnum = CohortType.pregnancy;
        break;
      case 'infant_toddler':
        typeEnum = CohortType.infantToddler;
        break;
      case 'accident_recovery':
        typeEnum = CohortType.accidentRecovery;
        break;
      case 'terminal_illness':
        typeEnum = CohortType.terminalIllness;
        break;
      default:
        typeEnum = CohortType.elderly;
    }

    return CohortEntity(
      id: id,
      cohortType: typeEnum,
      cohortName: cohortName,
      description: description,
      totalPatients: totalPatients,
      lowRisk: lowRisk,
      moderateRisk: moderateRisk,
      highRisk: highRisk,
      criticalRisk: criticalRisk,
      activeAlerts: activeAlerts,
      incidentsThisMonth: incidentsThisMonth,
      incidentsLastMonth: incidentsLastMonth,
      incidentChangePercentage: incidentChangePercentage,
      avgRiskScore: avgRiskScore,
      preventiveActionsActive: preventiveActionsActive,
      topRiskFactors: topRiskFactors,
      costImpact: costImpact,
    );
  }
}
