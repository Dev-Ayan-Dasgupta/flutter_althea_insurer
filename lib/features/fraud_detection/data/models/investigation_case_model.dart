import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/investigation_case_entity.dart';

part 'investigation_case_model.freezed.dart';
part 'investigation_case_model.g.dart';

@freezed
abstract class InvestigationCaseModel with _$InvestigationCaseModel {
  const InvestigationCaseModel._();

  const factory InvestigationCaseModel({
    required String id,
    required String caseNumber,
    required String title,
    required String status,
    required String priority,
    required String outcome,
    required List<String> claimIds,
    required String primarySuspect,
    required String suspectType,
    required double totalAmountInvolved,
    required double recoveredAmount,
    required int relatedClaims,
    required DateTime openedAt,
    DateTime? closedAt,
    required String investigator,
    required List<String> evidenceCollected,
    required List<String> findings,
    String? actionTaken,
  }) = _InvestigationCaseModel;

  factory InvestigationCaseModel.fromJson(Map<String, dynamic> json) =>
      _$InvestigationCaseModelFromJson(json);

  InvestigationCaseEntity toEntity() {
    CaseStatus statusEnum;
    switch (status.toLowerCase()) {
      case 'open':
        statusEnum = CaseStatus.open;
        break;
      case 'investigating':
        statusEnum = CaseStatus.investigating;
        break;
      case 'evidence_gathering':
        statusEnum = CaseStatus.evidenceGathering;
        break;
      case 'under_review':
        statusEnum = CaseStatus.underReview;
        break;
      case 'closed':
        statusEnum = CaseStatus.closed;
        break;
      default:
        statusEnum = CaseStatus.open;
    }

    CasePriority priorityEnum;
    switch (priority.toLowerCase()) {
      case 'low':
        priorityEnum = CasePriority.low;
        break;
      case 'medium':
        priorityEnum = CasePriority.medium;
        break;
      case 'high':
        priorityEnum = CasePriority.high;
        break;
      case 'urgent':
        priorityEnum = CasePriority.urgent;
        break;
      default:
        priorityEnum = CasePriority.medium;
    }

    CaseOutcome outcomeEnum;
    switch (outcome.toLowerCase()) {
      case 'confirmed':
        outcomeEnum = CaseOutcome.confirmed;
        break;
      case 'not_fraud':
        outcomeEnum = CaseOutcome.notFraud;
        break;
      case 'partial_fraud':
        outcomeEnum = CaseOutcome.partialFraud;
        break;
      case 'pending':
        outcomeEnum = CaseOutcome.pending;
        break;
      default:
        outcomeEnum = CaseOutcome.pending;
    }

    return InvestigationCaseEntity(
      id: id,
      caseNumber: caseNumber,
      title: title,
      status: statusEnum,
      priority: priorityEnum,
      outcome: outcomeEnum,
      claimIds: claimIds,
      primarySuspect: primarySuspect,
      suspectType: suspectType,
      totalAmountInvolved: totalAmountInvolved,
      recoveredAmount: recoveredAmount,
      relatedClaims: relatedClaims,
      openedAt: openedAt,
      closedAt: closedAt,
      investigator: investigator,
      evidenceCollected: evidenceCollected,
      findings: findings,
      actionTaken: actionTaken,
    );
  }
}
