import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/prevention_metric_entity.dart';

part 'prevention_metric_model.freezed.dart';
part 'prevention_metric_model.g.dart';

@freezed
abstract class PreventionMetricModel with _$PreventionMetricModel {
  const PreventionMetricModel._();

  const factory PreventionMetricModel({
    required String type,
    required int count,
    required String period,
    required double trend,
  }) = _PreventionMetricModel;

  factory PreventionMetricModel.fromJson(Map<String, dynamic> json) =>
      _$PreventionMetricModelFromJson(json);

  PreventionMetricEntity toEntity() => PreventionMetricEntity(
    type: type,
    count: count,
    period: period,
    trend: trend,
  );
}
