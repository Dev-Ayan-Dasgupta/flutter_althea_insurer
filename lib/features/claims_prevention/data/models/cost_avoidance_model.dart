import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/cost_avoidance_entity.dart';

part 'cost_avoidance_model.freezed.dart';
part 'cost_avoidance_model.g.dart';

@freezed
abstract class CostAvoidanceModel with _$CostAvoidanceModel {
  const CostAvoidanceModel._();

  const factory CostAvoidanceModel({
    required String period,
    required double predictedClaims,
    required double actualClaims,
    required double avoidedClaims,
    required double platformCost,
    required double netSavings,
    required double roi,
    required int interventionsPerformed,
    required int patientsImpacted,
  }) = _CostAvoidanceModel;

  factory CostAvoidanceModel.fromJson(Map<String, dynamic> json) =>
      _$CostAvoidanceModelFromJson(json);

  CostAvoidanceEntity toEntity() => CostAvoidanceEntity(
    period: period,
    predictedClaims: predictedClaims,
    actualClaims: actualClaims,
    avoidedClaims: avoidedClaims,
    platformCost: platformCost,
    netSavings: netSavings,
    roi: roi,
    interventionsPerformed: interventionsPerformed,
    patientsImpacted: patientsImpacted,
  );
}
