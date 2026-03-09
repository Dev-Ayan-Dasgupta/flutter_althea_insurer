import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/disease_prevalence_entity.dart';

part 'disease_prevalence_model.freezed.dart';
part 'disease_prevalence_model.g.dart';

@freezed
abstract class DiseasePrevalenceModel with _$DiseasePrevalenceModel {
  const DiseasePrevalenceModel._();

  const factory DiseasePrevalenceModel({
    required String id,
    required String category,
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
  }) = _DiseasePrevalenceModel;

  factory DiseasePrevalenceModel.fromJson(Map<String, dynamic> json) =>
      _$DiseasePrevalenceModelFromJson(json);

  DiseasePrevalenceEntity toEntity() {
    DiseaseCategory categoryEnum;
    switch (category.toLowerCase()) {
      case 'diabetes':
        categoryEnum = DiseaseCategory.diabetes;
        break;
      case 'hypertension':
        categoryEnum = DiseaseCategory.hypertension;
        break;
      case 'cardiac':
        categoryEnum = DiseaseCategory.cardiac;
        break;
      case 'respiratory':
        categoryEnum = DiseaseCategory.respiratory;
        break;
      case 'kidney':
        categoryEnum = DiseaseCategory.kidney;
        break;
      case 'mobility':
        categoryEnum = DiseaseCategory.mobility;
        break;
      default:
        categoryEnum = DiseaseCategory.diabetes;
    }

    return DiseasePrevalenceEntity(
      id: id,
      category: categoryEnum,
      diseaseName: diseaseName,
      totalCases: totalCases,
      newCasesThisQuarter: newCasesThisQuarter,
      prevalenceRate: prevalenceRate,
      changeFromLastQuarter: changeFromLastQuarter,
      criticalCases: criticalCases,
      moderateCases: moderateCases,
      mildCases: mildCases,
      avgAge: avgAge,
      mostAffectedZone: mostAffectedZone,
      costImpact: costImpact,
    );
  }
}
