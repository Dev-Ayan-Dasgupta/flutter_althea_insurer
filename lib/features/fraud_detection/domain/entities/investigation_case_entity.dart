import 'package:freezed_annotation/freezed_annotation.dart';

part 'investigation_case_entity.freezed.dart';

enum CaseStatus { open, investigating, evidenceGathering, underReview, closed }

enum CasePriority { low, medium, high, urgent }

enum CaseOutcome { confirmed, notFraud, partialFraud, pending }

@freezed
abstract class InvestigationCaseEntity with _$InvestigationCaseEntity {
  const factory InvestigationCaseEntity({
    required String id,
    required String caseNumber,
    required String title,
    required CaseStatus status,
    required CasePriority priority,
    required CaseOutcome outcome,
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
  }) = _InvestigationCaseEntity;
}
