import 'dart:math';
import '../../../../core/utils/logger.dart';
import '../models/network_asset_model.dart';
import '../models/service_capacity_model.dart';
import '../models/resource_utilization_model.dart';
import '../models/coverage_zone_model.dart';

class NetworkReadinessDatasource {
  final Random _random = Random();

  final List<String> _nurseNames = [
    'Nurse Priya',
    'Nurse Anjali',
    'Nurse Sunita',
    'Nurse Kavita',
    'Nurse Rekha',
    'Nurse Meera',
    'Nurse Pooja',
    'Nurse Shalini',
  ];

  final List<String> _locations = [
    'Kasba',
    'Rajarhat',
    'Salt Lake',
    'Park Street',
    'Alipore',
    'New Town',
  ];

  // Fetch network assets
  Future<List<NetworkAssetModel>> fetchNetworkAssets() async {
    try {
      Logger.info('Fetching network assets', tag: 'NetworkReadinessDatasource');

      await Future.delayed(Duration(milliseconds: 800));

      final assets = <NetworkAssetModel>[];

      // Ambulances
      for (int i = 0; i < 2; i++) {
        assets.add(
          NetworkAssetModel(
            id: 'AMB${i + 1}',
            name: 'Ambulance ${i + 1}',
            type: 'ambulance',
            status: _random.nextDouble() > 0.3 ? 'active' : 'busy',
            latitude: 22.5726 + (_random.nextDouble() * 0.02 - 0.01),
            longitude: 88.3639 + (_random.nextDouble() * 0.02 - 0.01),
            currentLocation: _locations[_random.nextInt(_locations.length)],
            activeAssignments: _random.nextInt(2),
            completedToday: 3 + _random.nextInt(5),
            lastActiveAt: DateTime.now().subtract(
              Duration(minutes: _random.nextInt(60)),
            ),
            utilizationRate: 60.0 + (_random.nextDouble() * 30),
          ),
        );
      }

      // Nurses
      for (int i = 0; i < 12; i++) {
        assets.add(
          NetworkAssetModel(
            id: 'NRS${i + 1}',
            name: _nurseNames[i % _nurseNames.length],
            type: 'nurse',
            status: _getRandomStatus(),
            latitude: 22.5726 + (_random.nextDouble() * 0.02 - 0.01),
            longitude: 88.3639 + (_random.nextDouble() * 0.02 - 0.01),
            currentLocation: _locations[_random.nextInt(_locations.length)],
            activeAssignments: _random.nextInt(3),
            completedToday: 4 + _random.nextInt(4),
            lastActiveAt: DateTime.now().subtract(
              Duration(minutes: _random.nextInt(120)),
            ),
            utilizationRate: 50.0 + (_random.nextDouble() * 40),
          ),
        );
      }

      // Caregivers
      for (int i = 0; i < 30; i++) {
        assets.add(
          NetworkAssetModel(
            id: 'CRG${i + 1}',
            name: 'Caregiver ${i + 1}',
            type: 'caregiver',
            status: _getRandomStatus(),
            latitude: 22.5726 + (_random.nextDouble() * 0.02 - 0.01),
            longitude: 88.3639 + (_random.nextDouble() * 0.02 - 0.01),
            currentLocation: _locations[_random.nextInt(_locations.length)],
            activeAssignments: _random.nextInt(2),
            completedToday: 2 + _random.nextInt(6),
            lastActiveAt: DateTime.now().subtract(
              Duration(minutes: _random.nextInt(180)),
            ),
            utilizationRate: 40.0 + (_random.nextDouble() * 50),
          ),
        );
      }

      // Pharmacies
      for (int i = 0; i < 4; i++) {
        assets.add(
          NetworkAssetModel(
            id: 'PHM${i + 1}',
            name: 'Pharmacy ${i + 1}',
            type: 'pharmacy',
            status: 'active',
            latitude: 22.5726 + (_random.nextDouble() * 0.02 - 0.01),
            longitude: 88.3639 + (_random.nextDouble() * 0.02 - 0.01),
            currentLocation: _locations[_random.nextInt(_locations.length)],
            activeAssignments: null,
            completedToday: 15 + _random.nextInt(20),
            lastActiveAt: DateTime.now().subtract(
              Duration(minutes: _random.nextInt(30)),
            ),
            utilizationRate: 70.0 + (_random.nextDouble() * 20),
          ),
        );
      }

      // Diagnostic Labs
      for (int i = 0; i < 2; i++) {
        assets.add(
          NetworkAssetModel(
            id: 'LAB${i + 1}',
            name: 'Diagnostic Lab ${i + 1}',
            type: 'diagnostic_lab',
            status: 'active',
            latitude: 22.5726 + (_random.nextDouble() * 0.02 - 0.01),
            longitude: 88.3639 + (_random.nextDouble() * 0.02 - 0.01),
            currentLocation: _locations[_random.nextInt(_locations.length)],
            activeAssignments: null,
            completedToday: 8 + _random.nextInt(12),
            lastActiveAt: DateTime.now().subtract(
              Duration(minutes: _random.nextInt(45)),
            ),
            utilizationRate: 65.0 + (_random.nextDouble() * 25),
          ),
        );
      }

      Logger.info(
        'Fetched ${assets.length} network assets',
        tag: 'NetworkReadinessDatasource',
      );
      return assets;
    } catch (e) {
      Logger.error(
        'Error fetching network assets',
        tag: 'NetworkReadinessDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch service capacity
  Future<List<ServiceCapacityModel>> fetchServiceCapacity() async {
    try {
      Logger.info(
        'Fetching service capacity',
        tag: 'NetworkReadinessDatasource',
      );

      await Future.delayed(Duration(milliseconds: 600));

      final capacities = [
        ServiceCapacityModel(
          id: 'SC001',
          serviceType: 'nurse_visit',
          serviceName: 'Daily Nurse Visits',
          dailyCapacity: 50,
          currentUtilization: 42,
          availableSlots: 8,
          utilizationPercentage: 84.0,
          demandForecast: 55,
          isBottleneck: true,
          bottleneckReason:
              'Demand exceeds capacity during peak hours (10 AM - 2 PM)',
        ),
        ServiceCapacityModel(
          id: 'SC002',
          serviceType: 'medicine_delivery',
          serviceName: 'Medicine Deliveries',
          dailyCapacity: 120,
          currentUtilization: 95,
          availableSlots: 25,
          utilizationPercentage: 79.2,
          demandForecast: 110,
          isBottleneck: false,
        ),
        ServiceCapacityModel(
          id: 'SC003',
          serviceType: 'diagnostic_test',
          serviceName: 'Diagnostic Tests',
          dailyCapacity: 80,
          currentUtilization: 68,
          availableSlots: 12,
          utilizationPercentage: 85.0,
          demandForecast: 75,
          isBottleneck: false,
        ),
        ServiceCapacityModel(
          id: 'SC004',
          serviceType: 'ambulance_service',
          serviceName: 'Ambulance Services',
          dailyCapacity: 20,
          currentUtilization: 12,
          availableSlots: 8,
          utilizationPercentage: 60.0,
          demandForecast: 18,
          isBottleneck: false,
        ),
        ServiceCapacityModel(
          id: 'SC005',
          serviceType: 'physiotherapy',
          serviceName: 'Physiotherapy Sessions',
          dailyCapacity: 35,
          currentUtilization: 32,
          availableSlots: 3,
          utilizationPercentage: 91.4,
          demandForecast: 40,
          isBottleneck: true,
          bottleneckReason:
              'Limited physiotherapists available in Rajarhat zone',
        ),
      ];

      Logger.info(
        'Fetched ${capacities.length} service capacities',
        tag: 'NetworkReadinessDatasource',
      );
      return capacities;
    } catch (e) {
      Logger.error(
        'Error fetching service capacity',
        tag: 'NetworkReadinessDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch resource utilization
  Future<List<ResourceUtilizationModel>> fetchResourceUtilization() async {
    try {
      Logger.info(
        'Fetching resource utilization',
        tag: 'NetworkReadinessDatasource',
      );

      await Future.delayed(Duration(milliseconds: 700));

      final utilizations = [
        _generateResourceUtilization('Nurses', 12, 10, 42, 8.5),
        _generateResourceUtilization('Ambulances', 2, 2, 12, 15.0),
        _generateResourceUtilization('Caregivers', 30, 25, 68, 12.0),
        _generateResourceUtilization('Pharmacies', 4, 4, 95, 5.0),
      ];

      Logger.info(
        'Fetched ${utilizations.length} resource utilizations',
        tag: 'NetworkReadinessDatasource',
      );
      return utilizations;
    } catch (e) {
      Logger.error(
        'Error fetching resource utilization',
        tag: 'NetworkReadinessDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch coverage zones
  Future<List<CoverageZoneModel>> fetchCoverageZones() async {
    try {
      Logger.info('Fetching coverage zones', tag: 'NetworkReadinessDatasource');

      await Future.delayed(Duration(milliseconds: 500));

      final zones = [
        CoverageZoneModel(
          id: 'ZONE001',
          zoneName: 'Kasba Central',
          centerLatitude: 22.5226,
          centerLongitude: 88.3739,
          radiusKm: 1.5,
          populationCovered: 4500,
          activeAssets: 18,
          coverageScore: 85.0,
          avgResponseTimeMinutes: 8,
          hasAdequateCoverage: true,
        ),
        CoverageZoneModel(
          id: 'ZONE002',
          zoneName: 'Rajarhat',
          centerLatitude: 22.6126,
          centerLongitude: 88.4539,
          radiusKm: 2.0,
          populationCovered: 5500,
          activeAssets: 22,
          coverageScore: 92.0,
          avgResponseTimeMinutes: 7,
          hasAdequateCoverage: true,
        ),
      ];

      Logger.info(
        'Fetched ${zones.length} coverage zones',
        tag: 'NetworkReadinessDatasource',
      );
      return zones;
    } catch (e) {
      Logger.error(
        'Error fetching coverage zones',
        tag: 'NetworkReadinessDatasource',
        error: e,
      );
      rethrow;
    }
  }

  String _getRandomStatus() {
    final rand = _random.nextDouble();
    if (rand < 0.6) return 'active';
    if (rand < 0.8) return 'busy';
    if (rand < 0.95) return 'offline';
    return 'maintenance';
  }

  ResourceUtilizationModel _generateResourceUtilization(
    String name,
    int total,
    int active,
    int utilCount,
    double avgResponse,
  ) {
    final hourlyData = <HourlyUtilizationModel>[];
    for (int i = 0; i < 24; i++) {
      final baseUtil = utilCount / 24;
      final variance = _random.nextDouble() * baseUtil;
      final hourUtil = (baseUtil + variance * (i >= 8 && i <= 18 ? 1 : -0.5))
          .clamp(0, total)
          .toInt();
      hourlyData.add(
        HourlyUtilizationModel(
          hour: i,
          utilization: hourUtil,
          rate: (hourUtil / total * 100).clamp(0, 100),
        ),
      );
    }

    final peakUtil = hourlyData
        .reduce((a, b) => a.utilization > b.utilization ? a : b)
        .utilization;

    return ResourceUtilizationModel(
      resourceType: name.toLowerCase(),
      resourceName: name,
      totalResources: total,
      activeResources: active,
      utilizationCount: utilCount,
      utilizationRate: (utilCount / total * 100).clamp(0, 100),
      averageResponseTime: avgResponse,
      peakHourUtilization: peakUtil,
      hourlyData: hourlyData,
    );
  }
}
