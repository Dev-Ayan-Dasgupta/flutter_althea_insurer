import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/notification_preference_entity.dart';

part 'notification_preference_model.freezed.dart';
part 'notification_preference_model.g.dart';

@freezed
abstract class NotificationPreferenceModel with _$NotificationPreferenceModel {
  const NotificationPreferenceModel._();

  const factory NotificationPreferenceModel({
    required String userId,
    required bool emailEnabled,
    required bool pushEnabled,
    required bool smsEnabled,
    required bool inAppEnabled,
    required bool emergencyAlerts,
    required bool fraudAlerts,
    required bool safetyAlerts,
    required bool medicationAlerts,
    required bool riskAlerts,
    required bool systemAlerts,
    required bool claimsAlerts,
    required bool networkAlerts,
    required bool dailySummary,
    required bool weeklySummary,
    required bool monthlySummary,
    required bool quietHoursEnabled,
    String? quietHoursStart,
    String? quietHoursEnd,
    required bool soundEnabled,
    required bool vibrationEnabled,
    required bool ledEnabled,
    required int notificationPriority,
    required List<String> mutedKeywords,
    required List<String> mutedProviders,
  }) = _NotificationPreferenceModel;

  factory NotificationPreferenceModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationPreferenceModelFromJson(json);

  NotificationPreferenceEntity toEntity() {
    return NotificationPreferenceEntity(
      userId: userId,
      emailEnabled: emailEnabled,
      pushEnabled: pushEnabled,
      smsEnabled: smsEnabled,
      inAppEnabled: inAppEnabled,
      emergencyAlerts: emergencyAlerts,
      fraudAlerts: fraudAlerts,
      safetyAlerts: safetyAlerts,
      medicationAlerts: medicationAlerts,
      riskAlerts: riskAlerts,
      systemAlerts: systemAlerts,
      claimsAlerts: claimsAlerts,
      networkAlerts: networkAlerts,
      dailySummary: dailySummary,
      weeklySummary: weeklySummary,
      monthlySummary: monthlySummary,
      quietHoursEnabled: quietHoursEnabled,
      quietHoursStart: quietHoursStart,
      quietHoursEnd: quietHoursEnd,
      soundEnabled: soundEnabled,
      vibrationEnabled: vibrationEnabled,
      ledEnabled: ledEnabled,
      notificationPriority: notificationPriority,
      mutedKeywords: mutedKeywords,
      mutedProviders: mutedProviders,
    );
  }
}
