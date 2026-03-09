// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_preference_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationPreferenceModel _$NotificationPreferenceModelFromJson(
  Map<String, dynamic> json,
) => _NotificationPreferenceModel(
  userId: json['userId'] as String,
  emailEnabled: json['emailEnabled'] as bool,
  pushEnabled: json['pushEnabled'] as bool,
  smsEnabled: json['smsEnabled'] as bool,
  inAppEnabled: json['inAppEnabled'] as bool,
  emergencyAlerts: json['emergencyAlerts'] as bool,
  fraudAlerts: json['fraudAlerts'] as bool,
  safetyAlerts: json['safetyAlerts'] as bool,
  medicationAlerts: json['medicationAlerts'] as bool,
  riskAlerts: json['riskAlerts'] as bool,
  systemAlerts: json['systemAlerts'] as bool,
  claimsAlerts: json['claimsAlerts'] as bool,
  networkAlerts: json['networkAlerts'] as bool,
  dailySummary: json['dailySummary'] as bool,
  weeklySummary: json['weeklySummary'] as bool,
  monthlySummary: json['monthlySummary'] as bool,
  quietHoursEnabled: json['quietHoursEnabled'] as bool,
  quietHoursStart: json['quietHoursStart'] as String?,
  quietHoursEnd: json['quietHoursEnd'] as String?,
  soundEnabled: json['soundEnabled'] as bool,
  vibrationEnabled: json['vibrationEnabled'] as bool,
  ledEnabled: json['ledEnabled'] as bool,
  notificationPriority: (json['notificationPriority'] as num).toInt(),
  mutedKeywords: (json['mutedKeywords'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  mutedProviders: (json['mutedProviders'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$NotificationPreferenceModelToJson(
  _NotificationPreferenceModel instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'emailEnabled': instance.emailEnabled,
  'pushEnabled': instance.pushEnabled,
  'smsEnabled': instance.smsEnabled,
  'inAppEnabled': instance.inAppEnabled,
  'emergencyAlerts': instance.emergencyAlerts,
  'fraudAlerts': instance.fraudAlerts,
  'safetyAlerts': instance.safetyAlerts,
  'medicationAlerts': instance.medicationAlerts,
  'riskAlerts': instance.riskAlerts,
  'systemAlerts': instance.systemAlerts,
  'claimsAlerts': instance.claimsAlerts,
  'networkAlerts': instance.networkAlerts,
  'dailySummary': instance.dailySummary,
  'weeklySummary': instance.weeklySummary,
  'monthlySummary': instance.monthlySummary,
  'quietHoursEnabled': instance.quietHoursEnabled,
  'quietHoursStart': instance.quietHoursStart,
  'quietHoursEnd': instance.quietHoursEnd,
  'soundEnabled': instance.soundEnabled,
  'vibrationEnabled': instance.vibrationEnabled,
  'ledEnabled': instance.ledEnabled,
  'notificationPriority': instance.notificationPriority,
  'mutedKeywords': instance.mutedKeywords,
  'mutedProviders': instance.mutedProviders,
};
