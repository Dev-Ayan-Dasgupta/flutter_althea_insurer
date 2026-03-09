// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MedicationModel _$MedicationModelFromJson(Map<String, dynamic> json) =>
    _MedicationModel(
      id: json['id'] as String,
      name: json['name'] as String,
      genericName: json['genericName'] as String,
      type: json['type'] as String,
      dosage: json['dosage'] as String,
      frequency: json['frequency'] as String,
      timings: (json['timings'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      isActive: json['isActive'] as bool,
      prescribedBy: json['prescribedBy'] as String,
      purpose: json['purpose'] as String,
      sideEffects: json['sideEffects'] as String?,
      instructions: json['instructions'] as String?,
    );

Map<String, dynamic> _$MedicationModelToJson(_MedicationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'genericName': instance.genericName,
      'type': instance.type,
      'dosage': instance.dosage,
      'frequency': instance.frequency,
      'timings': instance.timings,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'isActive': instance.isActive,
      'prescribedBy': instance.prescribedBy,
      'purpose': instance.purpose,
      'sideEffects': instance.sideEffects,
      'instructions': instance.instructions,
    };
