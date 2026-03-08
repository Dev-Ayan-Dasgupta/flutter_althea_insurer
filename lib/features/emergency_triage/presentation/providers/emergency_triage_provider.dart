import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/emergency_triage_datasource.dart';
import '../../domain/entities/emergency_case_entity.dart';
import '../../domain/entities/pre_auth_entity.dart';

part 'emergency_triage_provider.g.dart';

// Datasource Provider
@Riverpod(keepAlive: true)
EmergencyTriageDatasource emergencyTriageDatasource(Ref ref) {
  return EmergencyTriageDatasource();
}

// Filter State Provider
@riverpod
class EmergencyTriageFilter extends _$EmergencyTriageFilter {
  @override
  EmergencyTriageFilterState build() {
    return EmergencyTriageFilterState(severity: null, status: null);
  }

  void setSeverity(String? severity) {
    state = state.copyWith(severity: severity);
  }

  void setStatus(String? status) {
    state = state.copyWith(status: status);
  }

  void reset() {
    state = EmergencyTriageFilterState(severity: null, status: null);
  }
}

class EmergencyTriageFilterState {
  final String? severity;
  final String? status;

  EmergencyTriageFilterState({required this.severity, required this.status});

  EmergencyTriageFilterState copyWith({String? severity, String? status}) {
    return EmergencyTriageFilterState(severity: severity, status: status);
  }
}

// Emergency Cases List Provider
@riverpod
Future<List<EmergencyCaseEntity>> emergencyCases(Ref ref) async {
  final datasource = ref.watch(emergencyTriageDatasourceProvider);
  final filter = ref.watch(emergencyTriageFilterProvider);

  final models = await datasource.fetchEmergencyCases(
    severity: filter.severity,
    status: filter.status,
  );

  return models.map((model) => model.toEntity()).toList();
}

// Single Emergency Case Provider
@riverpod
Future<EmergencyCaseEntity> emergencyCaseDetails(Ref ref, String id) async {
  final datasource = ref.watch(emergencyTriageDatasourceProvider);
  final model = await datasource.fetchEmergencyCaseById(id);
  return model.toEntity();
}

// Statistics Provider
@riverpod
Future<EmergencyTriageStats> emergencyTriageStats(Ref ref) async {
  final cases = await ref.watch(emergencyCasesProvider.future);

  final critical = cases
      .where((c) => c.severity == EmergencySeverity.critical)
      .length;
  final high = cases.where((c) => c.severity == EmergencySeverity.high).length;
  final active = cases
      .where(
        (c) =>
            c.status != EmergencyStatus.completed &&
            c.status != EmergencyStatus.atHospital,
      )
      .length;
  final pendingPreAuth = cases.where((c) => c.preAuth == null).length;

  final totalEstimatedCost = cases.fold<double>(
    0.0,
    (sum, case_) => sum + case_.estimatedCost,
  );

  return EmergencyTriageStats(
    total: cases.length,
    critical: critical,
    high: high,
    active: active,
    pendingPreAuth: pendingPreAuth,
    totalEstimatedCost: totalEstimatedCost,
  );
}

class EmergencyTriageStats {
  final int total;
  final int critical;
  final int high;
  final int active;
  final int pendingPreAuth;
  final double totalEstimatedCost;

  EmergencyTriageStats({
    required this.total,
    required this.critical,
    required this.high,
    required this.active,
    required this.pendingPreAuth,
    required this.totalEstimatedCost,
  });
}

// Pre-Auth Approval Provider
@riverpod
class PreAuthApproval extends _$PreAuthApproval {
  @override
  FutureOr<PreAuthEntity?> build() {
    return null;
  }

  Future<void> approvePreAuth({
    required String caseId,
    required double amount,
    required String approvedBy,
    String? notes,
  }) async {
    state = const AsyncValue.loading();

    try {
      final datasource = ref.read(emergencyTriageDatasourceProvider);
      final preAuth = await datasource.approvePreAuth(
        caseId: caseId,
        amount: amount,
        approvedBy: approvedBy,
        notes: notes,
      );

      state = AsyncValue.data(preAuth.toEntity());

      // Refresh the cases list
      ref.invalidate(emergencyCasesProvider);
      ref.invalidate(emergencyCaseDetailsProvider);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}
