// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronic_disease_cohort_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChronicDiseaseCohortModel _$ChronicDiseaseCohortModelFromJson(
  Map<String, dynamic> json,
) => _ChronicDiseaseCohortModel(
  id: json['id'] as String,
  diseaseType: json['diseaseType'] as String,
  diseaseName: json['diseaseName'] as String,
  totalPatients: (json['totalPatients'] as num).toInt(),
  wellControlled: (json['wellControlled'] as num).toInt(),
  moderateControl: (json['moderateControl'] as num).toInt(),
  poorControl: (json['poorControl'] as num).toInt(),
  avgRiskScore: (json['avgRiskScore'] as num).toDouble(),
  hospitalizationRate: (json['hospitalizationRate'] as num).toDouble(),
  adherenceRate: (json['adherenceRate'] as num).toDouble(),
  riskTrend: (json['riskTrend'] as List<dynamic>)
      .map((e) => TrendDataPointModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  interventionsActive: (json['interventionsActive'] as num).toInt(),
  interventionSuccessRate: (json['interventionSuccessRate'] as num).toDouble(),
);

Map<String, dynamic> _$ChronicDiseaseCohortModelToJson(
  _ChronicDiseaseCohortModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'diseaseType': instance.diseaseType,
  'diseaseName': instance.diseaseName,
  'totalPatients': instance.totalPatients,
  'wellControlled': instance.wellControlled,
  'moderateControl': instance.moderateControl,
  'poorControl': instance.poorControl,
  'avgRiskScore': instance.avgRiskScore,
  'hospitalizationRate': instance.hospitalizationRate,
  'adherenceRate': instance.adherenceRate,
  'riskTrend': instance.riskTrend,
  'interventionsActive': instance.interventionsActive,
  'interventionSuccessRate': instance.interventionSuccessRate,
};

_TrendDataPointModel _$TrendDataPointModelFromJson(Map<String, dynamic> json) =>
    _TrendDataPointModel(
      date: DateTime.parse(json['date'] as String),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$TrendDataPointModelToJson(
  _TrendDataPointModel instance,
) => <String, dynamic>{
  'date': instance.date.toIso8601String(),
  'value': instance.value,
};
