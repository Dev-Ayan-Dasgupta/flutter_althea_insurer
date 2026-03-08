import 'package:freezed_annotation/freezed_annotation.dart';

part 'prevention_metric_entity.freezed.dart';

enum PreventionType {
  hospitalization,
  emergencyVisit,
  medication,
  fall,
  chronicComplications,
}

@freezed
abstract class PreventionMetricEntity with _$PreventionMetricEntity {
  const factory PreventionMetricEntity({
    required String id,
    required PreventionType type,
    required int count,
    required double averageCostAvoided,
    required double totalCostAvoided,
    required DateTime period,
    required String description,
    required double successRate,
  }) = _PreventionMetricEntity;
}
