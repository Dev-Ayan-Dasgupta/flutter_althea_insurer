// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_capacity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiceCapacityModel _$ServiceCapacityModelFromJson(
  Map<String, dynamic> json,
) => _ServiceCapacityModel(
  id: json['id'] as String,
  serviceType: json['serviceType'] as String,
  serviceName: json['serviceName'] as String,
  dailyCapacity: (json['dailyCapacity'] as num).toInt(),
  currentUtilization: (json['currentUtilization'] as num).toInt(),
  availableSlots: (json['availableSlots'] as num).toInt(),
  utilizationPercentage: (json['utilizationPercentage'] as num).toDouble(),
  demandForecast: (json['demandForecast'] as num).toInt(),
  isBottleneck: json['isBottleneck'] as bool,
  bottleneckReason: json['bottleneckReason'] as String?,
);

Map<String, dynamic> _$ServiceCapacityModelToJson(
  _ServiceCapacityModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'serviceType': instance.serviceType,
  'serviceName': instance.serviceName,
  'dailyCapacity': instance.dailyCapacity,
  'currentUtilization': instance.currentUtilization,
  'availableSlots': instance.availableSlots,
  'utilizationPercentage': instance.utilizationPercentage,
  'demandForecast': instance.demandForecast,
  'isBottleneck': instance.isBottleneck,
  'bottleneckReason': instance.bottleneckReason,
};
