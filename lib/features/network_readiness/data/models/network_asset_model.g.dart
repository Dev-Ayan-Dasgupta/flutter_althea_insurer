// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_asset_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NetworkAssetModel _$NetworkAssetModelFromJson(Map<String, dynamic> json) =>
    _NetworkAssetModel(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      status: json['status'] as String,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      currentLocation: json['currentLocation'] as String?,
      activeAssignments: (json['activeAssignments'] as num?)?.toInt(),
      completedToday: (json['completedToday'] as num?)?.toInt(),
      lastActiveAt: json['lastActiveAt'] == null
          ? null
          : DateTime.parse(json['lastActiveAt'] as String),
      utilizationRate: (json['utilizationRate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$NetworkAssetModelToJson(_NetworkAssetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'status': instance.status,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'currentLocation': instance.currentLocation,
      'activeAssignments': instance.activeAssignments,
      'completedToday': instance.completedToday,
      'lastActiveAt': instance.lastActiveAt?.toIso8601String(),
      'utilizationRate': instance.utilizationRate,
    };
