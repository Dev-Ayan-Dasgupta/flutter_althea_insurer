import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_capacity_entity.freezed.dart';

enum ServiceType {
  nurseVisit,
  medicineDelivery,
  diagnosticTest,
  ambulanceService,
  physiotherapy,
}

@freezed
abstract class ServiceCapacityEntity with _$ServiceCapacityEntity {
  const factory ServiceCapacityEntity({
    required String id,
    required ServiceType serviceType,
    required String serviceName,
    required int dailyCapacity,
    required int currentUtilization,
    required int availableSlots,
    required double utilizationPercentage,
    required int demandForecast,
    required bool isBottleneck,
    String? bottleneckReason,
  }) = _ServiceCapacityEntity;
}
