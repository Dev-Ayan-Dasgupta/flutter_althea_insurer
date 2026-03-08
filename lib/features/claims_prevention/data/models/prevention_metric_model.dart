import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/prevention_metric_entity.dart';

part 'prevention_metric_model.freezed.dart';
part 'prevention_metric_model.g.dart';

@freezed
abstract class PreventionMetricModel with _$PreventionMetricModel {
  const PreventionMetricModel._();

  const factory PreventionMetricModel({
    required String id,
    required String type,
    required int count,
    required double averageCostAvoided,
    required double totalCostAvoided,
    required DateTime period,
    required String description,
    required double successRate,
  }) = _PreventionMetricModel;

  factory PreventionMetricModel.fromJson(Map<String, dynamic> json) =>
      _$PreventionMetricModelFromJson(json);

  PreventionMetricEntity toEntity() {
    PreventionType typeEnum;
    switch (type.toLowerCase()) {
      case 'hospitalization':
        typeEnum = PreventionType.hospitalization;
        break;
      case 'emergency_visit':
        typeEnum = PreventionType.emergencyVisit;
        break;
      case 'medication':
        typeEnum = PreventionType.medication;
        break;
      case 'fall':
        typeEnum = PreventionType.fall;
        break;
      case 'chronic_complications':
        typeEnum = PreventionType.chronicComplications;
        break;
      default:
        typeEnum = PreventionType.hospitalization;
    }

    return PreventionMetricEntity(
      id: id,
      type: typeEnum,
      count: count,
      averageCostAvoided: averageCostAvoided,
      totalCostAvoided: totalCostAvoided,
      period: period,
      description: description,
      successRate: successRate,
    );
  }
}
