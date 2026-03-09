// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fraud_alert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FraudAlertModel _$FraudAlertModelFromJson(Map<String, dynamic> json) =>
    _FraudAlertModel(
      id: json['id'] as String,
      fraudType: json['fraudType'] as String,
      severity: json['severity'] as String,
      status: json['status'] as String,
      claimId: json['claimId'] as String,
      patientName: json['patientName'] as String,
      providerId: json['providerId'] as String,
      providerName: json['providerName'] as String,
      claimAmount: (json['claimAmount'] as num).toDouble(),
      fraudProbability: (json['fraudProbability'] as num).toDouble(),
      riskScore: (json['riskScore'] as num).toInt(),
      detectionReason: json['detectionReason'] as String,
      anomalies: (json['anomalies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      detectedAt: DateTime.parse(json['detectedAt'] as String),
      investigatorAssigned: json['investigatorAssigned'] as String?,
      investigationStarted: json['investigationStarted'] == null
          ? null
          : DateTime.parse(json['investigationStarted'] as String),
      resolutionNotes: json['resolutionNotes'] as String?,
    );

Map<String, dynamic> _$FraudAlertModelToJson(_FraudAlertModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fraudType': instance.fraudType,
      'severity': instance.severity,
      'status': instance.status,
      'claimId': instance.claimId,
      'patientName': instance.patientName,
      'providerId': instance.providerId,
      'providerName': instance.providerName,
      'claimAmount': instance.claimAmount,
      'fraudProbability': instance.fraudProbability,
      'riskScore': instance.riskScore,
      'detectionReason': instance.detectionReason,
      'anomalies': instance.anomalies,
      'detectedAt': instance.detectedAt.toIso8601String(),
      'investigatorAssigned': instance.investigatorAssigned,
      'investigationStarted': instance.investigationStarted?.toIso8601String(),
      'resolutionNotes': instance.resolutionNotes,
    };
