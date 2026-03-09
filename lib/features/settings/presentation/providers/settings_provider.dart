import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/settings_datasource.dart';
import '../../domain/entities/user_profile_entity.dart';
import '../../domain/entities/user_preferences_entity.dart';
import '../../domain/entities/notification_settings_entity.dart';

part 'settings_provider.g.dart';

// Datasource Provider
@Riverpod(keepAlive: true)
SettingsDatasource settingsDatasource(Ref ref) {
  return SettingsDatasource();
}

// User Profile Provider
@riverpod
Future<UserProfileEntity> userProfile(Ref ref) async {
  final datasource = ref.watch(settingsDatasourceProvider);
  final model = await datasource.fetchUserProfile();
  return model.toEntity();
}

// User Preferences Provider
@riverpod
Future<UserPreferencesEntity> userPreferences(Ref ref) async {
  final datasource = ref.watch(settingsDatasourceProvider);
  final model = await datasource.fetchUserPreferences();
  return model.toEntity();
}

// Notification Settings Provider
@riverpod
Future<NotificationSettingsEntity> notificationSettings(Ref ref) async {
  final datasource = ref.watch(settingsDatasourceProvider);
  final model = await datasource.fetchNotificationSettings();
  return model.toEntity();
}
