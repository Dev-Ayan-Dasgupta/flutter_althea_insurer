import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/notification_settings_entity.dart';

part 'notification_settings_model.freezed.dart';
part 'notification_settings_model.g.dart';

@freezed
abstract class NotificationSettingsModel with _$NotificationSettingsModel {
  const NotificationSettingsModel._();

  const factory NotificationSettingsModel({
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
  }) = _NotificationSettingsModel;

  factory NotificationSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingsModelFromJson(json);

  NotificationSettingsEntity toEntity() {
    return NotificationSettingsEntity(
      userId: userId,
      emailNotifications: emailNotifications,
      pushNotifications: pushNotifications,
      smsNotifications: smsNotifications,
      emergencyAlerts: emergencyAlerts,
      fraudAlerts: fraudAlerts,
      safetyAlerts: safetyAlerts,
      medicationAlerts: medicationAlerts,
      riskAlerts: riskAlerts,
      systemAlerts: systemAlerts,
      dailySummary: dailySummary,
      weeklySummary: weeklySummary,
      monthlySummary: monthlySummary,
      quietHoursStart: quietHoursStart,
      quietHoursEnd: quietHoursEnd,
      quietHoursEnabled: quietHoursEnabled,
    );
  }
}
