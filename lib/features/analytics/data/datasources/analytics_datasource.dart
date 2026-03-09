import '../../../../core/utils/logger.dart';
import '../models/user_activity_model.dart';
import '../models/analytics_stats_model.dart';

class AnalyticsDatasource {
  // Fetch user activities
  Future<List<UserActivityModel>> fetchUserActivities() async {
    try {
      Logger.info('Fetching user activities', tag: 'AnalyticsDatasource');

      await Future.delayed(Duration(milliseconds: 500));

      final now = DateTime.now();
      final activities = <UserActivityModel>[
        UserActivityModel(
          id: 'ACT001',
          userId: 'USER001',
          activityType: 'login',
          description: 'User logged in',
          timestamp: now.subtract(Duration(hours: 2)),
        ),
        UserActivityModel(
          id: 'ACT002',
          userId: 'USER001',
          activityType: 'page_view',
          description: 'Viewed Dashboard',
          timestamp: now.subtract(Duration(hours: 2)),
          targetId: '/dashboard',
          targetType: 'page',
        ),
        UserActivityModel(
          id: 'ACT003',
          userId: 'USER001',
          activityType: 'alert_acknowledged',
          description: 'Acknowledged emergency alert',
          timestamp: now.subtract(Duration(minutes: 90)),
          targetId: 'LA001',
          targetType: 'alert',
        ),
        UserActivityModel(
          id: 'ACT004',
          userId: 'USER001',
          activityType: 'page_view',
          description: 'Viewed Fraud Detection Console',
          timestamp: now.subtract(Duration(minutes: 75)),
          targetId: '/fraud-detection',
          targetType: 'page',
        ),
        UserActivityModel(
          id: 'ACT005',
          userId: 'USER001',
          activityType: 'fraud_investigated',
          description: 'Investigated fraud alert',
          timestamp: now.subtract(Duration(minutes: 60)),
          targetId: 'FA001',
          targetType: 'fraud_alert',
        ),
        UserActivityModel(
          id: 'ACT006',
          userId: 'USER001',
          activityType: 'claim_reviewed',
          description: 'Reviewed claim verification',
          timestamp: now.subtract(Duration(minutes: 45)),
          targetId: 'CLM2024001234',
          targetType: 'claim',
        ),
        UserActivityModel(
          id: 'ACT007',
          userId: 'USER001',
          activityType: 'report_generated',
          description: 'Generated weekly fraud report',
          timestamp: now.subtract(Duration(minutes: 30)),
          metadata: {'format': 'PDF', 'records': 150},
        ),
        UserActivityModel(
          id: 'ACT008',
          userId: 'USER001',
          activityType: 'settings_changed',
          description: 'Updated notification preferences',
          timestamp: now.subtract(Duration(minutes: 15)),
          targetId: '/settings',
          targetType: 'settings',
        ),
        UserActivityModel(
          id: 'ACT009',
          userId: 'USER001',
          activityType: 'search_performed',
          description: 'Searched for patient "Rajesh Kumar"',
          timestamp: now.subtract(Duration(minutes: 10)),
          metadata: {'query': 'Rajesh Kumar', 'results': 3},
        ),
        UserActivityModel(
          id: 'ACT010',
          userId: 'USER001',
          activityType: 'page_view',
          description: 'Viewed Live Alert Center',
          timestamp: now.subtract(Duration(minutes: 5)),
          targetId: '/live-alerts',
          targetType: 'page',
        ),
      ];

      Logger.info(
        'Fetched ${activities.length} user activities',
        tag: 'AnalyticsDatasource',
      );
      return activities;
    } catch (e) {
      Logger.error(
        'Error fetching user activities',
        tag: 'AnalyticsDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch analytics stats
  Future<AnalyticsStatsModel> fetchAnalyticsStats() async {
    try {
      Logger.info('Fetching analytics stats', tag: 'AnalyticsDatasource');

      await Future.delayed(Duration(milliseconds: 600));

      final now = DateTime.now();
      final stats = AnalyticsStatsModel(
        totalLogins: 156,
        totalPageViews: 2847,
        totalAlertsAcknowledged: 89,
        totalClaimsReviewed: 234,
        totalFraudInvestigations: 47,
        totalReportsGenerated: 23,
        avgSessionDuration: 45.5,
        totalSearches: 312,
        lastLoginAt: now.subtract(Duration(hours: 2)),
        featureUsage: {
          'Dashboard': 456,
          'Live Alerts': 389,
          'Fraud Detection': 278,
          'Risk Engine': 234,
          'Claims Prevention': 198,
          'Safety Monitor': 167,
          'Medication Adherence': 145,
          'Network Readiness': 123,
          'Population Health': 98,
          'Settings': 87,
        },
        dailyActivity: {
          now.subtract(Duration(days: 6)).toString().split(' ')[0]: 45,
          now.subtract(Duration(days: 5)).toString().split(' ')[0]: 52,
          now.subtract(Duration(days: 4)).toString().split(' ')[0]: 38,
          now.subtract(Duration(days: 3)).toString().split(' ')[0]: 61,
          now.subtract(Duration(days: 2)).toString().split(' ')[0]: 47,
          now.subtract(Duration(days: 1)).toString().split(' ')[0]: 56,
          now.toString().split(' ')[0]: 23,
        },
        mostVisitedPages: [
          'Dashboard',
          'Live Alert Center',
          'Fraud Detection Console',
          'Risk Engine',
          'Claims Prevention',
        ],
      );

      Logger.info('Fetched analytics stats', tag: 'AnalyticsDatasource');
      return stats;
    } catch (e) {
      Logger.error(
        'Error fetching analytics stats',
        tag: 'AnalyticsDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Track activity
  Future<bool> trackActivity(UserActivityModel activity) async {
    try {
      Logger.info(
        'Tracking activity: ${activity.activityType}',
        tag: 'AnalyticsDatasource',
      );

      await Future.delayed(Duration(milliseconds: 100));

      Logger.info('Activity tracked successfully', tag: 'AnalyticsDatasource');
      return true;
    } catch (e) {
      Logger.error(
        'Error tracking activity',
        tag: 'AnalyticsDatasource',
        error: e,
      );
      rethrow;
    }
  }
}
