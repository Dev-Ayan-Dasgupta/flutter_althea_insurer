// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerificationStatusModel _$VerificationStatusModelFromJson(
  Map<String, dynamic> json,
) => _VerificationStatusModel(
  status: json['status'] as String,
  bleVerified: json['bleVerified'] as bool,
  gpsVerified: json['gpsVerified'] as bool,
  timestampVerified: json['timestampVerified'] as bool,
  flagReason: json['flagReason'] as String?,
);

Map<String, dynamic> _$VerificationStatusModelToJson(
  _VerificationStatusModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'bleVerified': instance.bleVerified,
  'gpsVerified': instance.gpsVerified,
  'timestampVerified': instance.timestampVerified,
  'flagReason': instance.flagReason,
};
