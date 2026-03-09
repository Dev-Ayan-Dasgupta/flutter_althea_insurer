// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coverage_zone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CoverageZoneModel _$CoverageZoneModelFromJson(Map<String, dynamic> json) =>
    _CoverageZoneModel(
      id: json['id'] as String,
      zoneName: json['zoneName'] as String,
      centerLatitude: (json['centerLatitude'] as num).toDouble(),
      centerLongitude: (json['centerLongitude'] as num).toDouble(),
      radiusKm: (json['radiusKm'] as num).toDouble(),
      populationCovered: (json['populationCovered'] as num).toInt(),
      activeAssets: (json['activeAssets'] as num).toInt(),
      coverageScore: (json['coverageScore'] as num).toDouble(),
      avgResponseTimeMinutes: (json['avgResponseTimeMinutes'] as num).toInt(),
      hasAdequateCoverage: json['hasAdequateCoverage'] as bool,
    );

Map<String, dynamic> _$CoverageZoneModelToJson(_CoverageZoneModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'zoneName': instance.zoneName,
      'centerLatitude': instance.centerLatitude,
      'centerLongitude': instance.centerLongitude,
      'radiusKm': instance.radiusKm,
      'populationCovered': instance.populationCovered,
      'activeAssets': instance.activeAssets,
      'coverageScore': instance.coverageScore,
      'avgResponseTimeMinutes': instance.avgResponseTimeMinutes,
      'hasAdequateCoverage': instance.hasAdequateCoverage,
    };
