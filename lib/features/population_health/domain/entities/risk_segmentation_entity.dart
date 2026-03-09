import 'package:freezed_annotation/freezed_annotation.dart';

part 'risk_segmentation_entity.freezed.dart';

@freezed
abstract class RiskSegmentationEntity with _$RiskSegmentationEntity {
  const factory RiskSegmentationEntity({
    required String id,
    required String segmentName,
    required int population,
    required double populationPercentage,
    required String riskLevel,
    required double avgRiskScore,
    required double estimatedAnnualCost,
    required double potentialSavings,
    required int activeInterventions,
    required List<String> topConditions,
    required String recommendedAction,
  }) = _RiskSegmentationEntity;
}
