// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_utilization_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResourceUtilizationModel _$ResourceUtilizationModelFromJson(
  Map<String, dynamic> json,
) => _ResourceUtilizationModel(
  resourceType: json['resourceType'] as String,
  resourceName: json['resourceName'] as String,
  totalResources: (json['totalResources'] as num).toInt(),
  activeResources: (json['activeResources'] as num).toInt(),
  utilizationCount: (json['utilizationCount'] as num).toInt(),
  utilizationRate: (json['utilizationRate'] as num).toDouble(),
  averageResponseTime: (json['averageResponseTime'] as num).toDouble(),
  peakHourUtilization: (json['peakHourUtilization'] as num).toInt(),
  hourlyData: (json['hourlyData'] as List<dynamic>)
      .map((e) => HourlyUtilizationModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ResourceUtilizationModelToJson(
  _ResourceUtilizationModel instance,
) => <String, dynamic>{
  'resourceType': instance.resourceType,
  'resourceName': instance.resourceName,
  'totalResources': instance.totalResources,
  'activeResources': instance.activeResources,
  'utilizationCount': instance.utilizationCount,
  'utilizationRate': instance.utilizationRate,
  'averageResponseTime': instance.averageResponseTime,
  'peakHourUtilization': instance.peakHourUtilization,
  'hourlyData': instance.hourlyData,
};

_HourlyUtilizationModel _$HourlyUtilizationModelFromJson(
  Map<String, dynamic> json,
) => _HourlyUtilizationModel(
  hour: (json['hour'] as num).toInt(),
  utilization: (json['utilization'] as num).toInt(),
  rate: (json['rate'] as num).toDouble(),
);

Map<String, dynamic> _$HourlyUtilizationModelToJson(
  _HourlyUtilizationModel instance,
) => <String, dynamic>{
  'hour': instance.hour,
  'utilization': instance.utilization,
  'rate': instance.rate,
};
