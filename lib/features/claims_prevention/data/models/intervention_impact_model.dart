import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/intervention_impact_entity.dart';

part 'intervention_impact_model.freezed.dart';
part 'intervention_impact_model.g.dart';

@freezed
abstract class InterventionImpactModel with _$InterventionImpactModel {
  const InterventionImpactModel._();

  const factory InterventionImpactModel({
    required String id,
    required String category,
    required String name,
    required int totalInterventions,
    required int successfulOutcomes,
    required double successRate,
    required double avgCostPerIntervention,
    required double avgSavingsPerSuccess,
    required double totalSavings,
    required double roi,
  }) = _InterventionImpactModel;

  factory InterventionImpactModel.fromJson(Map<String, dynamic> json) =>
      _$InterventionImpactModelFromJson(json);

  InterventionImpactEntity toEntity() {
    InterventionCategory categoryEnum;
    switch (category.toLowerCase()) {
      case 'nursing':
        categoryEnum = InterventionCategory.nursing;
        break;
      case 'medication':
        categoryEnum = InterventionCategory.medication;
        break;
      case 'monitoring':
        categoryEnum = InterventionCategory.monitoring;
        break;
      case 'emergency':
        categoryEnum = InterventionCategory.emergency;
        break;
      case 'lifestyle':
        categoryEnum = InterventionCategory.lifestyle;
        break;
      default:
        categoryEnum = InterventionCategory.monitoring;
    }

    return InterventionImpactEntity(
      id: id,
      category: categoryEnum,
      name: name,
      totalInterventions: totalInterventions,
      successfulOutcomes: successfulOutcomes,
      successRate: successRate,
      avgCostPerIntervention: avgCostPerIntervention,
      avgSavingsPerSuccess: avgSavingsPerSuccess,
      totalSavings: totalSavings,
      roi: roi,
    );
  }
}
