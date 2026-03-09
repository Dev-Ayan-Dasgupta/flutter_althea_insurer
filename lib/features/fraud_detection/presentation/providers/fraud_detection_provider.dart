import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/fraud_detection_datasource.dart';
import '../../domain/entities/fraud_alert_entity.dart';
import '../../domain/entities/claim_verification_entity.dart';
import '../../domain/entities/fraud_pattern_entity.dart';
import '../../domain/entities/investigation_case_entity.dart';

part 'fraud_detection_provider.g.dart';

// Datasource Provider
@Riverpod(keepAlive: true)
FraudDetectionDatasource fraudDetectionDatasource(Ref ref) {
  return FraudDetectionDatasource();
}

// Fraud Alerts Provider
@riverpod
Future<List<FraudAlertEntity>> fraudAlerts(Ref ref) async {
  final datasource = ref.watch(fraudDetectionDatasourceProvider);
  final models = await datasource.fetchFraudAlerts();
  return models.map((model) => model.toEntity()).toList();
}

// Claim Verifications Provider
@riverpod
Future<List<ClaimVerificationEntity>> claimVerifications(Ref ref) async {
  final datasource = ref.watch(fraudDetectionDatasourceProvider);
  final models = await datasource.fetchClaimVerifications();
  return models.map((model) => model.toEntity()).toList();
}

// Fraud Patterns Provider
@riverpod
Future<List<FraudPatternEntity>> fraudPatterns(Ref ref) async {
  final datasource = ref.watch(fraudDetectionDatasourceProvider);
  final models = await datasource.fetchFraudPatterns();
  return models.map((model) => model.toEntity()).toList();
}

// Investigation Cases Provider
@riverpod
Future<List<InvestigationCaseEntity>> investigationCases(Ref ref) async {
  final datasource = ref.watch(fraudDetectionDatasourceProvider);
  final models = await datasource.fetchInvestigationCases();
  return models.map((model) => model.toEntity()).toList();
}

// Fraud Detection Statistics Provider
@riverpod
Future<FraudDetectionStatistics> fraudDetectionStats(Ref ref) async {
  final alerts = await ref.watch(fraudAlertsProvider.future);
  final verifications = await ref.watch(claimVerificationsProvider.future);
  final patterns = await ref.watch(fraudPatternsProvider.future);
  final cases = await ref.watch(investigationCasesProvider.future);

  final totalAlerts = alerts.length;
  final criticalAlerts = alerts
      .where((a) => a.severity == FraudAlertSeverity.critical)
      .length;
  final pendingAlerts = alerts
      .where((a) => a.status == AlertStatus.pending)
      .length;
  final confirmedFraud = alerts
      .where((a) => a.status == AlertStatus.confirmed)
      .length;

  final totalVerifications = verifications.length;
  final pendingVerifications = verifications
      .where((v) => v.status == VerificationStatus.pending)
      .length;
  final rejectedClaims = verifications
      .where((v) => v.status == VerificationStatus.rejected)
      .length;

  final activePatterns = patterns.where((p) => p.isActive).length;
  final totalEstimatedLoss = patterns.fold<double>(
    0.0,
    (sum, p) => sum + p.estimatedLoss,
  );
  final totalPreventedLoss = patterns.fold<double>(
    0.0,
    (sum, p) => sum + p.preventedLoss,
  );

  final activeCases = cases.where((c) => c.status != CaseStatus.closed).length;
  final totalAmountInvestigated = cases.fold<double>(
    0.0,
    (sum, c) => sum + c.totalAmountInvolved,
  );
  final totalRecovered = cases.fold<double>(
    0.0,
    (sum, c) => sum + c.recoveredAmount,
  );

  final avgFraudProbability = alerts.isEmpty
      ? 0.0
      : alerts.fold<double>(0.0, (sum, a) => sum + a.fraudProbability) /
            alerts.length;

  return FraudDetectionStatistics(
    totalAlerts: totalAlerts,
    criticalAlerts: criticalAlerts,
    pendingAlerts: pendingAlerts,
    confirmedFraud: confirmedFraud,
    totalVerifications: totalVerifications,
    pendingVerifications: pendingVerifications,
    rejectedClaims: rejectedClaims,
    activePatterns: activePatterns,
    totalEstimatedLoss: totalEstimatedLoss,
    totalPreventedLoss: totalPreventedLoss,
    activeCases: activeCases,
    totalAmountInvestigated: totalAmountInvestigated,
    totalRecovered: totalRecovered,
    avgFraudProbability: avgFraudProbability,
  );
}

class FraudDetectionStatistics {
  final int totalAlerts;
  final int criticalAlerts;
  final int pendingAlerts;
  final int confirmedFraud;
  final int totalVerifications;
  final int pendingVerifications;
  final int rejectedClaims;
  final int activePatterns;
  final double totalEstimatedLoss;
  final double totalPreventedLoss;
  final int activeCases;
  final double totalAmountInvestigated;
  final double totalRecovered;
  final double avgFraudProbability;

  FraudDetectionStatistics({
    required this.totalAlerts,
    required this.criticalAlerts,
    required this.pendingAlerts,
    required this.confirmedFraud,
    required this.totalVerifications,
    required this.pendingVerifications,
    required this.rejectedClaims,
    required this.activePatterns,
    required this.totalEstimatedLoss,
    required this.totalPreventedLoss,
    required this.activeCases,
    required this.totalAmountInvestigated,
    required this.totalRecovered,
    required this.avgFraudProbability,
  });
}
