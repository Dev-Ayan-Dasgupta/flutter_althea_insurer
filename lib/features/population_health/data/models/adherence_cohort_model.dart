import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/adherence_cohort_entity.dart';

part 'adherence_cohort_model.freezed.dart';
part 'adherence_cohort_model.g.dart';

@freezed
abstract class AdherenceCohortModel with _$AdherenceCohortModel {
  const AdherenceCohortModel._();

  const factory AdherenceCohortModel({
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
  }) = _AdherenceCohortModel;

  factory AdherenceCohortModel.fromJson(Map<String, dynamic> json) =>
      _$AdherenceCohortModelFromJson(json);

  AdherenceCohortEntity toEntity() => AdherenceCohortEntity(
    id: id,
    cohortName: cohortName,
    diseaseType: diseaseType,
    totalPatients: totalPatients,
    excellentAdherence: excellentAdherence,
    goodAdherence: goodAdherence,
    fairAdherence: fairAdherence,
    poorAdherence: poorAdherence,
    avgAdherenceRate: avgAdherenceRate,
    hospitalizationRate: hospitalizationRate,
    costPerPatient: costPerPatient,
    interventionsActive: interventionsActive,
  );
}
