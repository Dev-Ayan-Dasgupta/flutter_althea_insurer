import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/intervention_entity.dart';

class InterventionCard extends StatelessWidget {
  final InterventionEntity intervention;

  const InterventionCard({super.key, required this.intervention});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final priorityColor = _getPriorityColor();

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: priorityColor.withValues(alpha: 0.3),
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Priority badge
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: priorityColor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(_getPriorityIcon(), size: 14, color: priorityColor),
                    SizedBox(width: 6),
                    Text(
                      _getPriorityLabel(),
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: priorityColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8),
              // Type badge
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: _getTypeColor().withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  _getTypeLabel(),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: _getTypeColor(),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Spacer(),
              // Status
              if (intervention.isImplemented)
                Icon(Icons.check_circle, color: AppColors.success, size: 20)
              else
                Icon(
                  Icons.pending_outlined,
                  color: AppColors.warning,
                  size: 20,
                ),
            ],
          ),
          SizedBox(height: 12),

          // Title
          Text(
            intervention.title,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 6),

          // Description
          Text(
            intervention.description,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: isDark
                  ? AppColors.darkTextSecondary
                  : AppColors.lightTextSecondary,
            ),
          ),
          SizedBox(height: 12),

          // Metrics
          Row(
            children: [
              _MetricItem(
                icon: Icons.trending_up,
                label: 'Impact',
                value: '${intervention.expectedImpact.toStringAsFixed(1)}%',
                color: AppColors.success,
              ),
              SizedBox(width: 20),
              _MetricItem(
                icon: Icons.currency_rupee,
                label: 'Cost',
                value: intervention.estimatedCost.toCompactCurrency(),
                color: AppColors.warning,
              ),
              SizedBox(width: 20),
              _MetricItem(
                icon: Icons.schedule,
                label: 'Timeframe',
                value: intervention.timeframe,
                color: AppColors.info,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color _getPriorityColor() {
    switch (intervention.priority) {
      case InterventionPriority.critical:
        return AppColors.emergencyRed;
      case InterventionPriority.high:
        return AppColors.emergencyAmber;
      case InterventionPriority.medium:
        return AppColors.warning;
      case InterventionPriority.low:
        return AppColors.info;
    }
  }

  IconData _getPriorityIcon() {
    switch (intervention.priority) {
      case InterventionPriority.critical:
        return Icons.warning;
      case InterventionPriority.high:
        return Icons.priority_high;
      case InterventionPriority.medium:
        return Icons.info_outline;
      case InterventionPriority.low:
        return Icons.low_priority;
    }
  }

  String _getPriorityLabel() {
    switch (intervention.priority) {
      case InterventionPriority.critical:
        return 'CRITICAL';
      case InterventionPriority.high:
        return 'HIGH';
      case InterventionPriority.medium:
        return 'MEDIUM';
      case InterventionPriority.low:
        return 'LOW';
    }
  }

  Color _getTypeColor() {
    switch (intervention.type) {
      case InterventionType.medication:
        return AppColors.primarySteelBlue;
      case InterventionType.lifestyle:
        return AppColors.success;
      case InterventionType.monitoring:
        return AppColors.info;
      case InterventionType.referral:
        return AppColors.warning;
    }
  }

  String _getTypeLabel() {
    switch (intervention.type) {
      case InterventionType.medication:
        return 'Medication';
      case InterventionType.lifestyle:
        return 'Lifestyle';
      case InterventionType.monitoring:
        return 'Monitoring';
      case InterventionType.referral:
        return 'Referral';
    }
  }
}

class _MetricItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color color;

  const _MetricItem({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Row(
      children: [
        Icon(icon, size: 16, color: color),
        SizedBox(width: 6),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: theme.textTheme.bodySmall?.copyWith(
                fontSize: 10,
                color: isDark
                    ? AppColors.darkTextTertiary
                    : AppColors.lightTextTertiary,
              ),
            ),
            Text(
              value,
              style: theme.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: color,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
