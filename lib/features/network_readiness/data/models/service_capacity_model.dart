import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/service_capacity_entity.dart';

part 'service_capacity_model.freezed.dart';
part 'service_capacity_model.g.dart';

@freezed
abstract class ServiceCapacityModel with _$ServiceCapacityModel {
  const ServiceCapacityModel._();

  const factory ServiceCapacityModel({
    required String id,
    required String serviceType,
    required String serviceName,
    required int dailyCapacity,
    required int currentUtilization,
    required int availableSlots,
    required double utilizationPercentage,
    required int demandForecast,
    required bool isBottleneck,
    String? bottleneckReason,
  }) = _ServiceCapacityModel;

  factory ServiceCapacityModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceCapacityModelFromJson(json);

  ServiceCapacityEntity toEntity() {
    ServiceType typeEnum;
    switch (serviceType.toLowerCase()) {
      case 'nurse_visit':
        typeEnum = ServiceType.nurseVisit;
        break;
      case 'medicine_delivery':
        typeEnum = ServiceType.medicineDelivery;
        break;
      case 'diagnostic_test':
        typeEnum = ServiceType.diagnosticTest;
        break;
      case 'ambulance_service':
        typeEnum = ServiceType.ambulanceService;
        break;
      case 'physiotherapy':
        typeEnum = ServiceType.physiotherapy;
        break;
      default:
        typeEnum = ServiceType.nurseVisit;
    }

    return ServiceCapacityEntity(
      id: id,
      serviceType: typeEnum,
      serviceName: serviceName,
      dailyCapacity: dailyCapacity,
      currentUtilization: currentUtilization,
      availableSlots: availableSlots,
      utilizationPercentage: utilizationPercentage,
      demandForecast: demandForecast,
      isBottleneck: isBottleneck,
      bottleneckReason: bottleneckReason,
    );
  }
}
