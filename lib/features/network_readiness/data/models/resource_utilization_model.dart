import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/resource_utilization_entity.dart';

part 'resource_utilization_model.freezed.dart';
part 'resource_utilization_model.g.dart';

@freezed
abstract class ResourceUtilizationModel with _$ResourceUtilizationModel {
  const ResourceUtilizationModel._();

  const factory ResourceUtilizationModel({
    required String resourceType,
    required String resourceName,
    required int totalResources,
    required int activeResources,
    required int utilizationCount,
    required double utilizationRate,
    required double averageResponseTime,
    required int peakHourUtilization,
    required List<HourlyUtilizationModel> hourlyData,
  }) = _ResourceUtilizationModel;

  factory ResourceUtilizationModel.fromJson(Map<String, dynamic> json) =>
      _$ResourceUtilizationModelFromJson(json);

  ResourceUtilizationEntity toEntity() => ResourceUtilizationEntity(
    resourceType: resourceType,
    resourceName: resourceName,
    totalResources: totalResources,
    activeResources: activeResources,
    utilizationCount: utilizationCount,
    utilizationRate: utilizationRate,
    averageResponseTime: averageResponseTime,
    peakHourUtilization: peakHourUtilization,
    hourlyData: hourlyData.map((h) => h.toEntity()).toList(),
  );
}

@freezed
abstract class HourlyUtilizationModel with _$HourlyUtilizationModel {
  const HourlyUtilizationModel._();

  const factory HourlyUtilizationModel({
    required int hour,
    required int utilization,
    required double rate,
  }) = _HourlyUtilizationModel;

  factory HourlyUtilizationModel.fromJson(Map<String, dynamic> json) =>
      _$HourlyUtilizationModelFromJson(json);

  HourlyUtilization toEntity() =>
      HourlyUtilization(hour: hour, utilization: utilization, rate: rate);
}
