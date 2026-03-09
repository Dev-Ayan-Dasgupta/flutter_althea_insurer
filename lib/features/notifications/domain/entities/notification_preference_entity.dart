import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_preference_entity.freezed.dart';

@freezed
abstract class NotificationPreferenceEntity
    with _$NotificationPreferenceEntity {
  const factory NotificationPreferenceEntity({
    required String userId,
    // Channels
    required bool emailEnabled,
    required bool pushEnabled,
    required bool smsEnabled,
    required bool inAppEnabled,
    // Alert Types
    required bool emergencyAlerts,
    required bool fraudAlerts,
    required bool safetyAlerts,
    required bool medicationAlerts,
    required bool riskAlerts,
    required bool systemAlerts,
    required bool claimsAlerts,
    required bool networkAlerts,
    // Summaries
    required bool dailySummary,
    required bool weeklySummary,
    required bool monthlySummary,
    // Quiet Hours
    required bool quietHoursEnabled,
    String? quietHoursStart,
    String? quietHoursEnd,
    // Advanced
    required bool soundEnabled,
    required bool vibrationEnabled,
    required bool ledEnabled,
    required int notificationPriority,
    required List<String> mutedKeywords,
    required List<String> mutedProviders,
  }) = _NotificationPreferenceEntity;
}
