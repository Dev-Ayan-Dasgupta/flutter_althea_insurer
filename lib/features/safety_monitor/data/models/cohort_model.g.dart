// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cohort_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CohortModel _$CohortModelFromJson(Map<String, dynamic> json) => _CohortModel(
  id: json['id'] as String,
  cohortType: json['cohortType'] as String,
  cohortName: json['cohortName'] as String,
  description: json['description'] as String,
  totalPatients: (json['totalPatients'] as num).toInt(),
  lowRisk: (json['lowRisk'] as num).toInt(),
  moderateRisk: (json['moderateRisk'] as num).toInt(),
  highRisk: (json['highRisk'] as num).toInt(),
  criticalRisk: (json['criticalRisk'] as num).toInt(),
  activeAlerts: (json['activeAlerts'] as num).toInt(),
  incidentsThisMonth: (json['incidentsThisMonth'] as num).toInt(),
  incidentsLastMonth: (json['incidentsLastMonth'] as num).toInt(),
  incidentChangePercentage: (json['incidentChangePercentage'] as num)
      .toDouble(),
  avgRiskScore: (json['avgRiskScore'] as num).toDouble(),
  preventiveActionsActive: (json['preventiveActionsActive'] as num).toInt(),
  topRiskFactors: (json['topRiskFactors'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  costImpact: (json['costImpact'] as num).toDouble(),
);

Map<String, dynamic> _$CohortModelToJson(_CohortModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cohortType': instance.cohortType,
      'cohortName': instance.cohortName,
      'description': instance.description,
      'totalPatients': instance.totalPatients,
      'lowRisk': instance.lowRisk,
      'moderateRisk': instance.moderateRisk,
      'highRisk': instance.highRisk,
      'criticalRisk': instance.criticalRisk,
      'activeAlerts': instance.activeAlerts,
      'incidentsThisMonth': instance.incidentsThisMonth,
      'incidentsLastMonth': instance.incidentsLastMonth,
      'incidentChangePercentage': instance.incidentChangePercentage,
      'avgRiskScore': instance.avgRiskScore,
      'preventiveActionsActive': instance.preventiveActionsActive,
      'topRiskFactors': instance.topRiskFactors,
      'costImpact': instance.costImpact,
    };
