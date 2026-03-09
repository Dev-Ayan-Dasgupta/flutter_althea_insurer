import '../../../../core/utils/logger.dart';
import '../models/user_profile_model.dart';
import '../models/user_preferences_model.dart';
import '../models/notification_settings_model.dart';

class SettingsDatasource {
  // Fetch user profile
  Future<UserProfileModel> fetchUserProfile() async {
    try {
      Logger.info('Fetching user profile', tag: 'SettingsDatasource');

      await Future.delayed(Duration(milliseconds: 500));

      final now = DateTime.now();
      final profile = UserProfileModel(
        id: 'USER001',
        email: 'coordinator@starhealth.com',
        fullName: 'Ravi Kumar',
        phoneNumber: '+91 98765 43210',
        department: 'Health Operations',
        role: 'manager',
        avatarUrl: null,
        joinedDate: now.subtract(Duration(days: 730)),
        lastLoginAt: now.subtract(Duration(hours: 2)),
        isActive: true,
        bio:
            'Senior Health Operations Manager at Star Health Insurance. Specializing in care coordination and risk management.',
        location: 'Bangalore, Karnataka',
        timezone: 'Asia/Kolkata',
        language: 'en',
      );

      Logger.info('Fetched user profile', tag: 'SettingsDatasource');
      return profile;
    } catch (e) {
      Logger.error(
        'Error fetching user profile',
        tag: 'SettingsDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch user preferences
  Future<UserPreferencesModel> fetchUserPreferences() async {
    try {
      Logger.info('Fetching user preferences', tag: 'SettingsDatasource');

      await Future.delayed(Duration(milliseconds: 300));

      final preferences = UserPreferencesModel(
        userId: 'USER001',
        darkMode: true,
        accentColor: 'blue',
        compactView: false,
        showAvatars: true,
        itemsPerPage: 20,
        dateFormat: 'dd/MM/yyyy',
        timeFormat: '24h',
        currency: 'INR',
        autoRefresh: true,
        refreshInterval: 30,
        soundEnabled: true,
        vibrationEnabled: true,
      );

      Logger.info('Fetched user preferences', tag: 'SettingsDatasource');
      return preferences;
    } catch (e) {
      Logger.error(
        'Error fetching user preferences',
        tag: 'SettingsDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch notification settings
  Future<NotificationSettingsModel> fetchNotificationSettings() async {
    try {
      Logger.info('Fetching notification settings', tag: 'SettingsDatasource');

      await Future.delayed(Duration(milliseconds: 300));

      final settings = NotificationSettingsModel(
        userId: 'USER001',
        emailNotifications: true,
        pushNotifications: true,
        smsNotifications: false,
        emergencyAlerts: true,
        fraudAlerts: true,
        safetyAlerts: true,
        medicationAlerts: true,
        riskAlerts: true,
        systemAlerts: false,
        dailySummary: true,
        weeklySummary: true,
        monthlySummary: false,
        quietHoursStart: '22:00',
        quietHoursEnd: '07:00',
        quietHoursEnabled: true,
      );

      Logger.info('Fetched notification settings', tag: 'SettingsDatasource');
      return settings;
    } catch (e) {
      Logger.error(
        'Error fetching notification settings',
        tag: 'SettingsDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Update user profile
  Future<bool> updateUserProfile(UserProfileModel profile) async {
    try {
      Logger.info('Updating user profile', tag: 'SettingsDatasource');

      await Future.delayed(Duration(milliseconds: 800));

      Logger.info(
        'User profile updated successfully',
        tag: 'SettingsDatasource',
      );
      return true;
    } catch (e) {
      Logger.error(
        'Error updating user profile',
        tag: 'SettingsDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Update user preferences
  Future<bool> updateUserPreferences(UserPreferencesModel preferences) async {
    try {
      Logger.info('Updating user preferences', tag: 'SettingsDatasource');

      await Future.delayed(Duration(milliseconds: 500));

      Logger.info(
        'User preferences updated successfully',
        tag: 'SettingsDatasource',
      );
      return true;
    } catch (e) {
      Logger.error(
        'Error updating user preferences',
        tag: 'SettingsDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Update notification settings
  Future<bool> updateNotificationSettings(
    NotificationSettingsModel settings,
  ) async {
    try {
      Logger.info('Updating notification settings', tag: 'SettingsDatasource');

      await Future.delayed(Duration(milliseconds: 500));

      Logger.info(
        'Notification settings updated successfully',
        tag: 'SettingsDatasource',
      );
      return true;
    } catch (e) {
      Logger.error(
        'Error updating notification settings',
        tag: 'SettingsDatasource',
        error: e,
      );
      rethrow;
    }
  }
}
