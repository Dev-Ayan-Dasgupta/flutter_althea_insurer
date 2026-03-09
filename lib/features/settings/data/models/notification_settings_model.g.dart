// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationSettingsModel _$NotificationSettingsModelFromJson(
  Map<String, dynamic> json,
) => _NotificationSettingsModel(
  userId: json['userId'] as String,
  emailNotifications: json['emailNotifications'] as bool,
  pushNotifications: json['pushNotifications'] as bool,
  smsNotifications: json['smsNotifications'] as bool,
  emergencyAlerts: json['emergencyAlerts'] as bool,
  fraudAlerts: json['fraudAlerts'] as bool,
  safetyAlerts: json['safetyAlerts'] as bool,
  medicationAlerts: json['medicationAlerts'] as bool,
  riskAlerts: json['riskAlerts'] as bool,
  systemAlerts: json['systemAlerts'] as bool,
  dailySummary: json['dailySummary'] as bool,
  weeklySummary: json['weeklySummary'] as bool,
  monthlySummary: json['monthlySummary'] as bool,
  quietHoursStart: json['quietHoursStart'] as String?,
  quietHoursEnd: json['quietHoursEnd'] as String?,
  quietHoursEnabled: json['quietHoursEnabled'] as bool,
);

Map<String, dynamic> _$NotificationSettingsModelToJson(
  _NotificationSettingsModel instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'emailNotifications': instance.emailNotifications,
  'pushNotifications': instance.pushNotifications,
  'smsNotifications': instance.smsNotifications,
  'emergencyAlerts': instance.emergencyAlerts,
  'fraudAlerts': instance.fraudAlerts,
  'safetyAlerts': instance.safetyAlerts,
  'medicationAlerts': instance.medicationAlerts,
  'riskAlerts': instance.riskAlerts,
  'systemAlerts': instance.systemAlerts,
  'dailySummary': instance.dailySummary,
  'weeklySummary': instance.weeklySummary,
  'monthlySummary': instance.monthlySummary,
  'quietHoursStart': instance.quietHoursStart,
  'quietHoursEnd': instance.quietHoursEnd,
  'quietHoursEnabled': instance.quietHoursEnabled,
};
