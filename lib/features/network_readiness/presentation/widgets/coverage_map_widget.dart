import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/coverage_zone_entity.dart';

class CoverageMapWidget extends StatelessWidget {
  final List<CoverageZoneEntity> zones;

  const CoverageMapWidget({super.key, required this.zones});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.map, color: AppColors.primarySteelBlue, size: 20),
              SizedBox(width: 8),
              Text(
                'Coverage Zones',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          // Map Placeholder (simplified representation)
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: isDark
                  ? AppColors.darkSurfaceVariant
                  : AppColors.lightSurfaceVariant,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                // Background pattern
                Center(
                  child: Icon(
                    Icons.location_city,
                    size: 80,
                    color: (isDark ? Colors.white : Colors.black).withValues(
                      alpha: 0.05,
                    ),
                  ),
                ),
                // Zone circles
                for (var zone in zones)
                  Positioned(
                    left: _getPositionX(zone, 250),
                    top: _getPositionY(zone, 250),
                    child: _ZoneCircle(zone: zone),
                  ),
              ],
            ),
          ),
          SizedBox(height: 20),

          // Zone Details
          for (var zone in zones) _ZoneDetailCard(zone: zone),
        ],
      ),
    );
  }

  double _getPositionX(CoverageZoneEntity zone, double width) {
    // Simplified positioning based on longitude
    // In production, use proper map projection
    if (zone.zoneName.contains('Kasba')) return width * 0.3;
    if (zone.zoneName.contains('Rajarhat')) return width * 0.6;
    return width * 0.5;
  }

  double _getPositionY(CoverageZoneEntity zone, double height) {
    // Simplified positioning based on latitude
    if (zone.zoneName.contains('Kasba')) return height * 0.6;
    if (zone.zoneName.contains('Rajarhat')) return height * 0.3;
    return height * 0.5;
  }
}

class _ZoneCircle extends StatelessWidget {
  final CoverageZoneEntity zone;

  const _ZoneCircle({required this.zone});

  @override
  Widget build(BuildContext context) {
    final color = zone.hasAdequateCoverage
        ? AppColors.success
        : AppColors.error;

    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        shape: BoxShape.circle,
        border: Border.all(color: color, width: 2),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              zone.activeAssets.toString(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: color,
              ),
            ),
            Text('assets', style: TextStyle(fontSize: 10, color: color)),
          ],
        ),
      ),
    );
  }
}

class _ZoneDetailCard extends StatelessWidget {
  final CoverageZoneEntity zone;

  const _ZoneDetailCard({required this.zone});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: zone.hasAdequateCoverage
            ? AppColors.success.withValues(alpha: 0.05)
            : AppColors.error.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: zone.hasAdequateCoverage
              ? AppColors.success.withValues(alpha: 0.3)
              : AppColors.error.withValues(alpha: 0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  zone.zoneName,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: zone.hasAdequateCoverage
                      ? AppColors.success.withValues(alpha: 0.2)
                      : AppColors.error.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  children: [
                    Icon(
                      zone.hasAdequateCoverage
                          ? Icons.check_circle
                          : Icons.warning,
                      size: 12,
                      color: zone.hasAdequateCoverage
                          ? AppColors.success
                          : AppColors.error,
                    ),
                    SizedBox(width: 4),
                    Text(
                      '${zone.coverageScore.toStringAsFixed(0)}%',
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: zone.hasAdequateCoverage
                            ? AppColors.success
                            : AppColors.error,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _ZoneMetric(
                icon: Icons.people,
                value: zone.populationCovered.toString(),
                label: 'Population',
              ),
              _ZoneMetric(
                icon: Icons.pin_drop,
                value: '${zone.radiusKm.toStringAsFixed(1)} km',
                label: 'Radius',
              ),
              _ZoneMetric(
                icon: Icons.timer,
                value: '${zone.avgResponseTimeMinutes} min',
                label: 'Avg Response',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ZoneMetric extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const _ZoneMetric({
    required this.icon,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Row(
      children: [
        Icon(
          icon,
          size: 14,
          color: isDark
              ? AppColors.darkTextTertiary
              : AppColors.lightTextTertiary,
        ),
        SizedBox(width: 4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value,
              style: theme.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              label,
              style: theme.textTheme.bodySmall?.copyWith(
                fontSize: 9,
                color: isDark
                    ? AppColors.darkTextSecondary
                    : AppColors.lightTextSecondary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
