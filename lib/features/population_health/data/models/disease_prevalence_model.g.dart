// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease_prevalence_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiseasePrevalenceModel _$DiseasePrevalenceModelFromJson(
  Map<String, dynamic> json,
) => _DiseasePrevalenceModel(
  id: json['id'] as String,
  category: json['category'] as String,
  diseaseName: json['diseaseName'] as String,
  totalCases: (json['totalCases'] as num).toInt(),
  newCasesThisQuarter: (json['newCasesThisQuarter'] as num).toInt(),
  prevalenceRate: (json['prevalenceRate'] as num).toDouble(),
  changeFromLastQuarter: (json['changeFromLastQuarter'] as num).toDouble(),
  criticalCases: (json['criticalCases'] as num).toInt(),
  moderateCases: (json['moderateCases'] as num).toInt(),
  mildCases: (json['mildCases'] as num).toInt(),
  avgAge: (json['avgAge'] as num).toDouble(),
  mostAffectedZone: json['mostAffectedZone'] as String,
  costImpact: (json['costImpact'] as num).toDouble(),
);

Map<String, dynamic> _$DiseasePrevalenceModelToJson(
  _DiseasePrevalenceModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'category': instance.category,
  'diseaseName': instance.diseaseName,
  'totalCases': instance.totalCases,
  'newCasesThisQuarter': instance.newCasesThisQuarter,
  'prevalenceRate': instance.prevalenceRate,
  'changeFromLastQuarter': instance.changeFromLastQuarter,
  'criticalCases': instance.criticalCases,
  'moderateCases': instance.moderateCases,
  'mildCases': instance.mildCases,
  'avgAge': instance.avgAge,
  'mostAffectedZone': instance.mostAffectedZone,
  'costImpact': instance.costImpact,
};
