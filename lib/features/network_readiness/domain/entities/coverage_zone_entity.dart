import 'package:freezed_annotation/freezed_annotation.dart';

part 'coverage_zone_entity.freezed.dart';

@freezed
abstract class CoverageZoneEntity with _$CoverageZoneEntity {
  const factory CoverageZoneEntity({
    required String id,
    required String zoneName,
    required double centerLatitude,
    required double centerLongitude,
    required double radiusKm,
    required int populationCovered,
    required int activeAssets,
    required double coverageScore,
    required int avgResponseTimeMinutes,
    required bool hasAdequateCoverage,
  }) = _CoverageZoneEntity;
}
