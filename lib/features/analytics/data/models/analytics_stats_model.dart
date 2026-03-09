import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/analytics_stats_entity.dart';

part 'analytics_stats_model.freezed.dart';
part 'analytics_stats_model.g.dart';

@freezed
abstract class AnalyticsStatsModel with _$AnalyticsStatsModel {
  const AnalyticsStatsModel._();

  const factory AnalyticsStatsModel({
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
  }) = _AnalyticsStatsModel;

  factory AnalyticsStatsModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsStatsModelFromJson(json);

  AnalyticsStatsEntity toEntity() {
    return AnalyticsStatsEntity(
      totalLogins: totalLogins,
      totalPageViews: totalPageViews,
      totalAlertsAcknowledged: totalAlertsAcknowledged,
      totalClaimsReviewed: totalClaimsReviewed,
      totalFraudInvestigations: totalFraudInvestigations,
      totalReportsGenerated: totalReportsGenerated,
      avgSessionDuration: avgSessionDuration,
      totalSearches: totalSearches,
      lastLoginAt: lastLoginAt,
      featureUsage: featureUsage,
      dailyActivity: dailyActivity,
      mostVisitedPages: mostVisitedPages,
    );
  }
}
