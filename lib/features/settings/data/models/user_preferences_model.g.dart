// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserPreferencesModel _$UserPreferencesModelFromJson(
  Map<String, dynamic> json,
) => _UserPreferencesModel(
  userId: json['userId'] as String,
  darkMode: json['darkMode'] as bool,
  accentColor: json['accentColor'] as String,
  compactView: json['compactView'] as bool,
  showAvatars: json['showAvatars'] as bool,
  itemsPerPage: (json['itemsPerPage'] as num).toInt(),
  dateFormat: json['dateFormat'] as String,
  timeFormat: json['timeFormat'] as String,
  currency: json['currency'] as String,
  autoRefresh: json['autoRefresh'] as bool,
  refreshInterval: (json['refreshInterval'] as num).toInt(),
  soundEnabled: json['soundEnabled'] as bool,
  vibrationEnabled: json['vibrationEnabled'] as bool,
);

Map<String, dynamic> _$UserPreferencesModelToJson(
  _UserPreferencesModel instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'darkMode': instance.darkMode,
  'accentColor': instance.accentColor,
  'compactView': instance.compactView,
  'showAvatars': instance.showAvatars,
  'itemsPerPage': instance.itemsPerPage,
  'dateFormat': instance.dateFormat,
  'timeFormat': instance.timeFormat,
  'currency': instance.currency,
  'autoRefresh': instance.autoRefresh,
  'refreshInterval': instance.refreshInterval,
  'soundEnabled': instance.soundEnabled,
  'vibrationEnabled': instance.vibrationEnabled,
};
