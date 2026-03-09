import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/live_alert_entity.dart';

class LiveAlertCard extends StatelessWidget {
  final LiveAlertEntity alert;
  final VoidCallback? onTap;

  const LiveAlertCard({super.key, required this.alert, this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final priorityColor = _getPriorityColor();
    final categoryColor = _getCategoryColor();

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: priorityColor.withValues(alpha: 0.3),
          width: alert.priority == AlertPriority.emergency ? 3 : 2,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: priorityColor.withValues(alpha: 0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        _getCategoryIcon(),
                        color: priorityColor,
                        size: 20,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  alert.title,
                                  style: theme.textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              if (alert.requiresImmediateAction == true)
                                Icon(
                                  Icons.priority_high,
                                  color: AppColors.emergencyRed,
                                  size: 20,
                                ),
                            ],
                          ),
                          SizedBox(height: 2),
                          Text(
                            '${_getCategoryLabel()} • ${alert.source}',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: categoryColor,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),

                // Description
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: priorityColor.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    alert.description,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 12),

                // Patient/Provider Info
                if (alert.patientName != null ||
                    alert.providerName != null) ...[
                  Row(
                    children: [
                      if (alert.patientName != null) ...[
                        Icon(Icons.person, size: 14, color: categoryColor),
                        SizedBox(width: 4),
                        Text(
                          alert.patientName!,
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: categoryColor,
                          ),
                        ),
                      ],
                      if (alert.patientName != null &&
                          alert.providerName != null)
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text('•', style: theme.textTheme.bodySmall),
                        ),
                      if (alert.providerName != null) ...[
                        Icon(Icons.business, size: 14, color: categoryColor),
                        SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            alert.providerName!,
                            style: theme.textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: categoryColor,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ],
                  ),
                  SizedBox(height: 12),
                ],

                // Tags
                if (alert.tags.isNotEmpty) ...[
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: [
                      for (var tag in alert.tags.take(3))
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: categoryColor.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            tag,
                            style: theme.textTheme.bodySmall?.copyWith(
                              fontSize: 10,
                              color: categoryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                    ],
                  ),
                  SizedBox(height: 12),
                ],

                // Bottom Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: priorityColor.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            _getPriorityLabel(),
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: priorityColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: _getStatusColor().withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            _getStatusLabel(),
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: _getStatusColor(),
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 14,
                          color: isDark
                              ? AppColors.darkTextTertiary
                              : AppColors.lightTextTertiary,
                        ),
                        SizedBox(width: 4),
                        Text(
                          alert.triggeredAt.toRelativeString(),
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: isDark
                                ? AppColors.darkTextSecondary
                                : AppColors.lightTextSecondary,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // Assigned To / Action Taken
                if (alert.assignedTo != null || alert.actionTaken != null) ...[
                  SizedBox(height: 12),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.info.withValues(alpha: 0.05),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (alert.assignedTo != null)
                          Row(
                            children: [
                              Icon(
                                Icons.person_pin,
                                size: 14,
                                color: AppColors.info,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'Assigned: ${alert.assignedTo}',
                                style: theme.textTheme.bodySmall?.copyWith(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        if (alert.assignedTo != null &&
                            alert.actionTaken != null)
                          SizedBox(height: 6),
                        if (alert.actionTaken != null)
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.check_circle,
                                size: 14,
                                color: AppColors.success,
                              ),
                              SizedBox(width: 6),
                              Expanded(
                                child: Text(
                                  alert.actionTaken!,
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    fontSize: 11,
                                    color: AppColors.success,
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
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

  Color _getCategoryColor() {
    switch (alert.category) {
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

  String _getCategoryLabel() {
    switch (alert.category) {
      case AlertCategory.emergency:
        return 'Emergency';
      case AlertCategory.safety:
        return 'Safety';
      case AlertCategory.fraud:
        return 'Fraud';
      case AlertCategory.medication:
        return 'Medication';
      case AlertCategory.riskEscalation:
        return 'Risk';
      case AlertCategory.systemAlert:
        return 'System';
    }
  }

  IconData _getCategoryIcon() {
    switch (alert.category) {
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

  Color _getStatusColor() {
    switch (alert.status) {
      case AlertStatus.active:
        return AppColors.error;
      case AlertStatus.acknowledged:
        return AppColors.info;
      case AlertStatus.inProgress:
        return AppColors.warning;
      case AlertStatus.resolved:
        return AppColors.success;
      case AlertStatus.dismissed:
        return AppColors.secondarySteelGrey;
    }
  }

  String _getStatusLabel() {
    switch (alert.status) {
      case AlertStatus.active:
        return 'ACTIVE';
      case AlertStatus.acknowledged:
        return 'ACKNOWLEDGED';
      case AlertStatus.inProgress:
        return 'IN PROGRESS';
      case AlertStatus.resolved:
        return 'RESOLVED';
      case AlertStatus.dismissed:
        return 'DISMISSED';
    }
  }
}
