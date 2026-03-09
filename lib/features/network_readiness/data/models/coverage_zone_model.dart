import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/coverage_zone_entity.dart';

part 'coverage_zone_model.freezed.dart';
part 'coverage_zone_model.g.dart';

@freezed
abstract class CoverageZoneModel with _$CoverageZoneModel {
  const CoverageZoneModel._();

  const factory CoverageZoneModel({
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
  }) = _CoverageZoneModel;

  factory CoverageZoneModel.fromJson(Map<String, dynamic> json) =>
      _$CoverageZoneModelFromJson(json);

  CoverageZoneEntity toEntity() => CoverageZoneEntity(
    id: id,
    zoneName: zoneName,
    centerLatitude: centerLatitude,
    centerLongitude: centerLongitude,
    radiusKm: radiusKm,
    populationCovered: populationCovered,
    activeAssets: activeAssets,
    coverageScore: coverageScore,
    avgResponseTimeMinutes: avgResponseTimeMinutes,
    hasAdequateCoverage: hasAdequateCoverage,
  );
}
