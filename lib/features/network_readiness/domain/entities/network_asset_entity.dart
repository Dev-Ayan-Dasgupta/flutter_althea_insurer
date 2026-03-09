import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_asset_entity.freezed.dart';

enum AssetType { ambulance, nurse, caregiver, pharmacy, diagnosticLab }

enum AssetStatus { active, busy, offline, maintenance }

@freezed
abstract class NetworkAssetEntity with _$NetworkAssetEntity {
  const factory NetworkAssetEntity({
    required String id,
    required String name,
    required AssetType type,
    required AssetStatus status,
    required double? latitude,
    required double? longitude,
    String? currentLocation,
    int? activeAssignments,
    int? completedToday,
    DateTime? lastActiveAt,
    double? utilizationRate,
  }) = _NetworkAssetEntity;
}
