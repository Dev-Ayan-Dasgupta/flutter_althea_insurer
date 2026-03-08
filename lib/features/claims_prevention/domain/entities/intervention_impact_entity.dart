import 'package:freezed_annotation/freezed_annotation.dart';

part 'intervention_impact_entity.freezed.dart';

enum InterventionCategory {
  nursing,
  medication,
  monitoring,
  emergency,
  lifestyle,
}

@freezed
abstract class InterventionImpactEntity with _$InterventionImpactEntity {
  const factory InterventionImpactEntity({
    required String id,
    required InterventionCategory category,
    required String name,
    required int totalInterventions,
    required int successfulOutcomes,
    required double successRate,
    required double avgCostPerIntervention,
    required double avgSavingsPerSuccess,
    required double totalSavings,
    required double roi,
  }) = _InterventionImpactEntity;
}
