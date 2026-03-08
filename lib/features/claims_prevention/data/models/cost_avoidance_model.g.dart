// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cost_avoidance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CostAvoidanceModel _$CostAvoidanceModelFromJson(Map<String, dynamic> json) =>
    _CostAvoidanceModel(
      period: json['period'] as String,
      predictedClaims: (json['predictedClaims'] as num).toDouble(),
      actualClaims: (json['actualClaims'] as num).toDouble(),
      avoidedClaims: (json['avoidedClaims'] as num).toDouble(),
      platformCost: (json['platformCost'] as num).toDouble(),
      netSavings: (json['netSavings'] as num).toDouble(),
      roi: (json['roi'] as num).toDouble(),
      interventionsPerformed: (json['interventionsPerformed'] as num).toInt(),
      patientsImpacted: (json['patientsImpacted'] as num).toInt(),
    );

Map<String, dynamic> _$CostAvoidanceModelToJson(_CostAvoidanceModel instance) =>
    <String, dynamic>{
      'period': instance.period,
      'predictedClaims': instance.predictedClaims,
      'actualClaims': instance.actualClaims,
      'avoidedClaims': instance.avoidedClaims,
      'platformCost': instance.platformCost,
      'netSavings': instance.netSavings,
      'roi': instance.roi,
      'interventionsPerformed': instance.interventionsPerformed,
      'patientsImpacted': instance.patientsImpacted,
    };
