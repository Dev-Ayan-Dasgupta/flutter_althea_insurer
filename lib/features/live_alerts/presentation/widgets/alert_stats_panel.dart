import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../providers/live_alerts_provider.dart';
import '../../domain/entities/live_alert_entity.dart';

class AlertStatsPanel extends StatelessWidget {
  final AlertStatistics stats;

  const AlertStatsPanel({super.key, required this.stats});

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
              Icon(
                Icons.analytics,
                color: AppColors.primarySteelBlue,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Alert Analytics',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          // Summary Stats
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _StatItem(
                label: 'Total',
                value: stats.totalAlerts.toString(),
                color: AppColors.primarySteelBlue,
              ),
              _StatItem(
                label: 'Active',
                value: stats.activeAlerts.toString(),
                color: AppColors.warning,
              ),
              _StatItem(
                label: 'Emergency',
                value: stats.emergencyAlerts.toString(),
                color: AppColors.emergencyRed,
              ),
            ],
          ),
          SizedBox(height: 20),

          // Category Breakdown
          Text(
            'By Category',
            style: theme.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 12),
          for (var entry in stats.categoryCounts.entries)
            Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        _getCategoryIcon(entry.key),
                        size: 16,
                        color: _getCategoryColor(entry.key),
                      ),
                      SizedBox(width: 8),
                      Text(
                        _getCategoryLabel(entry.key),
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: _getCategoryColor(
                        entry.key,
                      ).withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      entry.value.toString(),
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: _getCategoryColor(entry.key),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          SizedBox(height: 20),

          // Response Time
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.success.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Avg Response Time',
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '${stats.avgResponseTime.toStringAsFixed(1)} min',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.success,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _getCategoryColor(AlertCategory category) {
    switch (category) {
      case AlertCategory.emergency:
        return AppColors.emergencyRed;
      case AlertCategory.safety:
        return AppColors.warning;
      case AlertCategory.fraud:
        return AppColors.error;
      case AlertCategory.medication:
        return AppColors.info;
      case AlertCategory.riskEscalation:
        return AppColors.primarySteelBlue;
      case AlertCategory.systemAlert:
        return AppColors.secondarySteelGrey;
    }
  }

  IconData _getCategoryIcon(AlertCategory category) {
    switch (category) {
      case AlertCategory.emergency:
        return Icons.emergency;
      case AlertCategory.safety:
        return Icons.shield;
      case AlertCategory.fraud:
        return Icons.security;
      case AlertCategory.medication:
        return Icons.medication;
      case AlertCategory.riskEscalation:
        return Icons.trending_up;
      case AlertCategory.systemAlert:
        return Icons.notifications;
    }
  }

  String _getCategoryLabel(AlertCategory category) {
    switch (category) {
      case AlertCategory.emergency:
        return 'Emergency';
      case AlertCategory.safety:
        return 'Safety';
      case AlertCategory.fraud:
        return 'Fraud';
      case AlertCategory.medication:
        return 'Medication';
      case AlertCategory.riskEscalation:
        return 'Risk Escalation';
      case AlertCategory.systemAlert:
        return 'System';
    }
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _StatItem({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Text(
          value,
          style: theme.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w700,
            color: color,
          ),
        ),
        SizedBox(height: 4),
        Text(label, style: theme.textTheme.bodySmall),
      ],
    );
  }
}
