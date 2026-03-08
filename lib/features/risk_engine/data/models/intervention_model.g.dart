// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intervention_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InterventionModel _$InterventionModelFromJson(Map<String, dynamic> json) =>
    _InterventionModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      priority: json['priority'] as String,
      expectedImpact: (json['expectedImpact'] as num).toDouble(),
      estimatedCost: (json['estimatedCost'] as num).toInt(),
      timeframe: json['timeframe'] as String,
      isImplemented: json['isImplemented'] as bool,
    );

Map<String, dynamic> _$InterventionModelToJson(_InterventionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'priority': instance.priority,
      'expectedImpact': instance.expectedImpact,
      'estimatedCost': instance.estimatedCost,
      'timeframe': instance.timeframe,
      'isImplemented': instance.isImplemented,
    };
