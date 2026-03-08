import 'package:freezed_annotation/freezed_annotation.dart';

part 'chronic_disease_cohort_entity.freezed.dart';

enum DiseaseType { diabetes, hypertension, cardiac, copd, ckd }

@freezed
abstract class ChronicDiseaseCohortEntity with _$ChronicDiseaseCohortEntity {
  const factory ChronicDiseaseCohortEntity({
    required String id,
    required DiseaseType diseaseType,
    required String diseaseName,
    required int totalPatients,
    required int wellControlled,
    required int moderateControl,
    required int poorControl,
    required double avgRiskScore,
    required double hospitalizationRate,
    required double adherenceRate,
    required List<TrendDataPoint> riskTrend,
    required int interventionsActive,
    required double interventionSuccessRate,
  }) = _ChronicDiseaseCohortEntity;
}

@freezed
abstract class TrendDataPoint with _$TrendDataPoint {
  const factory TrendDataPoint({
    required DateTime date,
    required double value,
  }) = _TrendDataPoint;
}
