import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/audit_flag_entity.dart';

class AuditFlagBadge extends StatelessWidget {
  final AuditFlagEntity flag;
  final bool compact;

  const AuditFlagBadge({super.key, required this.flag, this.compact = false});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = _getSeverityColor();

    if (compact) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: color.withValues(alpha: 0.3)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(_getTypeIcon(), size: 12, color: color),
            SizedBox(width: 4),
            Text(
              _getSeverityLabel(),
              style: theme.textTheme.bodySmall?.copyWith(
                color: color,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(_getTypeIcon(), size: 20, color: color),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      flag.description,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: color.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        _getSeverityLabel(),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: color,
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  flag.reason,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? AppColors.darkTextSecondary
                        : AppColors.lightTextSecondary,
                  ),
                ),
              ],
            ),
          ),
          if (flag.requiresInvestigation)
            Icon(Icons.flag, color: AppColors.error, size: 20),
        ],
      ),
    );
  }

  Color _getSeverityColor() {
    switch (flag.severity) {
      case AuditFlagSeverity.critical:
        return AppColors.emergencyRed;
      case AuditFlagSeverity.high:
        return AppColors.error;
      case AuditFlagSeverity.medium:
        return AppColors.warning;
      case AuditFlagSeverity.low:
        return AppColors.info;
    }
  }

  String _getSeverityLabel() {
    switch (flag.severity) {
      case AuditFlagSeverity.critical:
        return 'CRITICAL';
      case AuditFlagSeverity.high:
        return 'HIGH';
      case AuditFlagSeverity.medium:
        return 'MEDIUM';
      case AuditFlagSeverity.low:
        return 'LOW';
    }
  }

  IconData _getTypeIcon() {
    switch (flag.type) {
      case AuditFlagType.gpsDiscrepancy:
        return Icons.location_off;
      case AuditFlagType.bleHandshakeMissing:
        return Icons.bluetooth_disabled;
      case AuditFlagType.duplicateClaim:
        return Icons.content_copy;
      case AuditFlagType.shortDuration:
        return Icons.timer_off;
      case AuditFlagType.timeAnomaly:
        return Icons.access_time;
      case AuditFlagType.manualOverride:
        return Icons.edit_note;
    }
  }
}
