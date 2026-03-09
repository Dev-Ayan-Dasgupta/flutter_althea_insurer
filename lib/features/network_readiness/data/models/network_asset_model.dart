import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/network_asset_entity.dart';

part 'network_asset_model.freezed.dart';
part 'network_asset_model.g.dart';

@freezed
abstract class NetworkAssetModel with _$NetworkAssetModel {
  const NetworkAssetModel._();

  const factory NetworkAssetModel({
    required String id,
    required String name,
    required String type,
    required String status,
    double? latitude,
    double? longitude,
    String? currentLocation,
    int? activeAssignments,
    int? completedToday,
    DateTime? lastActiveAt,
    double? utilizationRate,
  }) = _NetworkAssetModel;

  factory NetworkAssetModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkAssetModelFromJson(json);

  NetworkAssetEntity toEntity() {
    AssetType typeEnum;
    switch (type.toLowerCase()) {
      case 'ambulance':
        typeEnum = AssetType.ambulance;
        break;
      case 'nurse':
        typeEnum = AssetType.nurse;
        break;
      case 'caregiver':
        typeEnum = AssetType.caregiver;
        break;
      case 'pharmacy':
        typeEnum = AssetType.pharmacy;
        break;
      case 'diagnostic_lab':
        typeEnum = AssetType.diagnosticLab;
        break;
      default:
        typeEnum = AssetType.caregiver;
    }

    AssetStatus statusEnum;
    switch (status.toLowerCase()) {
      case 'active':
        statusEnum = AssetStatus.active;
        break;
      case 'busy':
        statusEnum = AssetStatus.busy;
        break;
      case 'offline':
        statusEnum = AssetStatus.offline;
        break;
      case 'maintenance':
        statusEnum = AssetStatus.maintenance;
        break;
      default:
        statusEnum = AssetStatus.active;
    }

    return NetworkAssetEntity(
      id: id,
      name: name,
      type: typeEnum,
      status: statusEnum,
      latitude: latitude,
      longitude: longitude,
      currentLocation: currentLocation,
      activeAssignments: activeAssignments,
      completedToday: completedToday,
      lastActiveAt: lastActiveAt,
      utilizationRate: utilizationRate,
    );
  }
}
