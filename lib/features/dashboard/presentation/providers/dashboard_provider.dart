import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/dashboard_datasource.dart';
import '../../domain/entities/cluster_stats_entity.dart';
import '../../domain/entities/risk_distribution_entity.dart';
import '../../domain/entities/prevention_metric_entity.dart';
import '../../domain/entities/financial_impact_entity.dart';

part 'dashboard_provider.g.dart';

// Datasource Provider
@Riverpod(keepAlive: true)
DashboardDatasource dashboardDatasource(Ref ref) {
  return DashboardDatasource();
}

// Cluster Stats Provider
@riverpod
Future<ClusterStatsEntity> clusterStats(Ref ref) async {
  final datasource = ref.watch(dashboardDatasourceProvider);
  final model = await datasource.fetchClusterStats();
  return model.toEntity();
}

// Risk Distribution Provider
@riverpod
Future<List<RiskDistributionEntity>> riskDistribution(Ref ref) async {
  final datasource = ref.watch(dashboardDatasourceProvider);
  final models = await datasource.fetchRiskDistribution();
  return models.map((model) => model.toEntity()).toList();
}

// Prevention Metrics Provider
@riverpod
Future<List<PreventionMetricEntity>> preventionMetrics(Ref ref) async {
  final datasource = ref.watch(dashboardDatasourceProvider);
  final models = await datasource.fetchPreventionMetrics();
  return models.map((model) => model.toEntity()).toList();
}

// Financial Impact Provider
@riverpod
Future<FinancialImpactEntity> financialImpact(Ref ref) async {
  final datasource = ref.watch(dashboardDatasourceProvider);
  final model = await datasource.fetchFinancialImpact();
  return model.toEntity();
}

// Auto-refresh provider (refreshes every 30 seconds)
@riverpod
class DashboardRefresh extends _$DashboardRefresh {
  @override
  FutureOr<void> build() async {
    // Auto-refresh every 30 seconds
    final timer = Stream.periodic(Duration(seconds: 30));

    await for (final _ in timer) {
      ref.invalidate(clusterStatsProvider);
      ref.invalidate(riskDistributionProvider);
      ref.invalidate(preventionMetricsProvider);
      ref.invalidate(financialImpactProvider);
    }
  }

  void refresh() {
    ref.invalidate(clusterStatsProvider);
    ref.invalidate(riskDistributionProvider);
    ref.invalidate(preventionMetricsProvider);
    ref.invalidate(financialImpactProvider);
  }
}
