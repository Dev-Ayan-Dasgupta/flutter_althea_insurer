import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_stats_entity.freezed.dart';

@freezed
abstract class AnalyticsStatsEntity with _$AnalyticsStatsEntity {
  const factory AnalyticsStatsEntity({
    required int totalLogins,
    required int totalPageViews,
    required int totalAlertsAcknowledged,
    required int totalClaimsReviewed,
    required int totalFraudInvestigations,
    required int totalReportsGenerated,
    required double avgSessionDuration,
    required int totalSearches,
    required DateTime lastLoginAt,
    required Map<String, int> featureUsage,
    required Map<String, int> dailyActivity,
    required List<String> mostVisitedPages,
  }) = _AnalyticsStatsEntity;
}
