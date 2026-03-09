// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnalyticsStatsModel _$AnalyticsStatsModelFromJson(Map<String, dynamic> json) =>
    _AnalyticsStatsModel(
      totalLogins: (json['totalLogins'] as num).toInt(),
      totalPageViews: (json['totalPageViews'] as num).toInt(),
      totalAlertsAcknowledged: (json['totalAlertsAcknowledged'] as num).toInt(),
      totalClaimsReviewed: (json['totalClaimsReviewed'] as num).toInt(),
      totalFraudInvestigations: (json['totalFraudInvestigations'] as num)
          .toInt(),
      totalReportsGenerated: (json['totalReportsGenerated'] as num).toInt(),
      avgSessionDuration: (json['avgSessionDuration'] as num).toDouble(),
      totalSearches: (json['totalSearches'] as num).toInt(),
      lastLoginAt: DateTime.parse(json['lastLoginAt'] as String),
      featureUsage: Map<String, int>.from(json['featureUsage'] as Map),
      dailyActivity: Map<String, int>.from(json['dailyActivity'] as Map),
      mostVisitedPages: (json['mostVisitedPages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AnalyticsStatsModelToJson(
  _AnalyticsStatsModel instance,
) => <String, dynamic>{
  'totalLogins': instance.totalLogins,
  'totalPageViews': instance.totalPageViews,
  'totalAlertsAcknowledged': instance.totalAlertsAcknowledged,
  'totalClaimsReviewed': instance.totalClaimsReviewed,
  'totalFraudInvestigations': instance.totalFraudInvestigations,
  'totalReportsGenerated': instance.totalReportsGenerated,
  'avgSessionDuration': instance.avgSessionDuration,
  'totalSearches': instance.totalSearches,
  'lastLoginAt': instance.lastLoginAt.toIso8601String(),
  'featureUsage': instance.featureUsage,
  'dailyActivity': instance.dailyActivity,
  'mostVisitedPages': instance.mostVisitedPages,
};
