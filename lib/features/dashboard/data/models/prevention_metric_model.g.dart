// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prevention_metric_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PreventionMetricModel _$PreventionMetricModelFromJson(
  Map<String, dynamic> json,
) => _PreventionMetricModel(
  type: json['type'] as String,
  count: (json['count'] as num).toInt(),
  period: json['period'] as String,
  trend: (json['trend'] as num).toDouble(),
);

Map<String, dynamic> _$PreventionMetricModelToJson(
  _PreventionMetricModel instance,
) => <String, dynamic>{
  'type': instance.type,
  'count': instance.count,
  'period': instance.period,
  'trend': instance.trend,
};
