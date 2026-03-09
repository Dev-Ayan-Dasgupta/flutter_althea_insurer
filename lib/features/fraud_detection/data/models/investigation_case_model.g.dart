// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investigation_case_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InvestigationCaseModel _$InvestigationCaseModelFromJson(
  Map<String, dynamic> json,
) => _InvestigationCaseModel(
  id: json['id'] as String,
  caseNumber: json['caseNumber'] as String,
  title: json['title'] as String,
  status: json['status'] as String,
  priority: json['priority'] as String,
  outcome: json['outcome'] as String,
  claimIds: (json['claimIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  primarySuspect: json['primarySuspect'] as String,
  suspectType: json['suspectType'] as String,
  totalAmountInvolved: (json['totalAmountInvolved'] as num).toDouble(),
  recoveredAmount: (json['recoveredAmount'] as num).toDouble(),
  relatedClaims: (json['relatedClaims'] as num).toInt(),
  openedAt: DateTime.parse(json['openedAt'] as String),
  closedAt: json['closedAt'] == null
      ? null
      : DateTime.parse(json['closedAt'] as String),
  investigator: json['investigator'] as String,
  evidenceCollected: (json['evidenceCollected'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  findings: (json['findings'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  actionTaken: json['actionTaken'] as String?,
);

Map<String, dynamic> _$InvestigationCaseModelToJson(
  _InvestigationCaseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'caseNumber': instance.caseNumber,
  'title': instance.title,
  'status': instance.status,
  'priority': instance.priority,
  'outcome': instance.outcome,
  'claimIds': instance.claimIds,
  'primarySuspect': instance.primarySuspect,
  'suspectType': instance.suspectType,
  'totalAmountInvolved': instance.totalAmountInvolved,
  'recoveredAmount': instance.recoveredAmount,
  'relatedClaims': instance.relatedClaims,
  'openedAt': instance.openedAt.toIso8601String(),
  'closedAt': instance.closedAt?.toIso8601String(),
  'investigator': instance.investigator,
  'evidenceCollected': instance.evidenceCollected,
  'findings': instance.findings,
  'actionTaken': instance.actionTaken,
};
