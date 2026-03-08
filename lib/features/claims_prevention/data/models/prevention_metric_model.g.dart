// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prevention_metric_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PreventionMetricModel _$PreventionMetricModelFromJson(
  Map<String, dynamic> json,
) => _PreventionMetricModel(
  id: json['id'] as String,
  type: json['type'] as String,
  count: (json['count'] as num).toInt(),
  averageCostAvoided: (json['averageCostAvoided'] as num).toDouble(),
  totalCostAvoided: (json['totalCostAvoided'] as num).toDouble(),
  period: DateTime.parse(json['period'] as String),
  description: json['description'] as String,
  successRate: (json['successRate'] as num).toDouble(),
);

Map<String, dynamic> _$PreventionMetricModelToJson(
  _PreventionMetricModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'count': instance.count,
  'averageCostAvoided': instance.averageCostAvoided,
  'totalCostAvoided': instance.totalCostAvoided,
  'period': instance.period.toIso8601String(),
  'description': instance.description,
  'successRate': instance.successRate,
};
