import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/risk_engine_datasource.dart';
import '../../domain/entities/chronic_disease_cohort_entity.dart';
import '../../domain/entities/risk_profile_entity.dart';

part 'risk_engine_provider.g.dart';

// Datasource Provider
@Riverpod(keepAlive: true)
RiskEngineDatasource riskEngineDatasource(Ref ref) {
  return RiskEngineDatasource();
}

// Filter State Provider
@riverpod
class RiskEngineFilter extends _$RiskEngineFilter {
  @override
  RiskEngineFilterState build() {
    return RiskEngineFilterState(riskLevel: null);
  }

  void setRiskLevel(String? riskLevel) {
    state = RiskEngineFilterState(riskLevel: riskLevel);
  }

  void reset() {
    state = RiskEngineFilterState(riskLevel: null);
  }
}

class RiskEngineFilterState {
  final String? riskLevel;

  RiskEngineFilterState({required this.riskLevel});
}

// Risk Profiles List Provider
@riverpod
Future<List<RiskProfileEntity>> riskProfiles(Ref ref) async {
  final datasource = ref.watch(riskEngineDatasourceProvider);
  final filter = ref.watch(riskEngineFilterProvider);

  final models = await datasource.fetchRiskProfiles(
    riskLevel: filter.riskLevel,
  );

  return models.map((model) => model.toEntity()).toList();
}

// Single Risk Profile Provider
@riverpod
Future<RiskProfileEntity> riskProfileDetails(Ref ref, String id) async {
  final datasource = ref.watch(riskEngineDatasourceProvider);
  final model = await datasource.fetchRiskProfileById(id);
  return model.toEntity();
}

// Add to existing providers
@riverpod
Future<List<ChronicDiseaseCohortEntity>> chronicDiseaseCohorts(Ref ref) async {
  final datasource = ref.watch(riskEngineDatasourceProvider);
  final models = await datasource.fetchChronicDiseaseCohorts();
  return models.map((model) => model.toEntity()).toList();
}

// Statistics Provider
@riverpod
Future<RiskEngineStats> riskEngineStats(Ref ref) async {
  final profiles = await ref.watch(riskProfilesProvider.future);

  final critical = profiles
      .where((p) => p.riskLevel == RiskLevel.critical)
      .length;
  final high = profiles.where((p) => p.riskLevel == RiskLevel.high).length;
  final moderate = profiles
      .where((p) => p.riskLevel == RiskLevel.moderate)
      .length;
  final low = profiles.where((p) => p.riskLevel == RiskLevel.low).length;

  final totalEstimatedCost = profiles.fold<double>(
    0.0,
    (sum, profile) => sum + profile.estimatedAnnualCost,
  );

  final totalPotentialSavings = profiles.fold<double>(
    0.0,
    (sum, profile) => sum + profile.potentialSavings,
  );

  final avgRiskScore = profiles.isEmpty
      ? 0.0
      : profiles.fold<double>(0.0, (sum, profile) => sum + profile.riskScore) /
            profiles.length;

  final totalInterventions = profiles.fold<int>(
    0,
    (sum, profile) => sum + profile.recommendedInterventions.length,
  );

  return RiskEngineStats(
    total: profiles.length,
    critical: critical,
    high: high,
    moderate: moderate,
    low: low,
    avgRiskScore: avgRiskScore,
    totalEstimatedCost: totalEstimatedCost,
    totalPotentialSavings: totalPotentialSavings,
    totalInterventions: totalInterventions,
  );
}

class RiskEngineStats {
  final int total;
  final int critical;
  final int high;
  final int moderate;
  final int low;
  final double avgRiskScore;
  final double totalEstimatedCost;
  final double totalPotentialSavings;
  final int totalInterventions;

  RiskEngineStats({
    required this.total,
    required this.critical,
    required this.high,
    required this.moderate,
    required this.low,
    required this.avgRiskScore,
    required this.totalEstimatedCost,
    required this.totalPotentialSavings,
    required this.totalInterventions,
  });
}
