// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'risk_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RiskProfileModel _$RiskProfileModelFromJson(Map<String, dynamic> json) =>
    _RiskProfileModel(
      id: json['id'] as String,
      patientId: json['patientId'] as String,
      patientName: json['patientName'] as String,
      patientAge: (json['patientAge'] as num).toInt(),
      gender: json['gender'] as String,
      riskScore: (json['riskScore'] as num).toDouble(),
      riskLevel: json['riskLevel'] as String,
      riskFactors: (json['riskFactors'] as List<dynamic>)
          .map((e) => RiskFactorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendedInterventions:
          (json['recommendedInterventions'] as List<dynamic>)
              .map((e) => InterventionModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      hospitalizationProbability: (json['hospitalizationProbability'] as num)
          .toDouble(),
      emergencyVisitProbability: (json['emergencyVisitProbability'] as num)
          .toDouble(),
      estimatedAnnualCost: (json['estimatedAnnualCost'] as num).toDouble(),
      potentialSavings: (json['potentialSavings'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      primaryCondition: json['primaryCondition'] as String?,
      comorbidities: (json['comorbidities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$RiskProfileModelToJson(_RiskProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patientId': instance.patientId,
      'patientName': instance.patientName,
      'patientAge': instance.patientAge,
      'gender': instance.gender,
      'riskScore': instance.riskScore,
      'riskLevel': instance.riskLevel,
      'riskFactors': instance.riskFactors,
      'recommendedInterventions': instance.recommendedInterventions,
      'hospitalizationProbability': instance.hospitalizationProbability,
      'emergencyVisitProbability': instance.emergencyVisitProbability,
      'estimatedAnnualCost': instance.estimatedAnnualCost,
      'potentialSavings': instance.potentialSavings,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'primaryCondition': instance.primaryCondition,
      'comorbidities': instance.comorbidities,
    };
