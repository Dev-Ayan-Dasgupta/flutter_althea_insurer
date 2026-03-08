// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'risk_factor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RiskFactorModel _$RiskFactorModelFromJson(Map<String, dynamic> json) =>
    _RiskFactorModel(
      id: json['id'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      impactScore: (json['impactScore'] as num).toDouble(),
      description: json['description'] as String,
      isModifiable: json['isModifiable'] as bool,
      currentValue: json['currentValue'] as String?,
      targetValue: json['targetValue'] as String?,
    );

Map<String, dynamic> _$RiskFactorModelToJson(_RiskFactorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'impactScore': instance.impactScore,
      'description': instance.description,
      'isModifiable': instance.isModifiable,
      'currentValue': instance.currentValue,
      'targetValue': instance.targetValue,
    };
