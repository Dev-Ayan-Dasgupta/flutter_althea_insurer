// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_alert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LiveAlertModel _$LiveAlertModelFromJson(Map<String, dynamic> json) =>
    _LiveAlertModel(
      id: json['id'] as String,
      category: json['category'] as String,
      priority: json['priority'] as String,
      status: json['status'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      source: json['source'] as String,
      triggeredAt: DateTime.parse(json['triggeredAt'] as String),
      acknowledgedAt: json['acknowledgedAt'] == null
          ? null
          : DateTime.parse(json['acknowledgedAt'] as String),
      resolvedAt: json['resolvedAt'] == null
          ? null
          : DateTime.parse(json['resolvedAt'] as String),
      patientId: json['patientId'] as String?,
      patientName: json['patientName'] as String?,
      providerId: json['providerId'] as String?,
      providerName: json['providerName'] as String?,
      location: json['location'] as String?,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      metadata: json['metadata'] as Map<String, dynamic>,
      assignedTo: json['assignedTo'] as String?,
      actionTaken: json['actionTaken'] as String?,
      escalationLevel: (json['escalationLevel'] as num?)?.toInt(),
      requiresImmediateAction: json['requiresImmediateAction'] as bool?,
    );

Map<String, dynamic> _$LiveAlertModelToJson(_LiveAlertModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'priority': instance.priority,
      'status': instance.status,
      'title': instance.title,
      'description': instance.description,
      'source': instance.source,
      'triggeredAt': instance.triggeredAt.toIso8601String(),
      'acknowledgedAt': instance.acknowledgedAt?.toIso8601String(),
      'resolvedAt': instance.resolvedAt?.toIso8601String(),
      'patientId': instance.patientId,
      'patientName': instance.patientName,
      'providerId': instance.providerId,
      'providerName': instance.providerName,
      'location': instance.location,
      'tags': instance.tags,
      'metadata': instance.metadata,
      'assignedTo': instance.assignedTo,
      'actionTaken': instance.actionTaken,
      'escalationLevel': instance.escalationLevel,
      'requiresImmediateAction': instance.requiresImmediateAction,
    };
