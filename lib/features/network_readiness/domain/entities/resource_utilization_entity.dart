import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource_utilization_entity.freezed.dart';

@freezed
abstract class ResourceUtilizationEntity with _$ResourceUtilizationEntity {
  const factory ResourceUtilizationEntity({
    required String resourceType,
    required String resourceName,
    required int totalResources,
    required int activeResources,
    required int utilizationCount,
    required double utilizationRate,
    required double averageResponseTime,
    required int peakHourUtilization,
    required List<HourlyUtilization> hourlyData,
  }) = _ResourceUtilizationEntity;
}

@freezed
abstract class HourlyUtilization with _$HourlyUtilization {
  const factory HourlyUtilization({
    required int hour,
    required int utilization,
    required double rate,
  }) = _HourlyUtilization;
}
