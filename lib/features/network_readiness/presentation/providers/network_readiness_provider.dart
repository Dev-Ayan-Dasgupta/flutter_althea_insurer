import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/network_readiness_datasource.dart';
import '../../domain/entities/network_asset_entity.dart';
import '../../domain/entities/service_capacity_entity.dart';
import '../../domain/entities/resource_utilization_entity.dart';
import '../../domain/entities/coverage_zone_entity.dart';

part 'network_readiness_provider.g.dart';

// Datasource Provider
@Riverpod(keepAlive: true)
NetworkReadinessDatasource networkReadinessDatasource(Ref ref) {
  return NetworkReadinessDatasource();
}

// Network Assets Provider
@riverpod
Future<List<NetworkAssetEntity>> networkAssets(Ref ref) async {
  final datasource = ref.watch(networkReadinessDatasourceProvider);
  final models = await datasource.fetchNetworkAssets();
  return models.map((model) => model.toEntity()).toList();
}

// Service Capacity Provider
@riverpod
Future<List<ServiceCapacityEntity>> serviceCapacity(Ref ref) async {
  final datasource = ref.watch(networkReadinessDatasourceProvider);
  final models = await datasource.fetchServiceCapacity();
  return models.map((model) => model.toEntity()).toList();
}

// Resource Utilization Provider
@riverpod
Future<List<ResourceUtilizationEntity>> resourceUtilization(Ref ref) async {
  final datasource = ref.watch(networkReadinessDatasourceProvider);
  final models = await datasource.fetchResourceUtilization();
  return models.map((model) => model.toEntity()).toList();
}

// Coverage Zones Provider
@riverpod
Future<List<CoverageZoneEntity>> coverageZones(Ref ref) async {
  final datasource = ref.watch(networkReadinessDatasourceProvider);
  final models = await datasource.fetchCoverageZones();
  return models.map((model) => model.toEntity()).toList();
}

// Network Statistics Provider
@riverpod
Future<NetworkStatistics> networkStatistics(Ref ref) async {
  final assets = await ref.watch(networkAssetsProvider.future);
  final capacity = await ref.watch(serviceCapacityProvider.future);

  final totalAssets = assets.length;
  final activeAssets = assets
      .where((a) => a.status == AssetStatus.active)
      .length;
  final busyAssets = assets.where((a) => a.status == AssetStatus.busy).length;

  final ambulances = assets.where((a) => a.type == AssetType.ambulance).length;
  final nurses = assets.where((a) => a.type == AssetType.nurse).length;
  final caregivers = assets.where((a) => a.type == AssetType.caregiver).length;
  final pharmacies = assets.where((a) => a.type == AssetType.pharmacy).length;
  final labs = assets.where((a) => a.type == AssetType.diagnosticLab).length;

  final totalCapacity = capacity.fold<int>(
    0,
    (sum, c) => sum + c.dailyCapacity,
  );
  final totalUtilization = capacity.fold<int>(
    0,
    (sum, c) => sum + c.currentUtilization,
  );
  final avgUtilizationRate = capacity.isEmpty
      ? 0.0
      : capacity.fold<double>(0.0, (sum, c) => sum + c.utilizationPercentage) /
            capacity.length;

  final bottlenecks = capacity.where((c) => c.isBottleneck).length;

  return NetworkStatistics(
    totalAssets: totalAssets,
    activeAssets: activeAssets,
    busyAssets: busyAssets,
    ambulances: ambulances,
    nurses: nurses,
    caregivers: caregivers,
    pharmacies: pharmacies,
    diagnosticLabs: labs,
    totalCapacity: totalCapacity,
    totalUtilization: totalUtilization,
    avgUtilizationRate: avgUtilizationRate,
    bottlenecks: bottlenecks,
  );
}

class NetworkStatistics {
  final int totalAssets;
  final int activeAssets;
  final int busyAssets;
  final int ambulances;
  final int nurses;
  final int caregivers;
  final int pharmacies;
  final int diagnosticLabs;
  final int totalCapacity;
  final int totalUtilization;
  final double avgUtilizationRate;
  final int bottlenecks;

  NetworkStatistics({
    required this.totalAssets,
    required this.activeAssets,
    required this.busyAssets,
    required this.ambulances,
    required this.nurses,
    required this.caregivers,
    required this.pharmacies,
    required this.diagnosticLabs,
    required this.totalCapacity,
    required this.totalUtilization,
    required this.avgUtilizationRate,
    required this.bottlenecks,
  });
}
