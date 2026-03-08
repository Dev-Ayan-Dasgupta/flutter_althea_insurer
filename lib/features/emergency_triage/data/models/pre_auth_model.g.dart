// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PreAuthModel _$PreAuthModelFromJson(Map<String, dynamic> json) =>
    _PreAuthModel(
      id: json['id'] as String,
      emergencyCaseId: json['emergencyCaseId'] as String,
      status: json['status'] as String,
      approvedAmount: (json['approvedAmount'] as num).toDouble(),
      approvedBy: json['approvedBy'] as String,
      approvedAt: DateTime.parse(json['approvedAt'] as String),
      rejectionReason: json['rejectionReason'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$PreAuthModelToJson(_PreAuthModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'emergencyCaseId': instance.emergencyCaseId,
      'status': instance.status,
      'approvedAmount': instance.approvedAmount,
      'approvedBy': instance.approvedBy,
      'approvedAt': instance.approvedAt.toIso8601String(),
      'rejectionReason': instance.rejectionReason,
      'notes': instance.notes,
    };
