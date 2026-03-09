// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_action_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AlertActionModel _$AlertActionModelFromJson(Map<String, dynamic> json) =>
    _AlertActionModel(
      id: json['id'] as String,
      alertId: json['alertId'] as String,
      actionType: json['actionType'] as String,
      actionName: json['actionName'] as String,
      performedAt: DateTime.parse(json['performedAt'] as String),
      performedBy: json['performedBy'] as String,
      notes: json['notes'] as String?,
      actionData: json['actionData'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$AlertActionModelToJson(_AlertActionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alertId': instance.alertId,
      'actionType': instance.actionType,
      'actionName': instance.actionName,
      'performedAt': instance.performedAt.toIso8601String(),
      'performedBy': instance.performedBy,
      'notes': instance.notes,
      'actionData': instance.actionData,
    };
