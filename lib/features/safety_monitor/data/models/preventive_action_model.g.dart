// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventive_action_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PreventiveActionModel _$PreventiveActionModelFromJson(
  Map<String, dynamic> json,
) => _PreventiveActionModel(
  id: json['id'] as String,
  actionType: json['actionType'] as String,
  actionName: json['actionName'] as String,
  cohortType: json['cohortType'] as String,
  patientName: json['patientName'] as String,
  patientId: json['patientId'] as String,
  status: json['status'] as String,
  scheduledFor: DateTime.parse(json['scheduledFor'] as String),
  assignedTo: json['assignedTo'] as String?,
  notes: json['notes'] as String?,
  completedAt: json['completedAt'] == null
      ? null
      : DateTime.parse(json['completedAt'] as String),
);

Map<String, dynamic> _$PreventiveActionModelToJson(
  _PreventiveActionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'actionType': instance.actionType,
  'actionName': instance.actionName,
  'cohortType': instance.cohortType,
  'patientName': instance.patientName,
  'patientId': instance.patientId,
  'status': instance.status,
  'scheduledFor': instance.scheduledFor.toIso8601String(),
  'assignedTo': instance.assignedTo,
  'notes': instance.notes,
  'completedAt': instance.completedAt?.toIso8601String(),
};
