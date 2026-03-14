import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/insuree_entity.dart';

class SubscriptionStatusBadge extends StatelessWidget {
  final InsureeStatus status;
  final bool compact;

  const SubscriptionStatusBadge({
    super.key,
    required this.status,
    this.compact = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = _getStatusColor();
    final label = _getStatusLabel();

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: compact ? 8 : 10,
        vertical: compact ? 4 : 6,
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          SizedBox(width: 6),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              fontSize: compact ? 10 : 11,
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor() {
    switch (status) {
      case InsureeStatus.active:
        return AppColors.success;
      case InsureeStatus.expiringSoon:
        return AppColors.warning;
      case InsureeStatus.expired:
        return AppColors.error;
      case InsureeStatus.pendingPayment:
        return AppColors.error;
      case InsureeStatus.removed:
        return AppColors.secondarySteelGrey;
      case InsureeStatus.deceased:
        return AppColors.secondarySteelGrey;
    }
  }

  String _getStatusLabel() {
    switch (status) {
      case InsureeStatus.active:
        return 'Active';
      case InsureeStatus.expiringSoon:
        return 'Expiring';
      case InsureeStatus.expired:
        return 'Expired';
      case InsureeStatus.pendingPayment:
        return 'Payment Due';
      case InsureeStatus.removed:
        return 'Removed';
      case InsureeStatus.deceased:
        return 'Deceased';
    }
  }
}
