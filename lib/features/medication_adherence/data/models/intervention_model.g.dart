// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intervention_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InterventionModel _$InterventionModelFromJson(Map<String, dynamic> json) =>
    _InterventionModel(
      id: json['id'] as String,
      type: json['type'] as String,
      interventionName: json['interventionName'] as String,
      patientId: json['patientId'] as String,
      patientName: json['patientName'] as String,
      description: json['description'] as String,
      expectedOutcome: json['expectedOutcome'] as String,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      scheduledFor: json['scheduledFor'] == null
          ? null
          : DateTime.parse(json['scheduledFor'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      assignedTo: json['assignedTo'] as String?,
      outcome: json['outcome'] as String?,
    );

Map<String, dynamic> _$InterventionModelToJson(_InterventionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'interventionName': instance.interventionName,
      'patientId': instance.patientId,
      'patientName': instance.patientName,
      'description': instance.description,
      'expectedOutcome': instance.expectedOutcome,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'scheduledFor': instance.scheduledFor?.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'assignedTo': instance.assignedTo,
      'outcome': instance.outcome,
    };
