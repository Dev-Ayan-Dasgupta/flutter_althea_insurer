import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/live_alert_entity.dart';

class AlertTimelineView extends StatelessWidget {
  final List<LiveAlertEntity> alerts;

  const AlertTimelineView({super.key, required this.alerts});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    // Sort alerts by time (most recent first)
    final sortedAlerts = List<LiveAlertEntity>.from(alerts)
      ..sort((a, b) => b.triggeredAt.compareTo(a.triggeredAt));

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
              Icon(Icons.timeline, color: AppColors.primarySteelBlue, size: 20),
              SizedBox(width: 8),
              Text(
                'Alert Timeline',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          // Timeline
          for (int i = 0; i < sortedAlerts.length; i++)
            _TimelineItem(
              alert: sortedAlerts[i],
              isLast: i == sortedAlerts.length - 1,
            ),
        ],
      ),
    );
  }
}

class _TimelineItem extends StatelessWidget {
  final LiveAlertEntity alert;
  final bool isLast;

  const _TimelineItem({required this.alert, required this.isLast});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final priorityColor = _getPriorityColor();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Timeline indicator
        Column(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: priorityColor,
                shape: BoxShape.circle,
              ),
            ),
            if (!isLast)
              Container(
                width: 2,
                height: 60,
                color: (isDark ? Colors.white : Colors.black).withValues(
                  alpha: 0.2,
                ),
              ),
          ],
        ),
        SizedBox(width: 12),

        // Content
        Expanded(
          child: Container(
            margin: EdgeInsets.only(bottom: isLast ? 0 : 12),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: priorityColor.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: priorityColor.withValues(alpha: 0.2)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      alert.triggeredAt.toFormattedString(),
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: priorityColor,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: priorityColor.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        _getPriorityLabel(),
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                          color: priorityColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Text(
                  alert.title,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (alert.patientName != null) ...[
                  SizedBox(height: 4),
                  Text(
                    alert.patientName!,
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontSize: 11,
                      color: isDark
                          ? AppColors.darkTextSecondary
                          : AppColors.lightTextSecondary,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }

  Color _getPriorityColor() {
    switch (alert.priority) {
      case AlertPriority.emergency:
        return AppColors.emergencyRed;
      case AlertPriority.critical:
        return AppColors.error;
      case AlertPriority.high:
        return AppColors.warning;
      case AlertPriority.medium:
        return AppColors.info;
      case AlertPriority.low:
        return AppColors.success;
    }
  }

  String _getPriorityLabel() {
    switch (alert.priority) {
      case AlertPriority.emergency:
        return 'EMERGENCY';
      case AlertPriority.critical:
        return 'CRITICAL';
      case AlertPriority.high:
        return 'HIGH';
      case AlertPriority.medium:
        return 'MEDIUM';
      case AlertPriority.low:
        return 'LOW';
    }
  }
}
