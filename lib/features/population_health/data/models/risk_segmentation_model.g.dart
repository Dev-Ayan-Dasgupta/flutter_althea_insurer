// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'risk_segmentation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RiskSegmentationModel _$RiskSegmentationModelFromJson(
  Map<String, dynamic> json,
) => _RiskSegmentationModel(
  id: json['id'] as String,
  segmentName: json['segmentName'] as String,
  population: (json['population'] as num).toInt(),
  populationPercentage: (json['populationPercentage'] as num).toDouble(),
  riskLevel: json['riskLevel'] as String,
  avgRiskScore: (json['avgRiskScore'] as num).toDouble(),
  estimatedAnnualCost: (json['estimatedAnnualCost'] as num).toDouble(),
  potentialSavings: (json['potentialSavings'] as num).toDouble(),
  activeInterventions: (json['activeInterventions'] as num).toInt(),
  topConditions: (json['topConditions'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  recommendedAction: json['recommendedAction'] as String,
);

Map<String, dynamic> _$RiskSegmentationModelToJson(
  _RiskSegmentationModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'segmentName': instance.segmentName,
  'population': instance.population,
  'populationPercentage': instance.populationPercentage,
  'riskLevel': instance.riskLevel,
  'avgRiskScore': instance.avgRiskScore,
  'estimatedAnnualCost': instance.estimatedAnnualCost,
  'potentialSavings': instance.potentialSavings,
  'activeInterventions': instance.activeInterventions,
  'topConditions': instance.topConditions,
  'recommendedAction': instance.recommendedAction,
};
