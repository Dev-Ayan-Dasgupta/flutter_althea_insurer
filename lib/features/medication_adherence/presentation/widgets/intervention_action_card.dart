import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/intervention_entity.dart';

class InterventionActionCard extends StatelessWidget {
  final InterventionEntity intervention;

  const InterventionActionCard({super.key, required this.intervention});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final statusColor = _getStatusColor();

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: statusColor.withValues(alpha: 0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: _getTypeColor().withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(_getTypeIcon(), color: _getTypeColor(), size: 20),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      intervention.interventionName,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      intervention.patientName,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: isDark
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: statusColor.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  _getStatusLabel(),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: statusColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),

          // Description
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.info.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              intervention.description,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 12),

          // Expected Outcome
          Row(
            children: [
              Icon(Icons.flag, size: 16, color: AppColors.success),
              SizedBox(width: 6),
              Expanded(
                child: Text(
                  intervention.expectedOutcome,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.success,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),

          // Bottom Info
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (intervention.scheduledFor != null)
                Row(
                  children: [
                    Icon(
                      Icons.schedule,
                      size: 14,
                      color: isDark
                          ? AppColors.darkTextTertiary
                          : AppColors.lightTextTertiary,
                    ),
                    SizedBox(width: 4),
                    Text(
                      intervention.status == InterventionStatus.completed
                          ? 'Completed ${intervention.completedAt?.toRelativeString() ?? ''}'
                          : 'Scheduled: ${intervention.scheduledFor?.toFormattedString() ?? ''}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: isDark
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                      ),
                    ),
                  ],
                ),
              if (intervention.assignedTo != null)
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
                      intervention.assignedTo!,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: isDark
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                      ),
                    ),
                  ],
                ),
            ],
          ),

          // Outcome (if completed)
          if (intervention.outcome != null) ...[
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.success.withValues(alpha: 0.05),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColors.success.withValues(alpha: 0.2),
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.check_circle, size: 16, color: AppColors.success),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      intervention.outcome!,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: AppColors.success,
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

  Color _getStatusColor() {
    switch (intervention.status) {
      case InterventionStatus.recommended:
        return AppColors.warning;
      case InterventionStatus.scheduled:
        return AppColors.info;
      case InterventionStatus.inProgress:
        return AppColors.primarySteelBlue;
      case InterventionStatus.completed:
        return AppColors.success;
    }
  }

  String _getStatusLabel() {
    switch (intervention.status) {
      case InterventionStatus.recommended:
        return 'RECOMMENDED';
      case InterventionStatus.scheduled:
        return 'SCHEDULED';
      case InterventionStatus.inProgress:
        return 'IN PROGRESS';
      case InterventionStatus.completed:
        return 'COMPLETED';
    }
  }

  Color _getTypeColor() {
    switch (intervention.type) {
      case InterventionType.reminder:
        return AppColors.info;
      case InterventionType.counseling:
        return AppColors.primarySteelBlue;
      case InterventionType.simplification:
        return AppColors.success;
      case InterventionType.pillbox:
        return AppColors.warning;
      case InterventionType.caregiverSupport:
        return AppColors.secondarySteelGrey;
      case InterventionType.financialAssistance:
        return AppColors.error;
    }
  }

  IconData _getTypeIcon() {
    switch (intervention.type) {
      case InterventionType.reminder:
        return Icons.notifications;
      case InterventionType.counseling:
        return Icons.psychology;
      case InterventionType.simplification:
        return Icons.tune;
      case InterventionType.pillbox:
        return Icons.inventory_2;
      case InterventionType.caregiverSupport:
        return Icons.support;
      case InterventionType.financialAssistance:
        return Icons.attach_money;
    }
  }
}
