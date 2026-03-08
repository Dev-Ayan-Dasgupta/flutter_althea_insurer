import 'package:freezed_annotation/freezed_annotation.dart';

part 'cost_avoidance_entity.freezed.dart';

@freezed
abstract class CostAvoidanceEntity with _$CostAvoidanceEntity {
  const factory CostAvoidanceEntity({
    required String period,
    required double predictedClaims,
    required double actualClaims,
    required double avoidedClaims,
    required double platformCost,
    required double netSavings,
    required double roi,
    required int interventionsPerformed,
    required int patientsImpacted,
  }) = _CostAvoidanceEntity;
}
