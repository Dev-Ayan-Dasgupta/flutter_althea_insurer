// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_case_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmergencyCaseModel _$EmergencyCaseModelFromJson(Map<String, dynamic> json) =>
    _EmergencyCaseModel(
      id: json['id'] as String,
      patientId: json['patientId'] as String,
      patientName: json['patientName'] as String,
      patientAge: (json['patientAge'] as num).toInt(),
      chiefComplaint: json['chiefComplaint'] as String,
      severity: json['severity'] as String,
      status: json['status'] as String,
      ambulanceId: json['ambulanceId'] as String,
      paramedicName: json['paramedicName'] as String,
      vitals: PatientVitalsModel.fromJson(
        json['vitals'] as Map<String, dynamic>,
      ),
      location: json['location'] as String,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      destinationHospital: json['destinationHospital'] as String,
      estimatedCost: (json['estimatedCost'] as num).toDouble(),
      preAuth: json['preAuth'] == null
          ? null
          : PreAuthModel.fromJson(json['preAuth'] as Map<String, dynamic>),
      medicalHistory: json['medicalHistory'] as String?,
      medications: (json['medications'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      dispatchedAt: DateTime.parse(json['dispatchedAt'] as String),
      arrivedAt: json['arrivedAt'] == null
          ? null
          : DateTime.parse(json['arrivedAt'] as String),
      transportedAt: json['transportedAt'] == null
          ? null
          : DateTime.parse(json['transportedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$EmergencyCaseModelToJson(_EmergencyCaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patientId': instance.patientId,
      'patientName': instance.patientName,
      'patientAge': instance.patientAge,
      'chiefComplaint': instance.chiefComplaint,
      'severity': instance.severity,
      'status': instance.status,
      'ambulanceId': instance.ambulanceId,
      'paramedicName': instance.paramedicName,
      'vitals': instance.vitals,
      'location': instance.location,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'destinationHospital': instance.destinationHospital,
      'estimatedCost': instance.estimatedCost,
      'preAuth': instance.preAuth,
      'medicalHistory': instance.medicalHistory,
      'medications': instance.medications,
      'dispatchedAt': instance.dispatchedAt.toIso8601String(),
      'arrivedAt': instance.arrivedAt?.toIso8601String(),
      'transportedAt': instance.transportedAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
