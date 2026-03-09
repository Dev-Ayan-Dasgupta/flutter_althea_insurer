// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adherence_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdherenceRecordModel _$AdherenceRecordModelFromJson(
  Map<String, dynamic> json,
) => _AdherenceRecordModel(
  id: json['id'] as String,
  medicationId: json['medicationId'] as String,
  medicationName: json['medicationName'] as String,
  patientId: json['patientId'] as String,
  patientName: json['patientName'] as String,
  scheduledTime: DateTime.parse(json['scheduledTime'] as String),
  actualTime: json['actualTime'] == null
      ? null
      : DateTime.parse(json['actualTime'] as String),
  status: json['status'] as String,
  reason: json['reason'] as String?,
  notes: json['notes'] as String?,
  verifiedByCaregiver: json['verifiedByCaregiver'] as bool?,
);

Map<String, dynamic> _$AdherenceRecordModelToJson(
  _AdherenceRecordModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'medicationId': instance.medicationId,
  'medicationName': instance.medicationName,
  'patientId': instance.patientId,
  'patientName': instance.patientName,
  'scheduledTime': instance.scheduledTime.toIso8601String(),
  'actualTime': instance.actualTime?.toIso8601String(),
  'status': instance.status,
  'reason': instance.reason,
  'notes': instance.notes,
  'verifiedByCaregiver': instance.verifiedByCaregiver,
};
