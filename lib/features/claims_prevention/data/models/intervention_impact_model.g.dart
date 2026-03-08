// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intervention_impact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InterventionImpactModel _$InterventionImpactModelFromJson(
  Map<String, dynamic> json,
) => _InterventionImpactModel(
  id: json['id'] as String,
  category: json['category'] as String,
  name: json['name'] as String,
  totalInterventions: (json['totalInterventions'] as num).toInt(),
  successfulOutcomes: (json['successfulOutcomes'] as num).toInt(),
  successRate: (json['successRate'] as num).toDouble(),
  avgCostPerIntervention: (json['avgCostPerIntervention'] as num).toDouble(),
  avgSavingsPerSuccess: (json['avgSavingsPerSuccess'] as num).toDouble(),
  totalSavings: (json['totalSavings'] as num).toDouble(),
  roi: (json['roi'] as num).toDouble(),
);

Map<String, dynamic> _$InterventionImpactModelToJson(
  _InterventionImpactModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'category': instance.category,
  'name': instance.name,
  'totalInterventions': instance.totalInterventions,
  'successfulOutcomes': instance.successfulOutcomes,
  'successRate': instance.successRate,
  'avgCostPerIntervention': instance.avgCostPerIntervention,
  'avgSavingsPerSuccess': instance.avgSavingsPerSuccess,
  'totalSavings': instance.totalSavings,
  'roi': instance.roi,
};
