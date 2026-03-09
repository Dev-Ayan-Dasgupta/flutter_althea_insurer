import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/safety_alert_entity.dart';

class SafetyAlertCard extends StatelessWidget {
  final SafetyAlertEntity alert;
  final VoidCallback? onTap;

  const SafetyAlertCard({super.key, required this.alert, this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final severityColor = _getSeverityColor();

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: severityColor.withValues(alpha: 0.3),
          width: alert.requiresImmediateAction ? 2 : 1,
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
                        color: severityColor.withValues(alpha: 0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        _getAlertIcon(),
                        color: severityColor,
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
                              Text(
                                alert.patientName,
                                style: theme.textTheme.titleSmall?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              if (alert.requiresImmediateAction) ...[
                                SizedBox(width: 8),
                                Icon(
                                  Icons.priority_high,
                                  size: 16,
                                  color: AppColors.emergencyRed,
                                ),
                              ],
                            ],
                          ),
                          SizedBox(height: 2),
                          Text(
                            alert.alertMessage,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: severityColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: severityColor.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        _getSeverityLabel(),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: severityColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),

                // Reason
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: severityColor.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    alert.detectedReason,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 12),

                // Recommended Action
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.info.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppColors.info.withValues(alpha: 0.2),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.lightbulb_outline,
                        size: 16,
                        color: AppColors.info,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          alert.recommendedAction,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: AppColors.info,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),

                // Footer
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                          alert.detectedAt.toRelativeString(),
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: isDark
                                ? AppColors.darkTextSecondary
                                : AppColors.lightTextSecondary,
                          ),
                        ),
                      ],
                    ),
                    if (alert.assignedCaregiver != null)
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            size: 14,
                            color: isDark
                                ? AppColors.darkTextTertiary
                                : AppColors.lightTextTertiary,
                          ),
                          SizedBox(width: 4),
                          Text(
                            alert.assignedCaregiver!,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: isDark
                                  ? AppColors.darkTextSecondary
                                  : AppColors.lightTextSecondary,
                            ),
                          ),
                        ],
                      ),
                    if (alert.actionTaken == true)
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.success.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              size: 12,
                              color: AppColors.success,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Action Taken',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: AppColors.success,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _getSeverityColor() {
    switch (alert.severity) {
      case AlertSeverity.critical:
        return AppColors.emergencyRed;
      case AlertSeverity.high:
        return AppColors.error;
      case AlertSeverity.medium:
        return AppColors.warning;
      case AlertSeverity.low:
        return AppColors.info;
    }
  }

  String _getSeverityLabel() {
    switch (alert.severity) {
      case AlertSeverity.critical:
        return 'CRITICAL';
      case AlertSeverity.high:
        return 'HIGH';
      case AlertSeverity.medium:
        return 'MEDIUM';
      case AlertSeverity.low:
        return 'LOW';
    }
  }

  IconData _getAlertIcon() {
    switch (alert.alertType) {
      case AlertType.fallRisk:
        return Icons.warning;
      case AlertType.abnormalVitals:
        return Icons.monitor_heart;
      case AlertType.mobilityDeclining:
        return Icons.accessible;
      case AlertType.missedMedication:
        return Icons.medication;
      case AlertType.inactivity:
        return Icons.bed;
      case AlertType.maternalComplication:
        return Icons.pregnant_woman;
      case AlertType.infantDistress:
        return Icons.child_care;
      case AlertType.painEscalation:
        return Icons.sentiment_very_dissatisfied;
      case AlertType.recoverySetback:
        return Icons.trending_down;
      case AlertType.caregiverAlert:
        return Icons.support;
    }
  }
}
