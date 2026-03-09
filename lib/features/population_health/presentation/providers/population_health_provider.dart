import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/population_health_datasource.dart';
import '../../domain/entities/disease_prevalence_entity.dart';
import '../../domain/entities/health_trend_entity.dart';
import '../../domain/entities/adherence_cohort_entity.dart';
import '../../domain/entities/risk_segmentation_entity.dart';

part 'population_health_provider.g.dart';

// Datasource Provider
@Riverpod(keepAlive: true)
PopulationHealthDatasource populationHealthDatasource(Ref ref) {
  return PopulationHealthDatasource();
}

// Disease Prevalence Provider
@riverpod
Future<List<DiseasePrevalenceEntity>> diseasePrevalence(Ref ref) async {
  final datasource = ref.watch(populationHealthDatasourceProvider);
  final models = await datasource.fetchDiseasePrevalence();
  return models.map((model) => model.toEntity()).toList();
}

// Health Trends Provider
@riverpod
Future<List<HealthTrendEntity>> healthTrends(Ref ref) async {
  final datasource = ref.watch(populationHealthDatasourceProvider);
  final models = await datasource.fetchHealthTrends();
  return models.map((model) => model.toEntity()).toList();
}

// Adherence Cohorts Provider
@riverpod
Future<List<AdherenceCohortEntity>> adherenceCohorts(Ref ref) async {
  final datasource = ref.watch(populationHealthDatasourceProvider);
  final models = await datasource.fetchAdherenceCohorts();
  return models.map((model) => model.toEntity()).toList();
}

// Risk Segmentation Provider
@riverpod
Future<List<RiskSegmentationEntity>> riskSegmentation(Ref ref) async {
  final datasource = ref.watch(populationHealthDatasourceProvider);
  final models = await datasource.fetchRiskSegmentation();
  return models.map((model) => model.toEntity()).toList();
}

// Population Health Statistics Provider
@riverpod
Future<PopulationHealthStatistics> populationHealthStats(Ref ref) async {
  final prevalence = await ref.watch(diseasePrevalenceProvider.future);
  final trends = await ref.watch(healthTrendsProvider.future);
  final cohorts = await ref.watch(adherenceCohortsProvider.future);
  final segments = await ref.watch(riskSegmentationProvider.future);

  final totalPopulation = segments.fold<int>(0, (sum, s) => sum + s.population);
  final totalDiseases = prevalence.fold<int>(0, (sum, d) => sum + d.totalCases);
  final avgAdherence = cohorts.isEmpty
      ? 0.0
      : cohorts.fold<double>(0.0, (sum, c) => sum + c.avgAdherenceRate) /
            cohorts.length;

  final improvingTrends = trends
      .where((t) => t.direction == TrendDirection.improving)
      .length;
  final decliningTrends = trends
      .where((t) => t.direction == TrendDirection.declining)
      .length;

  final highRiskPopulation = segments
      .where((s) => s.riskLevel == 'High' || s.riskLevel == 'Critical')
      .fold<int>(0, (sum, s) => sum + s.population);

  return PopulationHealthStatistics(
    totalPopulation: totalPopulation,
    totalDiseases: totalDiseases,
    avgAdherence: avgAdherence,
    improvingTrends: improvingTrends,
    decliningTrends: decliningTrends,
    highRiskPopulation: highRiskPopulation,
  );
}

class PopulationHealthStatistics {
  final int totalPopulation;
  final int totalDiseases;
  final double avgAdherence;
  final int improvingTrends;
  final int decliningTrends;
  final int highRiskPopulation;

  PopulationHealthStatistics({
    required this.totalPopulation,
    required this.totalDiseases,
    required this.avgAdherence,
    required this.improvingTrends,
    required this.decliningTrends,
    required this.highRiskPopulation,
  });
}
