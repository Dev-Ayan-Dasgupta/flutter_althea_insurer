import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/risk_segmentation_entity.dart';

part 'risk_segmentation_model.freezed.dart';
part 'risk_segmentation_model.g.dart';

@freezed
abstract class RiskSegmentationModel with _$RiskSegmentationModel {
  const RiskSegmentationModel._();

  const factory RiskSegmentationModel({
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
  }) = _RiskSegmentationModel;

  factory RiskSegmentationModel.fromJson(Map<String, dynamic> json) =>
      _$RiskSegmentationModelFromJson(json);

  RiskSegmentationEntity toEntity() => RiskSegmentationEntity(
    id: id,
    segmentName: segmentName,
    population: population,
    populationPercentage: populationPercentage,
    riskLevel: riskLevel,
    avgRiskScore: avgRiskScore,
    estimatedAnnualCost: estimatedAnnualCost,
    potentialSavings: potentialSavings,
    activeInterventions: activeInterventions,
    topConditions: topConditions,
    recommendedAction: recommendedAction,
  );
}
