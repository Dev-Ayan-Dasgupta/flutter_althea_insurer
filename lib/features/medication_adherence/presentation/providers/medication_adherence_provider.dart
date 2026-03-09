import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/medication_adherence_datasource.dart';
import '../../domain/entities/medication_entity.dart';
import '../../domain/entities/adherence_record_entity.dart';
import '../../domain/entities/patient_adherence_entity.dart';
import '../../domain/entities/intervention_entity.dart';

part 'medication_adherence_provider.g.dart';

// Datasource Provider
@Riverpod(keepAlive: true)
MedicationAdherenceDatasource medicationAdherenceDatasource(Ref ref) {
  return MedicationAdherenceDatasource();
}

// Patient Adherence Provider
@riverpod
Future<List<PatientAdherenceEntity>> patientAdherence(Ref ref) async {
  final datasource = ref.watch(medicationAdherenceDatasourceProvider);
  final models = await datasource.fetchPatientAdherence();
  return models.map((model) => model.toEntity()).toList();
}

// Patient Medications Provider
@riverpod
Future<List<MedicationEntity>> patientMedications(
  Ref ref,
  String patientId,
) async {
  final datasource = ref.watch(medicationAdherenceDatasourceProvider);
  final models = await datasource.fetchPatientMedications(patientId);
  return models.map((model) => model.toEntity()).toList();
}

// Adherence Records Provider
@riverpod
Future<List<AdherenceRecordEntity>> adherenceRecords(
  Ref ref,
  String patientId,
) async {
  final datasource = ref.watch(medicationAdherenceDatasourceProvider);
  final models = await datasource.fetchAdherenceRecords(patientId);
  return models.map((model) => model.toEntity()).toList();
}

// Interventions Provider
@riverpod
Future<List<InterventionEntity>> medicationInterventions(Ref ref) async {
  final datasource = ref.watch(medicationAdherenceDatasourceProvider);
  final models = await datasource.fetchInterventions();
  return models.map((model) => model.toEntity()).toList();
}

// Adherence Statistics Provider
@riverpod
Future<AdherenceStatistics> adherenceStatistics(Ref ref) async {
  final patients = await ref.watch(patientAdherenceProvider.future);
  final interventions = await ref.watch(medicationInterventionsProvider.future);

  final totalPatients = patients.length;
  final excellentAdherence = patients
      .where((p) => p.adherenceLevel == AdherenceLevel.excellent)
      .length;
  final goodAdherence = patients
      .where((p) => p.adherenceLevel == AdherenceLevel.good)
      .length;
  final fairAdherence = patients
      .where((p) => p.adherenceLevel == AdherenceLevel.fair)
      .length;
  final poorAdherence = patients
      .where((p) => p.adherenceLevel == AdherenceLevel.poor)
      .length;

  final avgAdherenceRate = patients.isEmpty
      ? 0.0
      : patients.fold<double>(0.0, (sum, p) => sum + p.adherenceRate) /
            patients.length;

  final requiresIntervention = patients
      .where((p) => p.requiresIntervention)
      .length;

  final activeInterventions = interventions
      .where(
        (i) =>
            i.status == InterventionStatus.scheduled ||
            i.status == InterventionStatus.inProgress,
      )
      .length;

  final totalDosesScheduled = patients.fold<int>(
    0,
    (sum, p) => sum + p.dosesScheduled,
  );
  final totalDosesTaken = patients.fold<int>(0, (sum, p) => sum + p.dosesTaken);
  final totalDosesMissed = patients.fold<int>(
    0,
    (sum, p) => sum + p.dosesMissed,
  );

  return AdherenceStatistics(
    totalPatients: totalPatients,
    excellentAdherence: excellentAdherence,
    goodAdherence: goodAdherence,
    fairAdherence: fairAdherence,
    poorAdherence: poorAdherence,
    avgAdherenceRate: avgAdherenceRate,
    requiresIntervention: requiresIntervention,
    activeInterventions: activeInterventions,
    totalDosesScheduled: totalDosesScheduled,
    totalDosesTaken: totalDosesTaken,
    totalDosesMissed: totalDosesMissed,
  );
}

class AdherenceStatistics {
  final int totalPatients;
  final int excellentAdherence;
  final int goodAdherence;
  final int fairAdherence;
  final int poorAdherence;
  final double avgAdherenceRate;
  final int requiresIntervention;
  final int activeInterventions;
  final int totalDosesScheduled;
  final int totalDosesTaken;
  final int totalDosesMissed;

  AdherenceStatistics({
    required this.totalPatients,
    required this.excellentAdherence,
    required this.goodAdherence,
    required this.fairAdherence,
    required this.poorAdherence,
    required this.avgAdherenceRate,
    required this.requiresIntervention,
    required this.activeInterventions,
    required this.totalDosesScheduled,
    required this.totalDosesTaken,
    required this.totalDosesMissed,
  });
}
