// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_flag_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuditFlagModel _$AuditFlagModelFromJson(Map<String, dynamic> json) =>
    _AuditFlagModel(
      id: json['id'] as String,
      type: json['type'] as String,
      severity: json['severity'] as String,
      description: json['description'] as String,
      reason: json['reason'] as String,
      detectedAt: DateTime.parse(json['detectedAt'] as String),
      requiresInvestigation: json['requiresInvestigation'] as bool,
    );

Map<String, dynamic> _$AuditFlagModelToJson(_AuditFlagModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'severity': instance.severity,
      'description': instance.description,
      'reason': instance.reason,
      'detectedAt': instance.detectedAt.toIso8601String(),
      'requiresInvestigation': instance.requiresInvestigation,
    };
