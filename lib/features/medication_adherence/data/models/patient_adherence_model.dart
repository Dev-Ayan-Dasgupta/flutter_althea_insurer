import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/patient_adherence_entity.dart';

part 'patient_adherence_model.freezed.dart';
part 'patient_adherence_model.g.dart';

@freezed
abstract class PatientAdherenceModel with _$PatientAdherenceModel {
  const PatientAdherenceModel._();

  const factory PatientAdherenceModel({
    required String id,
    required String patientName,
    required int age,
    required String gender,
    required String condition,
    required int totalMedications,
    required int activeMedications,
    required double adherenceRate,
    required String adherenceLevel,
    required int dosesScheduled,
    required int dosesTaken,
    required int dosesMissed,
    required int dosesDelayed,
    required DateTime lastDoseTime,
    required DateTime nextDoseTime,
    required int consecutiveMissedDoses,
    required bool requiresIntervention,
    required List<String> riskFactors,
  }) = _PatientAdherenceModel;

  factory PatientAdherenceModel.fromJson(Map<String, dynamic> json) =>
      _$PatientAdherenceModelFromJson(json);

  PatientAdherenceEntity toEntity() {
    AdherenceLevel levelEnum;
    switch (adherenceLevel.toLowerCase()) {
      case 'excellent':
        levelEnum = AdherenceLevel.excellent;
        break;
      case 'good':
        levelEnum = AdherenceLevel.good;
        break;
      case 'fair':
        levelEnum = AdherenceLevel.fair;
        break;
      case 'poor':
        levelEnum = AdherenceLevel.poor;
        break;
      default:
        levelEnum = AdherenceLevel.good;
    }

    return PatientAdherenceEntity(
      id: id,
      patientName: patientName,
      age: age,
      gender: gender,
      condition: condition,
      totalMedications: totalMedications,
      activeMedications: activeMedications,
      adherenceRate: adherenceRate,
      adherenceLevel: levelEnum,
      dosesScheduled: dosesScheduled,
      dosesTaken: dosesTaken,
      dosesMissed: dosesMissed,
      dosesDelayed: dosesDelayed,
      lastDoseTime: lastDoseTime,
      nextDoseTime: nextDoseTime,
      consecutiveMissedDoses: consecutiveMissedDoses,
      requiresIntervention: requiresIntervention,
      riskFactors: riskFactors,
    );
  }
}
