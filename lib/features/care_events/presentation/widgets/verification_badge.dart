import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/verification_status_entity.dart';

class VerificationBadge extends StatelessWidget {
  final VerificationStatusEntity status;
  final bool showDetails;

  const VerificationBadge({
    super.key,
    required this.status,
    this.showDetails = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = _getColor();
    final icon = _getIcon();
    final label = _getLabel();

    if (!showDetails) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color.withValues(alpha: 0.3)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 14, color: color),
            SizedBox(width: 4),
            Text(
              label,
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
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 20, color: color),
              SizedBox(width: 8),
              Text(
                label,
                style: theme.textTheme.titleSmall?.copyWith(
                  color: color,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          _VerificationItem(
            label: 'BLE Handshake',
            verified: status.bleVerified,
          ),
          SizedBox(height: 8),
          _VerificationItem(
            label: 'GPS Location',
            verified: status.gpsVerified,
          ),
          SizedBox(height: 8),
          _VerificationItem(
            label: 'Timestamp',
            verified: status.timestampVerified,
          ),
          if (status.flagReason != null) ...[
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.warning.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.warning_outlined,
                    size: 16,
                    color: AppColors.warning,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      status.flagReason!,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: AppColors.warning,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Color _getColor() {
    switch (status.status) {
      case VerificationStatusType.verified:
        return AppColors.verified;
      case VerificationStatusType.partial:
        return AppColors.partial;
      case VerificationStatusType.flagged:
        return AppColors.flagged;
      case VerificationStatusType.pending:
        return AppColors.pending;
    }
  }

  IconData _getIcon() {
    switch (status.status) {
      case VerificationStatusType.verified:
        return Icons.verified;
      case VerificationStatusType.partial:
        return Icons.check_circle_outline;
      case VerificationStatusType.flagged:
        return Icons.flag_outlined;
      case VerificationStatusType.pending:
        return Icons.pending_outlined;
    }
  }

  String _getLabel() {
    switch (status.status) {
      case VerificationStatusType.verified:
        return 'Verified';
      case VerificationStatusType.partial:
        return 'Partial';
      case VerificationStatusType.flagged:
        return 'Flagged';
      case VerificationStatusType.pending:
        return 'Pending';
    }
  }
}

class _VerificationItem extends StatelessWidget {
  final String label;
  final bool verified;

  const _VerificationItem({required this.label, required this.verified});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Row(
      children: [
        Icon(
          verified ? Icons.check_circle : Icons.cancel,
          size: 16,
          color: verified ? AppColors.success : AppColors.error,
        ),
        SizedBox(width: 8),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: isDark
                ? AppColors.darkTextSecondary
                : AppColors.lightTextSecondary,
          ),
        ),
      ],
    );
  }
}
