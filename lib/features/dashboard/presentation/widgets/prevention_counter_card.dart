import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/prevention_metric_entity.dart';

class PreventionCounterCard extends StatelessWidget {
  final List<PreventionMetricEntity> metrics;

  const PreventionCounterCard({super.key, required this.metrics});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Get hospitalizations averted metric
    final hospitalizationsMetric = metrics.firstWhere(
      (m) => m.type.contains('Hospitalizations'),
      orElse: () => metrics.first,
    );

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.success, AppColors.success.withValues(alpha: 0.8)],
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.success.withValues(alpha: 0.3),
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.local_hospital_outlined,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Preventive Interventions',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),

            // Main counter
            TweenAnimationBuilder<int>(
              tween: IntTween(begin: 0, end: hospitalizationsMetric.count),
              duration: Duration(milliseconds: 1500),
              curve: Curves.easeOutCubic,
              builder: (context, value, child) {
                return Text(
                  value.toString(),
                  style: theme.textTheme.displayLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    fontSize: 56,
                    height: 1.0,
                  ),
                );
              },
            ),
            SizedBox(height: 8),
            Text(
              hospitalizationsMetric.type,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: Colors.white.withValues(alpha: 0.9),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(
                  hospitalizationsMetric.trend >= 0
                      ? Icons.trending_up
                      : Icons.trending_down,
                  color: Colors.white,
                  size: 16,
                ),
                SizedBox(width: 4),
                Text(
                  '${hospitalizationsMetric.trend >= 0 ? '+' : ''}${hospitalizationsMetric.trend.toStringAsFixed(1)}% from last ${hospitalizationsMetric.period.toLowerCase()}',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Colors.white.withValues(alpha: 0.8),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
