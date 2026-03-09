import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_adherence_entity.freezed.dart';

enum AdherenceLevel { excellent, good, fair, poor }

@freezed
abstract class PatientAdherenceEntity with _$PatientAdherenceEntity {
  const factory PatientAdherenceEntity({
    required String id,
    required String patientName,
    required int age,
    required String gender,
    required String condition,
    required int totalMedications,
    required int activeMedications,
    required double adherenceRate,
    required AdherenceLevel adherenceLevel,
    required int dosesScheduled,
    required int dosesTaken,
    required int dosesMissed,
    required int dosesDelayed,
    required DateTime lastDoseTime,
    required DateTime nextDoseTime,
    required int consecutiveMissedDoses,
    required bool requiresIntervention,
    required List<String> riskFactors,
  }) = _PatientAdherenceEntity;
}
