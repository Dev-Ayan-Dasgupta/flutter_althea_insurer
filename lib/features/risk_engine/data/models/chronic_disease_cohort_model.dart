import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/chronic_disease_cohort_entity.dart';

part 'chronic_disease_cohort_model.freezed.dart';
part 'chronic_disease_cohort_model.g.dart';

@freezed
abstract class ChronicDiseaseCohortModel with _$ChronicDiseaseCohortModel {
  const ChronicDiseaseCohortModel._();

  const factory ChronicDiseaseCohortModel({
    required String id,
    required String diseaseType,
    required String diseaseName,
    required int totalPatients,
    required int wellControlled,
    required int moderateControl,
    required int poorControl,
    required double avgRiskScore,
    required double hospitalizationRate,
    required double adherenceRate,
    required List<TrendDataPointModel> riskTrend,
    required int interventionsActive,
    required double interventionSuccessRate,
  }) = _ChronicDiseaseCohortModel;

  factory ChronicDiseaseCohortModel.fromJson(Map<String, dynamic> json) =>
      _$ChronicDiseaseCohortModelFromJson(json);

  ChronicDiseaseCohortEntity toEntity() {
    DiseaseType typeEnum;
    switch (diseaseType.toLowerCase()) {
      case 'diabetes':
        typeEnum = DiseaseType.diabetes;
        break;
      case 'hypertension':
        typeEnum = DiseaseType.hypertension;
        break;
      case 'cardiac':
        typeEnum = DiseaseType.cardiac;
        break;
      case 'copd':
        typeEnum = DiseaseType.copd;
        break;
      case 'ckd':
        typeEnum = DiseaseType.ckd;
        break;
      default:
        typeEnum = DiseaseType.diabetes;
    }

    return ChronicDiseaseCohortEntity(
      id: id,
      diseaseType: typeEnum,
      diseaseName: diseaseName,
      totalPatients: totalPatients,
      wellControlled: wellControlled,
      moderateControl: moderateControl,
      poorControl: poorControl,
      avgRiskScore: avgRiskScore,
      hospitalizationRate: hospitalizationRate,
      adherenceRate: adherenceRate,
      riskTrend: riskTrend.map((t) => t.toEntity()).toList(),
      interventionsActive: interventionsActive,
      interventionSuccessRate: interventionSuccessRate,
    );
  }
}

@freezed
abstract class TrendDataPointModel with _$TrendDataPointModel {
  const TrendDataPointModel._();

  const factory TrendDataPointModel({
    required DateTime date,
    required double value,
  }) = _TrendDataPointModel;

  factory TrendDataPointModel.fromJson(Map<String, dynamic> json) =>
      _$TrendDataPointModelFromJson(json);

  TrendDataPoint toEntity() => TrendDataPoint(date: date, value: value);
}
