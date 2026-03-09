import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_settings_entity.freezed.dart';

@freezed
abstract class NotificationSettingsEntity with _$NotificationSettingsEntity {
  const factory NotificationSettingsEntity({
    required String userId,
    required bool emailNotifications,
    required bool pushNotifications,
    required bool smsNotifications,
    required bool emergencyAlerts,
    required bool fraudAlerts,
    required bool safetyAlerts,
    required bool medicationAlerts,
    required bool riskAlerts,
    required bool systemAlerts,
    required bool dailySummary,
    required bool weeklySummary,
    required bool monthlySummary,
    String? quietHoursStart,
    String? quietHoursEnd,
    required bool quietHoursEnabled,
  }) = _NotificationSettingsEntity;
}
