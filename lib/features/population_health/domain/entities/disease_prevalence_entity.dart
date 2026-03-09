import 'package:freezed_annotation/freezed_annotation.dart';

part 'disease_prevalence_entity.freezed.dart';

enum DiseaseCategory {
  diabetes,
  hypertension,
  cardiac,
  respiratory,
  kidney,
  mobility,
}

@freezed
abstract class DiseasePrevalenceEntity with _$DiseasePrevalenceEntity {
  const factory DiseasePrevalenceEntity({
    required String id,
    required DiseaseCategory category,
    required String diseaseName,
    required int totalCases,
    required int newCasesThisQuarter,
    required double prevalenceRate,
    required double changeFromLastQuarter,
    required int criticalCases,
    required int moderateCases,
    required int mildCases,
    required double avgAge,
    required String mostAffectedZone,
    required double costImpact,
  }) = _DiseasePrevalenceEntity;
}
