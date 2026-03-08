// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'risk_distribution_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RiskDistributionModel _$RiskDistributionModelFromJson(
  Map<String, dynamic> json,
) => _RiskDistributionModel(
  riskLevel: json['riskLevel'] as String,
  count: (json['count'] as num).toInt(),
  percentage: (json['percentage'] as num).toDouble(),
);

Map<String, dynamic> _$RiskDistributionModelToJson(
  _RiskDistributionModel instance,
) => <String, dynamic>{
  'riskLevel': instance.riskLevel,
  'count': instance.count,
  'percentage': instance.percentage,
};
