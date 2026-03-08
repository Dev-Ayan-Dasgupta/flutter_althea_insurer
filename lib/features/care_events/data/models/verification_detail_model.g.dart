// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerificationDetailModel _$VerificationDetailModelFromJson(
  Map<String, dynamic> json,
) => _VerificationDetailModel(
  bleVerified: json['bleVerified'] as bool,
  gpsVerified: json['gpsVerified'] as bool,
  timestampVerified: json['timestampVerified'] as bool,
  bleDeviceId: json['bleDeviceId'] as String?,
  gpsLatitude: (json['gpsLatitude'] as num?)?.toDouble(),
  gpsLongitude: (json['gpsLongitude'] as num?)?.toDouble(),
  gpsAccuracy: (json['gpsAccuracy'] as num?)?.toDouble(),
  actualStartTime: json['actualStartTime'] == null
      ? null
      : DateTime.parse(json['actualStartTime'] as String),
  actualEndTime: json['actualEndTime'] == null
      ? null
      : DateTime.parse(json['actualEndTime'] as String),
  actualDuration: (json['actualDuration'] as num?)?.toInt(),
  expectedDuration: (json['expectedDuration'] as num?)?.toInt(),
  manualOverride: json['manualOverride'] as bool?,
  overrideReason: json['overrideReason'] as String?,
  overrideBy: json['overrideBy'] as String?,
);

Map<String, dynamic> _$VerificationDetailModelToJson(
  _VerificationDetailModel instance,
) => <String, dynamic>{
  'bleVerified': instance.bleVerified,
  'gpsVerified': instance.gpsVerified,
  'timestampVerified': instance.timestampVerified,
  'bleDeviceId': instance.bleDeviceId,
  'gpsLatitude': instance.gpsLatitude,
  'gpsLongitude': instance.gpsLongitude,
  'gpsAccuracy': instance.gpsAccuracy,
  'actualStartTime': instance.actualStartTime?.toIso8601String(),
  'actualEndTime': instance.actualEndTime?.toIso8601String(),
  'actualDuration': instance.actualDuration,
  'expectedDuration': instance.expectedDuration,
  'manualOverride': instance.manualOverride,
  'overrideReason': instance.overrideReason,
  'overrideBy': instance.overrideBy,
};
