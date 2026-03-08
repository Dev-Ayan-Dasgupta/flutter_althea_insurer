import 'dart:math';
import '../../../../core/utils/logger.dart';
import '../models/prevention_metric_model.dart';
import '../models/cost_avoidance_model.dart';
import '../models/intervention_impact_model.dart';

class ClaimsPreventionDatasource {
  final Random _random = Random();

  // Mock API call to fetch prevention metrics
  Future<List<PreventionMetricModel>> fetchPreventionMetrics() async {
    try {
      Logger.info(
        'Fetching prevention metrics',
        tag: 'ClaimsPreventionDatasource',
      );

      await Future.delayed(Duration(milliseconds: 800));

      final now = DateTime.now();

      final metrics = [
        PreventionMetricModel(
          id: 'PM001',
          type: 'hospitalization',
          count: 14 + _random.nextInt(4),
          averageCostAvoided: 150000.0,
          totalCostAvoided: 2100000.0 + (_random.nextDouble() * 300000),
          period: now,
          description: 'Hospitalizations avoided through early intervention',
          successRate: 82.5 + (_random.nextDouble() * 10),
        ),
        PreventionMetricModel(
          id: 'PM002',
          type: 'emergency_visit',
          count: 28 + _random.nextInt(8),
          averageCostAvoided: 25000.0,
          totalCostAvoided: 700000.0 + (_random.nextDouble() * 150000),
          period: now,
          description: 'Emergency room visits prevented',
          successRate: 76.8 + (_random.nextDouble() * 10),
        ),
        PreventionMetricModel(
          id: 'PM003',
          type: 'fall',
          count: 23 + _random.nextInt(5),
          averageCostAvoided: 80000.0,
          totalCostAvoided: 1840000.0 + (_random.nextDouble() * 200000),
          period: now,
          description: 'Fall-related injuries prevented',
          successRate: 88.3 + (_random.nextDouble() * 8),
        ),
        PreventionMetricModel(
          id: 'PM004',
          type: 'chronic_complications',
          count: 45 + _random.nextInt(10),
          averageCostAvoided: 35000.0,
          totalCostAvoided: 1575000.0 + (_random.nextDouble() * 250000),
          period: now,
          description: 'Chronic disease complications avoided',
          successRate: 71.2 + (_random.nextDouble() * 12),
        ),
        PreventionMetricModel(
          id: 'PM005',
          type: 'medication',
          count: 87 + _random.nextInt(15),
          averageCostAvoided: 12000.0,
          totalCostAvoided: 1044000.0 + (_random.nextDouble() * 150000),
          period: now,
          description: 'Medication-related issues prevented',
          successRate: 93.7 + (_random.nextDouble() * 5),
        ),
      ];

      Logger.info(
        'Fetched ${metrics.length} prevention metrics',
        tag: 'ClaimsPreventionDatasource',
      );
      return metrics;
    } catch (e) {
      Logger.error(
        'Error fetching prevention metrics',
        tag: 'ClaimsPreventionDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Mock API call to fetch cost avoidance data
  Future<CostAvoidanceModel> fetchCostAvoidance() async {
    try {
      Logger.info(
        'Fetching cost avoidance data',
        tag: 'ClaimsPreventionDatasource',
      );

      await Future.delayed(Duration(milliseconds: 600));

      final insuredLives = 10000;
      final platformCostPerLife = 49.0;
      final platformCost = insuredLives * platformCostPerLife;

      // Industry average: ₹8,000 per life per year in claims
      final predictedClaims = insuredLives * 8000.0;

      // With AltheaCare: 30-40% reduction
      final reductionRate = 0.35 + (_random.nextDouble() * 0.05);
      final avoidedClaims = predictedClaims * reductionRate;
      final actualClaims = predictedClaims - avoidedClaims;

      final netSavings = avoidedClaims - platformCost;
      final roi = (netSavings / platformCost) * 100;

      final model = CostAvoidanceModel(
        period: 'This Month',
        predictedClaims: predictedClaims,
        actualClaims: actualClaims,
        avoidedClaims: avoidedClaims,
        platformCost: platformCost,
        netSavings: netSavings,
        roi: roi,
        interventionsPerformed: 187 + _random.nextInt(30),
        patientsImpacted: 1250 + _random.nextInt(150),
      );

      Logger.info(
        'Fetched cost avoidance data',
        tag: 'ClaimsPreventionDatasource',
      );
      return model;
    } catch (e) {
      Logger.error(
        'Error fetching cost avoidance',
        tag: 'ClaimsPreventionDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Mock API call to fetch intervention impact
  Future<List<InterventionImpactModel>> fetchInterventionImpact() async {
    try {
      Logger.info(
        'Fetching intervention impact',
        tag: 'ClaimsPreventionDatasource',
      );

      await Future.delayed(Duration(milliseconds: 700));

      final impacts = [
        InterventionImpactModel(
          id: 'II001',
          category: 'nursing',
          name: 'Home Nursing Visits',
          totalInterventions: 342 + _random.nextInt(50),
          successfulOutcomes: 285 + _random.nextInt(40),
          successRate: 83.3 + (_random.nextDouble() * 8),
          avgCostPerIntervention: 800.0,
          avgSavingsPerSuccess: 45000.0,
          totalSavings: 12825000.0,
          roi: 1503.0,
        ),
        InterventionImpactModel(
          id: 'II002',
          category: 'medication',
          name: 'Medication Adherence Monitoring',
          totalInterventions: 876 + _random.nextInt(100),
          successfulOutcomes: 821 + _random.nextInt(80),
          successRate: 93.7 + (_random.nextDouble() * 4),
          avgCostPerIntervention: 150.0,
          avgSavingsPerSuccess: 12000.0,
          totalSavings: 9852000.0,
          roi: 6468.0,
        ),
        InterventionImpactModel(
          id: 'II003',
          category: 'monitoring',
          name: 'Wearable-Based Early Alerts',
          totalInterventions: 1523 + _random.nextInt(150),
          successfulOutcomes: 1187 + _random.nextInt(100),
          successRate: 77.9 + (_random.nextDouble() * 10),
          avgCostPerIntervention: 50.0,
          avgSavingsPerSuccess: 28000.0,
          totalSavings: 33236000.0,
          roi: 43548.0,
        ),
        InterventionImpactModel(
          id: 'II004',
          category: 'emergency',
          name: 'Emergency Triage Response',
          totalInterventions: 89 + _random.nextInt(20),
          successfulOutcomes: 74 + _random.nextInt(15),
          successRate: 83.1 + (_random.nextDouble() * 8),
          avgCostPerIntervention: 3500.0,
          avgSavingsPerSuccess: 125000.0,
          totalSavings: 9250000.0,
          roi: 2571.0,
        ),
        InterventionImpactModel(
          id: 'II005',
          category: 'lifestyle',
          name: 'Lifestyle Modification Programs',
          totalInterventions: 234 + _random.nextInt(30),
          successfulOutcomes: 167 + _random.nextInt(20),
          successRate: 71.4 + (_random.nextDouble() * 12),
          avgCostPerIntervention: 1200.0,
          avgSavingsPerSuccess: 35000.0,
          totalSavings: 5845000.0,
          roi: 1982.0,
        ),
      ];

      Logger.info(
        'Fetched ${impacts.length} intervention impacts',
        tag: 'ClaimsPreventionDatasource',
      );
      return impacts;
    } catch (e) {
      Logger.error(
        'Error fetching intervention impact',
        tag: 'ClaimsPreventionDatasource',
        error: e,
      );
      rethrow;
    }
  }
}
