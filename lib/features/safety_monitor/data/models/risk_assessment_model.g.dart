// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'risk_assessment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RiskAssessmentModel _$RiskAssessmentModelFromJson(Map<String, dynamic> json) =>
    _RiskAssessmentModel(
      id: json['id'] as String,
      patientName: json['patientName'] as String,
      patientId: json['patientId'] as String,
      cohortType: json['cohortType'] as String,
      riskLevel: json['riskLevel'] as String,
      riskScore: (json['riskScore'] as num).toDouble(),
      riskFactors: (json['riskFactors'] as List<dynamic>)
          .map((e) => RiskFactorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastAssessment: DateTime.parse(json['lastAssessment'] as String),
      nextAssessment: DateTime.parse(json['nextAssessment'] as String),
      assessedBy: json['assessedBy'] as String,
    );

Map<String, dynamic> _$RiskAssessmentModelToJson(
  _RiskAssessmentModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'patientName': instance.patientName,
  'patientId': instance.patientId,
  'cohortType': instance.cohortType,
  'riskLevel': instance.riskLevel,
  'riskScore': instance.riskScore,
  'riskFactors': instance.riskFactors,
  'lastAssessment': instance.lastAssessment.toIso8601String(),
  'nextAssessment': instance.nextAssessment.toIso8601String(),
  'assessedBy': instance.assessedBy,
};

_RiskFactorModel _$RiskFactorModelFromJson(Map<String, dynamic> json) =>
    _RiskFactorModel(
      factor: json['factor'] as String,
      score: (json['score'] as num).toInt(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$RiskFactorModelToJson(_RiskFactorModel instance) =>
    <String, dynamic>{
      'factor': instance.factor,
      'score': instance.score,
      'description': instance.description,
    };
