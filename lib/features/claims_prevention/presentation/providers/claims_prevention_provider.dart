import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/claims_prevention_datasource.dart';
import '../../domain/entities/prevention_metric_entity.dart';
import '../../domain/entities/cost_avoidance_entity.dart';
import '../../domain/entities/intervention_impact_entity.dart';

part 'claims_prevention_provider.g.dart';

// Datasource Provider
@Riverpod(keepAlive: true)
ClaimsPreventionDatasource claimsPreventionDatasource(Ref ref) {
  return ClaimsPreventionDatasource();
}

// Prevention Metrics Provider
@riverpod
Future<List<PreventionMetricEntity>> preventionMetrics(Ref ref) async {
  final datasource = ref.watch(claimsPreventionDatasourceProvider);
  final models = await datasource.fetchPreventionMetrics();
  return models.map((model) => model.toEntity()).toList();
}

// Cost Avoidance Provider
@riverpod
Future<CostAvoidanceEntity> costAvoidance(Ref ref) async {
  final datasource = ref.watch(claimsPreventionDatasourceProvider);
  final model = await datasource.fetchCostAvoidance();
  return model.toEntity();
}

// Intervention Impact Provider
@riverpod
Future<List<InterventionImpactEntity>> interventionImpact(Ref ref) async {
  final datasource = ref.watch(claimsPreventionDatasourceProvider);
  final models = await datasource.fetchInterventionImpact();
  return models.map((model) => model.toEntity()).toList();
}

// Summary Statistics Provider
@riverpod
Future<ClaimsPreventionStats> claimsPreventionStats(Ref ref) async {
  final metrics = await ref.watch(preventionMetricsProvider.future);
  final costAvoidance = await ref.watch(costAvoidanceProvider.future);
  final impacts = await ref.watch(interventionImpactProvider.future);

  final totalPreventions = metrics.fold<int>(0, (sum, m) => sum + m.count);
  final totalCostAvoided = metrics.fold<double>(
    0.0,
    (sum, m) => sum + m.totalCostAvoided,
  );
  final avgSuccessRate = metrics.isEmpty
      ? 0.0
      : metrics.fold<double>(0.0, (sum, m) => sum + m.successRate) /
            metrics.length;

  final totalInterventions = impacts.fold<int>(
    0,
    (sum, i) => sum + i.totalInterventions,
  );
  final totalSavingsFromInterventions = impacts.fold<double>(
    0.0,
    (sum, i) => sum + i.totalSavings,
  );

  return ClaimsPreventionStats(
    totalPreventions: totalPreventions,
    totalCostAvoided: totalCostAvoided,
    avgSuccessRate: avgSuccessRate,
    roi: costAvoidance.roi,
    netSavings: costAvoidance.netSavings,
    platformCost: costAvoidance.platformCost,
    totalInterventions: totalInterventions,
    totalSavingsFromInterventions: totalSavingsFromInterventions,
  );
}

class ClaimsPreventionStats {
  final int totalPreventions;
  final double totalCostAvoided;
  final double avgSuccessRate;
  final double roi;
  final double netSavings;
  final double platformCost;
  final int totalInterventions;
  final double totalSavingsFromInterventions;

  ClaimsPreventionStats({
    required this.totalPreventions,
    required this.totalCostAvoided,
    required this.avgSuccessRate,
    required this.roi,
    required this.netSavings,
    required this.platformCost,
    required this.totalInterventions,
    required this.totalSavingsFromInterventions,
  });
}
