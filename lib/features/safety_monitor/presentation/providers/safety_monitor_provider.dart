import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/safety_monitor_datasource.dart';
import '../../domain/entities/cohort_entity.dart';
import '../../domain/entities/safety_alert_entity.dart';
import '../../domain/entities/risk_assessment_entity.dart';
import '../../domain/entities/preventive_action_entity.dart';

part 'safety_monitor_provider.g.dart';

// Datasource Provider
@Riverpod(keepAlive: true)
SafetyMonitorDatasource safetyMonitorDatasource(Ref ref) {
  return SafetyMonitorDatasource();
}

// Cohorts Provider
@riverpod
Future<List<CohortEntity>> safetyCohorts(Ref ref) async {
  final datasource = ref.watch(safetyMonitorDatasourceProvider);
  final models = await datasource.fetchCohorts();
  return models.map((model) => model.toEntity()).toList();
}

// Safety Alerts Provider
@riverpod
Future<List<SafetyAlertEntity>> safetyAlerts(
  Ref ref, {
  String? cohortType,
}) async {
  final datasource = ref.watch(safetyMonitorDatasourceProvider);
  final models = await datasource.fetchSafetyAlerts(cohortType: cohortType);
  return models.map((model) => model.toEntity()).toList();
}

// Risk Assessments Provider
@riverpod
Future<List<RiskAssessmentEntity>> riskAssessments(
  Ref ref, {
  String? cohortType,
}) async {
  final datasource = ref.watch(safetyMonitorDatasourceProvider);
  final models = await datasource.fetchRiskAssessments(cohortType: cohortType);
  return models.map((model) => model.toEntity()).toList();
}

// Preventive Actions Provider
@riverpod
Future<List<PreventiveActionEntity>> preventiveActions(
  Ref ref, {
  String? cohortType,
}) async {
  final datasource = ref.watch(safetyMonitorDatasourceProvider);
  final models = await datasource.fetchPreventiveActions(
    cohortType: cohortType,
  );
  return models.map((model) => model.toEntity()).toList();
}

// Safety Monitor Statistics Provider
@riverpod
Future<SafetyMonitorStatistics> safetyMonitorStats(Ref ref) async {
  final cohorts = await ref.watch(safetyCohortsProvider.future);
  final alerts = await ref.watch(safetyAlertsProvider(cohortType: null).future);
  final actions = await ref.watch(
    preventiveActionsProvider(cohortType: null).future,
  );

  final totalPatients = cohorts.fold<int>(0, (sum, c) => sum + c.totalPatients);
  final totalHighRisk = cohorts.fold<int>(
    0,
    (sum, c) => sum + c.highRisk + c.criticalRisk,
  );
  final totalAlerts = alerts.length;
  final criticalAlerts = alerts
      .where((a) => a.severity == AlertSeverity.critical)
      .length;
  final totalIncidents = cohorts.fold<int>(
    0,
    (sum, c) => sum + c.incidentsThisMonth,
  );
  final activeActions = actions
      .where(
        (a) =>
            a.status == ActionStatus.pending ||
            a.status == ActionStatus.scheduled ||
            a.status == ActionStatus.inProgress,
      )
      .length;

  return SafetyMonitorStatistics(
    totalPatients: totalPatients,
    totalHighRisk: totalHighRisk,
    totalAlerts: totalAlerts,
    criticalAlerts: criticalAlerts,
    totalIncidents: totalIncidents,
    activeActions: activeActions,
  );
}

class SafetyMonitorStatistics {
  final int totalPatients;
  final int totalHighRisk;
  final int totalAlerts;
  final int criticalAlerts;
  final int totalIncidents;
  final int activeActions;

  SafetyMonitorStatistics({
    required this.totalPatients,
    required this.totalHighRisk,
    required this.totalAlerts,
    required this.criticalAlerts,
    required this.totalIncidents,
    required this.activeActions,
  });
}
