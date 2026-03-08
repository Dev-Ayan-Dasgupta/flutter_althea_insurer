// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_vitals_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatientVitalsModel _$PatientVitalsModelFromJson(Map<String, dynamic> json) =>
    _PatientVitalsModel(
      heartRate: (json['heartRate'] as num).toInt(),
      bloodPressureSystolic: (json['bloodPressureSystolic'] as num).toInt(),
      bloodPressureDiastolic: (json['bloodPressureDiastolic'] as num).toInt(),
      oxygenSaturation: (json['oxygenSaturation'] as num).toInt(),
      temperature: (json['temperature'] as num).toDouble(),
      respiratoryRate: (json['respiratoryRate'] as num).toInt(),
      ecgData: json['ecgData'] as String?,
      recordedAt: DateTime.parse(json['recordedAt'] as String),
    );

Map<String, dynamic> _$PatientVitalsModelToJson(_PatientVitalsModel instance) =>
    <String, dynamic>{
      'heartRate': instance.heartRate,
      'bloodPressureSystolic': instance.bloodPressureSystolic,
      'bloodPressureDiastolic': instance.bloodPressureDiastolic,
      'oxygenSaturation': instance.oxygenSaturation,
      'temperature': instance.temperature,
      'respiratoryRate': instance.respiratoryRate,
      'ecgData': instance.ecgData,
      'recordedAt': instance.recordedAt.toIso8601String(),
    };
