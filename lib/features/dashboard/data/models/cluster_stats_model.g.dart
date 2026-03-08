// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cluster_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClusterStatsModel _$ClusterStatsModelFromJson(Map<String, dynamic> json) =>
    _ClusterStatsModel(
      totalLives: (json['totalLives'] as num).toInt(),
      activeLives: (json['activeLives'] as num).toInt(),
      highRiskPatients: (json['highRiskPatients'] as num).toInt(),
      ambulancesAvailable: (json['ambulancesAvailable'] as num).toInt(),
      nursesOnDuty: (json['nursesOnDuty'] as num).toInt(),
      pharmaciesActive: (json['pharmaciesActive'] as num).toInt(),
      averageResponseTime: (json['averageResponseTime'] as num).toDouble(),
    );

Map<String, dynamic> _$ClusterStatsModelToJson(_ClusterStatsModel instance) =>
    <String, dynamic>{
      'totalLives': instance.totalLives,
      'activeLives': instance.activeLives,
      'highRiskPatients': instance.highRiskPatients,
      'ambulancesAvailable': instance.ambulancesAvailable,
      'nursesOnDuty': instance.nursesOnDuty,
      'pharmaciesActive': instance.pharmaciesActive,
      'averageResponseTime': instance.averageResponseTime,
    };
