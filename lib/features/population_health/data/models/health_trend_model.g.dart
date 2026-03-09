// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_trend_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HealthTrendModel _$HealthTrendModelFromJson(Map<String, dynamic> json) =>
    _HealthTrendModel(
      id: json['id'] as String,
      metricName: json['metricName'] as String,
      category: json['category'] as String,
      direction: json['direction'] as String,
      currentValue: (json['currentValue'] as num).toDouble(),
      changePercentage: (json['changePercentage'] as num).toDouble(),
      quarterlyData: (json['quarterlyData'] as List<dynamic>)
          .map((e) => TrendDataPointModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      insight: json['insight'] as String,
    );

Map<String, dynamic> _$HealthTrendModelToJson(_HealthTrendModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metricName': instance.metricName,
      'category': instance.category,
      'direction': instance.direction,
      'currentValue': instance.currentValue,
      'changePercentage': instance.changePercentage,
      'quarterlyData': instance.quarterlyData,
      'insight': instance.insight,
    };

_TrendDataPointModel _$TrendDataPointModelFromJson(Map<String, dynamic> json) =>
    _TrendDataPointModel(
      quarter: json['quarter'] as String,
      value: (json['value'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$TrendDataPointModelToJson(
  _TrendDataPointModel instance,
) => <String, dynamic>{
  'quarter': instance.quarter,
  'value': instance.value,
  'date': instance.date.toIso8601String(),
};
