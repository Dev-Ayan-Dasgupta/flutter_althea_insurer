// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adherence_cohort_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdherenceCohortModel _$AdherenceCohortModelFromJson(
  Map<String, dynamic> json,
) => _AdherenceCohortModel(
  id: json['id'] as String,
  cohortName: json['cohortName'] as String,
  diseaseType: json['diseaseType'] as String,
  totalPatients: (json['totalPatients'] as num).toInt(),
  excellentAdherence: (json['excellentAdherence'] as num).toInt(),
  goodAdherence: (json['goodAdherence'] as num).toInt(),
  fairAdherence: (json['fairAdherence'] as num).toInt(),
  poorAdherence: (json['poorAdherence'] as num).toInt(),
  avgAdherenceRate: (json['avgAdherenceRate'] as num).toDouble(),
  hospitalizationRate: (json['hospitalizationRate'] as num).toDouble(),
  costPerPatient: (json['costPerPatient'] as num).toDouble(),
  interventionsActive: (json['interventionsActive'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$AdherenceCohortModelToJson(
  _AdherenceCohortModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'cohortName': instance.cohortName,
  'diseaseType': instance.diseaseType,
  'totalPatients': instance.totalPatients,
  'excellentAdherence': instance.excellentAdherence,
  'goodAdherence': instance.goodAdherence,
  'fairAdherence': instance.fairAdherence,
  'poorAdherence': instance.poorAdherence,
  'avgAdherenceRate': instance.avgAdherenceRate,
  'hospitalizationRate': instance.hospitalizationRate,
  'costPerPatient': instance.costPerPatient,
  'interventionsActive': instance.interventionsActive,
};
