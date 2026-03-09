// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safety_alert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SafetyAlertModel _$SafetyAlertModelFromJson(Map<String, dynamic> json) =>
    _SafetyAlertModel(
      id: json['id'] as String,
      alertType: json['alertType'] as String,
      severity: json['severity'] as String,
      cohortType: json['cohortType'] as String,
      patientName: json['patientName'] as String,
      patientId: json['patientId'] as String,
      alertMessage: json['alertMessage'] as String,
      detectedReason: json['detectedReason'] as String,
      detectedAt: DateTime.parse(json['detectedAt'] as String),
      requiresImmediateAction: json['requiresImmediateAction'] as bool,
      recommendedAction: json['recommendedAction'] as String,
      assignedCaregiver: json['assignedCaregiver'] as String?,
      actionTaken: json['actionTaken'] as bool?,
    );

Map<String, dynamic> _$SafetyAlertModelToJson(_SafetyAlertModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alertType': instance.alertType,
      'severity': instance.severity,
      'cohortType': instance.cohortType,
      'patientName': instance.patientName,
      'patientId': instance.patientId,
      'alertMessage': instance.alertMessage,
      'detectedReason': instance.detectedReason,
      'detectedAt': instance.detectedAt.toIso8601String(),
      'requiresImmediateAction': instance.requiresImmediateAction,
      'recommendedAction': instance.recommendedAction,
      'assignedCaregiver': instance.assignedCaregiver,
      'actionTaken': instance.actionTaken,
    };
