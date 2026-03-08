import 'package:freezed_annotation/freezed_annotation.dart';

part 'prevention_metric_entity.freezed.dart';

@freezed
abstract class PreventionMetricEntity with _$PreventionMetricEntity {
  const factory PreventionMetricEntity({
    required String type,
    required int count,
    required String period,
    required double trend,
  }) = _PreventionMetricEntity;
}
