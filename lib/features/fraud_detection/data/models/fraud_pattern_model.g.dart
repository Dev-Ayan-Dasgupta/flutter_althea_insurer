// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fraud_pattern_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FraudPatternModel _$FraudPatternModelFromJson(Map<String, dynamic> json) =>
    _FraudPatternModel(
      id: json['id'] as String,
      patternType: json['patternType'] as String,
      patternName: json['patternName'] as String,
      description: json['description'] as String,
      occurrences: (json['occurrences'] as num).toInt(),
      detectionRate: (json['detectionRate'] as num).toDouble(),
      falsePositiveRate: (json['falsePositiveRate'] as num).toDouble(),
      estimatedLoss: (json['estimatedLoss'] as num).toDouble(),
      preventedLoss: (json['preventedLoss'] as num).toDouble(),
      affectedProviders: (json['affectedProviders'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      commonIndicators: (json['commonIndicators'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      firstDetected: DateTime.parse(json['firstDetected'] as String),
      lastDetected: DateTime.parse(json['lastDetected'] as String),
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$FraudPatternModelToJson(_FraudPatternModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patternType': instance.patternType,
      'patternName': instance.patternName,
      'description': instance.description,
      'occurrences': instance.occurrences,
      'detectionRate': instance.detectionRate,
      'falsePositiveRate': instance.falsePositiveRate,
      'estimatedLoss': instance.estimatedLoss,
      'preventedLoss': instance.preventedLoss,
      'affectedProviders': instance.affectedProviders,
      'commonIndicators': instance.commonIndicators,
      'firstDetected': instance.firstDetected.toIso8601String(),
      'lastDetected': instance.lastDetected.toIso8601String(),
      'isActive': instance.isActive,
    };
