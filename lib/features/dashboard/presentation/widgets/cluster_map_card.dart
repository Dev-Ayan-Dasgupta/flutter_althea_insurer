import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_constants.dart';
import '../../domain/entities/cluster_stats_entity.dart';

class ClusterMapCard extends StatelessWidget {
  final ClusterStatsEntity stats;

  const ClusterMapCard({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.map_outlined,
                  color: AppColors.primarySteelBlue,
                  size: 20,
                ),
                SizedBox(width: 8),
                Text(
                  'Cluster Overview - ${AppConstants.clusterLocation}',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              '${AppConstants.clusterRadius} km radius',
              style: theme.textTheme.bodySmall?.copyWith(
                color: isDark
                    ? AppColors.darkTextSecondary
                    : AppColors.lightTextSecondary,
              ),
            ),
            SizedBox(height: 20),

            // Mock Map Placeholder
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: isDark
                    ? AppColors.darkSurfaceVariant
                    : AppColors.lightSurfaceVariant,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 48,
                          color: AppColors.primarySteelBlue.withValues(
                            alpha: 0.5,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Geographic Coverage Map',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: isDark
                                ? AppColors.darkTextTertiary
                                : AppColors.lightTextTertiary,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Coming soon',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: isDark
                                ? AppColors.darkTextTertiary
                                : AppColors.lightTextTertiary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Mock pins
                  Positioned(
                    top: 40,
                    left: 60,
                    child: _PulsingPin(color: AppColors.success),
                  ),
                  Positioned(
                    top: 80,
                    right: 80,
                    child: _PulsingPin(color: AppColors.info),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 100,
                    child: _PulsingPin(color: AppColors.warning),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Network Stats Grid
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 2.3,
              children: [
                _NetworkStat(
                  icon: Icons.directions_car_outlined,
                  label: 'Ambulances',
                  value: stats.ambulancesAvailable.toString(),
                  color: AppColors.error,
                ),
                _NetworkStat(
                  icon: Icons.medical_services_outlined,
                  label: 'Nurses',
                  value: stats.nursesOnDuty.toString(),
                  color: AppColors.success,
                ),
                _NetworkStat(
                  icon: Icons.local_pharmacy_outlined,
                  label: 'Pharmacies',
                  value: stats.pharmaciesActive.toString(),
                  color: AppColors.info,
                ),
                _NetworkStat(
                  icon: Icons.timer_outlined,
                  label: 'Avg Response',
                  value: '${stats.averageResponseTime.toStringAsFixed(1)} min',
                  color: AppColors.primarySteelBlue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _PulsingPin extends StatefulWidget {
  final Color color;

  const _PulsingPin({required this.color});

  @override
  State<_PulsingPin> createState() => _PulsingPinState();
}

class _PulsingPinState extends State<_PulsingPin>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 20 + (20 * _controller.value),
              height: 20 + (20 * _controller.value),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.color.withValues(
                  alpha: 0.3 * (1 - _controller.value),
                ),
              ),
            ),
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.color,
                boxShadow: [
                  BoxShadow(
                    color: widget.color.withValues(alpha: 0.5),
                    blurRadius: 4,
                    spreadRadius: 1,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _NetworkStat extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color color;

  const _NetworkStat({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(icon, size: 16, color: color),
              SizedBox(width: 6),
              Expanded(
                child: Text(
                  label,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: isDark
                        ? AppColors.darkTextSecondary
                        : AppColors.lightTextSecondary,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(
            value,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
