// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_adherence_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatientAdherenceModel _$PatientAdherenceModelFromJson(
  Map<String, dynamic> json,
) => _PatientAdherenceModel(
  id: json['id'] as String,
  patientName: json['patientName'] as String,
  age: (json['age'] as num).toInt(),
  gender: json['gender'] as String,
  condition: json['condition'] as String,
  totalMedications: (json['totalMedications'] as num).toInt(),
  activeMedications: (json['activeMedications'] as num).toInt(),
  adherenceRate: (json['adherenceRate'] as num).toDouble(),
  adherenceLevel: json['adherenceLevel'] as String,
  dosesScheduled: (json['dosesScheduled'] as num).toInt(),
  dosesTaken: (json['dosesTaken'] as num).toInt(),
  dosesMissed: (json['dosesMissed'] as num).toInt(),
  dosesDelayed: (json['dosesDelayed'] as num).toInt(),
  lastDoseTime: DateTime.parse(json['lastDoseTime'] as String),
  nextDoseTime: DateTime.parse(json['nextDoseTime'] as String),
  consecutiveMissedDoses: (json['consecutiveMissedDoses'] as num).toInt(),
  requiresIntervention: json['requiresIntervention'] as bool,
  riskFactors: (json['riskFactors'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$PatientAdherenceModelToJson(
  _PatientAdherenceModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'patientName': instance.patientName,
  'age': instance.age,
  'gender': instance.gender,
  'condition': instance.condition,
  'totalMedications': instance.totalMedications,
  'activeMedications': instance.activeMedications,
  'adherenceRate': instance.adherenceRate,
  'adherenceLevel': instance.adherenceLevel,
  'dosesScheduled': instance.dosesScheduled,
  'dosesTaken': instance.dosesTaken,
  'dosesMissed': instance.dosesMissed,
  'dosesDelayed': instance.dosesDelayed,
  'lastDoseTime': instance.lastDoseTime.toIso8601String(),
  'nextDoseTime': instance.nextDoseTime.toIso8601String(),
  'consecutiveMissedDoses': instance.consecutiveMissedDoses,
  'requiresIntervention': instance.requiresIntervention,
  'riskFactors': instance.riskFactors,
};
