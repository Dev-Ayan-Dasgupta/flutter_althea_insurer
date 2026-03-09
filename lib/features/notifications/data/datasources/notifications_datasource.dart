import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/utils/logger.dart';
import '../models/notification_preference_model.dart';
import '../models/notification_model.dart';

class NotificationsDatasource {
  // Fetch notification preferences
  Future<NotificationPreferenceModel> fetchNotificationPreferences() async {
    try {
      Logger.info(
        'Fetching notification preferences',
        tag: 'NotificationsDatasource',
      );

      await Future.delayed(Duration(milliseconds: 300));

      final prefs = NotificationPreferenceModel(
        userId: 'USER001',
        emailEnabled: true,
        pushEnabled: true,
        smsEnabled: false,
        inAppEnabled: true,
        emergencyAlerts: true,
        fraudAlerts: true,
        safetyAlerts: true,
        medicationAlerts: true,
        riskAlerts: true,
        systemAlerts: false,
        claimsAlerts: true,
        networkAlerts: false,
        dailySummary: true,
        weeklySummary: true,
        monthlySummary: false,
        quietHoursEnabled: true,
        quietHoursStart: '22:00',
        quietHoursEnd: '07:00',
        soundEnabled: true,
        vibrationEnabled: true,
        ledEnabled: false,
        notificationPriority: 2,
        mutedKeywords: ['test', 'demo'],
        mutedProviders: [],
      );

      Logger.info(
        'Fetched notification preferences',
        tag: 'NotificationsDatasource',
      );
      return prefs;
    } catch (e) {
      Logger.error(
        'Error fetching notification preferences',
        tag: 'NotificationsDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Update notification preferences
  Future<bool> updateNotificationPreferences(
    NotificationPreferenceModel prefs,
  ) async {
    try {
      Logger.info(
        'Updating notification preferences',
        tag: 'NotificationsDatasource',
      );

      await Future.delayed(Duration(milliseconds: 500));

      // Save to SharedPreferences
      final sharedPrefs = await SharedPreferences.getInstance();
      await sharedPrefs.setBool('email_enabled', prefs.emailEnabled);
      await sharedPrefs.setBool('push_enabled', prefs.pushEnabled);
      await sharedPrefs.setBool('sms_enabled', prefs.smsEnabled);

      Logger.info(
        'Notification preferences updated successfully',
        tag: 'NotificationsDatasource',
      );
      return true;
    } catch (e) {
      Logger.error(
        'Error updating notification preferences',
        tag: 'NotificationsDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch notifications
  Future<List<NotificationModel>> fetchNotifications() async {
    try {
      Logger.info('Fetching notifications', tag: 'NotificationsDatasource');

      await Future.delayed(Duration(milliseconds: 500));

      final now = DateTime.now();
      final notifications = <NotificationModel>[
        NotificationModel(
          id: 'NOT001',
          type: 'emergency',
          title: 'Emergency Alert: Cardiac Arrest Detected',
          body:
              'Patient Rajesh Kumar (72M) showing cardiac distress. Immediate response required.',
          timestamp: now.subtract(Duration(minutes: 5)),
          status: 'unread',
          actionUrl: '/live-alerts',
          data: {'patientId': 'PAT001', 'alertId': 'LA001'},
        ),
        NotificationModel(
          id: 'NOT002',
          type: 'fraud',
          title: 'Fraud Alert: Duplicate Claim Detected',
          body:
              'Duplicate claim of ₹85,000 detected from Apollo Hospitals. 92% fraud probability.',
          timestamp: now.subtract(Duration(minutes: 15)),
          status: 'unread',
          actionUrl: '/fraud-detection',
          data: {'claimId': 'CLM2024001234'},
        ),
        NotificationModel(
          id: 'NOT003',
          type: 'safety',
          title: 'Safety Alert: Maternal BP Spike',
          body: 'Priya Mehta (38F) BP reading 160/110. Risk of preeclampsia.',
          timestamp: now.subtract(Duration(minutes: 25)),
          status: 'read',
          actionUrl: '/safety-monitor',
          data: {'patientId': 'PAT005'},
        ),
        NotificationModel(
          id: 'NOT004',
          type: 'medication',
          title: 'Medication Alert: Critical Non-Adherence',
          body:
              'Mohan Das (68M) missed 4 consecutive insulin doses. 45% adherence rate.',
          timestamp: now.subtract(Duration(hours: 1)),
          status: 'read',
          actionUrl: '/medication-adherence',
          data: {'patientId': 'PAT007'},
        ),
        NotificationModel(
          id: 'NOT005',
          type: 'risk',
          title: 'Risk Escalation: High Hospitalization Risk',
          body:
              'Meera Nair (70F) showing 85% hospitalization probability within 7 days.',
          timestamp: now.subtract(Duration(hours: 2)),
          status: 'read',
          actionUrl: '/risk-engine',
          data: {'patientId': 'PAT010'},
        ),
        NotificationModel(
          id: 'NOT006',
          type: 'claims',
          title: 'Claim Verification Complete',
          body: 'Claim #CLM2024001100 verified successfully. Score: 98.5%',
          timestamp: now.subtract(Duration(hours: 3)),
          status: 'read',
          actionUrl: '/claims-prevention',
        ),
        NotificationModel(
          id: 'NOT007',
          type: 'system',
          title: 'Daily Summary Report Available',
          body:
              'Your daily summary for ${now.subtract(Duration(days: 1)).toString().split(' ')[0]} is ready.',
          timestamp: now.subtract(Duration(hours: 6)),
          status: 'read',
          actionUrl: '/analytics',
        ),
        NotificationModel(
          id: 'NOT008',
          type: 'network',
          title: 'Network Alert: Hospital Capacity Critical',
          body: 'Apollo Hospitals at 95% capacity. No ICU beds available.',
          timestamp: now.subtract(Duration(hours: 8)),
          status: 'archived',
          actionUrl: '/network-readiness',
        ),
      ];

      Logger.info(
        'Fetched ${notifications.length} notifications',
        tag: 'NotificationsDatasource',
      );
      return notifications;
    } catch (e) {
      Logger.error(
        'Error fetching notifications',
        tag: 'NotificationsDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Mark notification as read
  Future<bool> markAsRead(String notificationId) async {
    try {
      Logger.info(
        'Marking notification as read: $notificationId',
        tag: 'NotificationsDatasource',
      );

      await Future.delayed(Duration(milliseconds: 200));

      Logger.info(
        'Notification marked as read',
        tag: 'NotificationsDatasource',
      );
      return true;
    } catch (e) {
      Logger.error(
        'Error marking notification as read',
        tag: 'NotificationsDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Mark all as read
  Future<bool> markAllAsRead() async {
    try {
      Logger.info(
        'Marking all notifications as read',
        tag: 'NotificationsDatasource',
      );

      await Future.delayed(Duration(milliseconds: 300));

      Logger.info(
        'All notifications marked as read',
        tag: 'NotificationsDatasource',
      );
      return true;
    } catch (e) {
      Logger.error(
        'Error marking all notifications as read',
        tag: 'NotificationsDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Clear all notifications
  Future<bool> clearAllNotifications() async {
    try {
      Logger.info('Clearing all notifications', tag: 'NotificationsDatasource');

      await Future.delayed(Duration(milliseconds: 300));

      Logger.info('All notifications cleared', tag: 'NotificationsDatasource');
      return true;
    } catch (e) {
      Logger.error(
        'Error clearing notifications',
        tag: 'NotificationsDatasource',
        error: e,
      );
      rethrow;
    }
  }
}
