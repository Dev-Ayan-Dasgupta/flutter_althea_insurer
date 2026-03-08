// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financial_impact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FinancialImpactModel _$FinancialImpactModelFromJson(
  Map<String, dynamic> json,
) => _FinancialImpactModel(
  hospitalizationsAvoided: (json['hospitalizationsAvoided'] as num).toDouble(),
  averageClaimCost: (json['averageClaimCost'] as num).toDouble(),
  totalSavings: (json['totalSavings'] as num).toDouble(),
  platformRevenue: (json['platformRevenue'] as num).toDouble(),
  roi: (json['roi'] as num).toDouble(),
);

Map<String, dynamic> _$FinancialImpactModelToJson(
  _FinancialImpactModel instance,
) => <String, dynamic>{
  'hospitalizationsAvoided': instance.hospitalizationsAvoided,
  'averageClaimCost': instance.averageClaimCost,
  'totalSavings': instance.totalSavings,
  'platformRevenue': instance.platformRevenue,
  'roi': instance.roi,
};
