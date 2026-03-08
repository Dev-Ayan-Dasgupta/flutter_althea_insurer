import 'dart:math';
import '../../../../core/utils/logger.dart';
import '../models/cluster_stats_model.dart';
import '../models/risk_distribution_model.dart';
import '../models/prevention_metric_model.dart';
import '../models/financial_impact_model.dart';

class DashboardDatasource {
  final Random _random = Random();

  // Mock API call to fetch cluster stats
  Future<ClusterStatsModel> fetchClusterStats() async {
    try {
      Logger.info('Fetching cluster stats', tag: 'DashboardDatasource');

      // Simulate network delay
      await Future.delayed(Duration(seconds: 1));

      final stats = ClusterStatsModel(
        totalLives: 10000,
        activeLives: 3200 + _random.nextInt(100),
        highRiskPatients: 850 + _random.nextInt(50),
        ambulancesAvailable: 4 + _random.nextInt(2),
        nursesOnDuty: 12 + _random.nextInt(4),
        pharmaciesActive: 8 + _random.nextInt(2),
        averageResponseTime: 8.5 + _random.nextDouble() * 2,
      );

      Logger.info(
        'Cluster stats fetched successfully',
        tag: 'DashboardDatasource',
      );
      return stats;
    } catch (e) {
      Logger.error(
        'Error fetching cluster stats',
        tag: 'DashboardDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Mock API call to fetch risk distribution
  Future<List<RiskDistributionModel>> fetchRiskDistribution() async {
    try {
      Logger.info('Fetching risk distribution', tag: 'DashboardDatasource');

      await Future.delayed(Duration(milliseconds: 800));

      final distribution = [
        RiskDistributionModel(
          riskLevel: 'Low Risk',
          count: 6200 + _random.nextInt(100),
          percentage: 62.0,
        ),
        RiskDistributionModel(
          riskLevel: 'Moderate Risk',
          count: 2700 + _random.nextInt(50),
          percentage: 27.0,
        ),
        RiskDistributionModel(
          riskLevel: 'High Risk',
          count: 850 + _random.nextInt(30),
          percentage: 8.5,
        ),
        RiskDistributionModel(
          riskLevel: 'Critical',
          count: 250 + _random.nextInt(20),
          percentage: 2.5,
        ),
      ];

      Logger.info(
        'Risk distribution fetched successfully',
        tag: 'DashboardDatasource',
      );
      return distribution;
    } catch (e) {
      Logger.error(
        'Error fetching risk distribution',
        tag: 'DashboardDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Mock API call to fetch prevention metrics
  Future<List<PreventionMetricModel>> fetchPreventionMetrics() async {
    try {
      Logger.info('Fetching prevention metrics', tag: 'DashboardDatasource');

      await Future.delayed(Duration(milliseconds: 600));

      final metrics = [
        PreventionMetricModel(
          type: 'Hospitalizations Averted',
          count: 14 + _random.nextInt(5),
          period: 'This Month',
          trend: 12.5 + _random.nextDouble() * 5,
        ),
        PreventionMetricModel(
          type: 'Medication Adherence Alerts',
          count: 87 + _random.nextInt(10),
          period: 'This Week',
          trend: 8.2 + _random.nextDouble() * 3,
        ),
        PreventionMetricModel(
          type: 'Fall Risk Interventions',
          count: 23 + _random.nextInt(5),
          period: 'This Month',
          trend: 15.3 + _random.nextDouble() * 5,
        ),
        PreventionMetricModel(
          type: 'Emergency Triage Responses',
          count: 31 + _random.nextInt(5),
          period: 'This Month',
          trend: -3.2 + _random.nextDouble() * 2,
        ),
      ];

      Logger.info(
        'Prevention metrics fetched successfully',
        tag: 'DashboardDatasource',
      );
      return metrics;
    } catch (e) {
      Logger.error(
        'Error fetching prevention metrics',
        tag: 'DashboardDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Mock API call to fetch financial impact
  Future<FinancialImpactModel> fetchFinancialImpact() async {
    try {
      Logger.info('Fetching financial impact', tag: 'DashboardDatasource');

      await Future.delayed(Duration(milliseconds: 700));

      final hospitalizationsAvoided = 14 + _random.nextInt(5);
      final averageClaimCost = 150000.0;
      final totalSavings = hospitalizationsAvoided * averageClaimCost;
      final platformRevenue = 10000 * 49; // 10k lives * ₹49/month
      final roi = (totalSavings / platformRevenue) * 100;

      final impact = FinancialImpactModel(
        hospitalizationsAvoided: hospitalizationsAvoided.toDouble(),
        averageClaimCost: averageClaimCost,
        totalSavings: totalSavings,
        platformRevenue: platformRevenue.toDouble(),
        roi: roi,
      );

      Logger.info(
        'Financial impact fetched successfully',
        tag: 'DashboardDatasource',
      );
      return impact;
    } catch (e) {
      Logger.error(
        'Error fetching financial impact',
        tag: 'DashboardDatasource',
        error: e,
      );
      rethrow;
    }
  }
}
