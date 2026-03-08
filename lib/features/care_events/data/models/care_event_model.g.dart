// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'care_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CareEventModel _$CareEventModelFromJson(Map<String, dynamic> json) =>
    _CareEventModel(
      id: json['id'] as String,
      patientId: json['patientId'] as String,
      patientName: json['patientName'] as String,
      caregiverId: json['caregiverId'] as String,
      caregiverName: json['caregiverName'] as String,
      eventType: json['eventType'] as String,
      description: json['description'] as String,
      scheduledAt: DateTime.parse(json['scheduledAt'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      verificationStatus: VerificationStatusModel.fromJson(
        json['verificationStatus'] as Map<String, dynamic>,
      ),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      duration: (json['duration'] as num).toInt(),
      notes: json['notes'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      claimAmount: (json['claimAmount'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$CareEventModelToJson(_CareEventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patientId': instance.patientId,
      'patientName': instance.patientName,
      'caregiverId': instance.caregiverId,
      'caregiverName': instance.caregiverName,
      'eventType': instance.eventType,
      'description': instance.description,
      'scheduledAt': instance.scheduledAt.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'verificationStatus': instance.verificationStatus,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'duration': instance.duration,
      'notes': instance.notes,
      'attachments': instance.attachments,
      'claimAmount': instance.claimAmount,
      'createdAt': instance.createdAt.toIso8601String(),
    };
