import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/emergency_case_entity.dart';

class SeverityBadge extends StatelessWidget {
  final EmergencySeverity severity;
  final bool showLabel;

  const SeverityBadge({
    super.key,
    required this.severity,
    this.showLabel = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = _getColor();
    final icon = _getIcon();
    final label = _getLabel();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: 0.5), width: 1.5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: color),
          if (showLabel) ...[
            SizedBox(width: 6),
            Text(
              label,
              style: theme.textTheme.bodySmall?.copyWith(
                color: color,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Color _getColor() {
    switch (severity) {
      case EmergencySeverity.critical:
        return AppColors.emergencyRed;
      case EmergencySeverity.high:
        return AppColors.emergencyAmber;
      case EmergencySeverity.moderate:
        return AppColors.warning;
      case EmergencySeverity.low:
        return AppColors.success;
    }
  }

  IconData _getIcon() {
    switch (severity) {
      case EmergencySeverity.critical:
        return Icons.local_hospital;
      case EmergencySeverity.high:
        return Icons.warning;
      case EmergencySeverity.moderate:
        return Icons.priority_high;
      case EmergencySeverity.low:
        return Icons.info_outline;
    }
  }

  String _getLabel() {
    switch (severity) {
      case EmergencySeverity.critical:
        return 'CRITICAL';
      case EmergencySeverity.high:
        return 'HIGH';
      case EmergencySeverity.moderate:
        return 'MODERATE';
      case EmergencySeverity.low:
        return 'LOW';
    }
  }
}
