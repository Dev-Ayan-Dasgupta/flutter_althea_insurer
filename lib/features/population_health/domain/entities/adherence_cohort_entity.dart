import 'package:freezed_annotation/freezed_annotation.dart';

part 'adherence_cohort_entity.freezed.dart';

enum AdherenceLevel { excellent, good, fair, poor }

@freezed
abstract class AdherenceCohortEntity with _$AdherenceCohortEntity {
  const factory AdherenceCohortEntity({
    required String id,
    required String cohortName,
    required String diseaseType,
    required int totalPatients,
    required int excellentAdherence,
    required int goodAdherence,
    required int fairAdherence,
    required int poorAdherence,
    required double avgAdherenceRate,
    required double hospitalizationRate,
    required double costPerPatient,
    required List<String> interventionsActive,
  }) = _AdherenceCohortEntity;
}
