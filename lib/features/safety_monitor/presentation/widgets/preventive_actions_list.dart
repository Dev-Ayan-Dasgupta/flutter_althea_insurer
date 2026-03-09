import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/preventive_action_entity.dart';

class PreventiveActionsList extends StatelessWidget {
  final List<PreventiveActionEntity> actions;
  final String title;

  const PreventiveActionsList({
    super.key,
    required this.actions,
    this.title = 'Preventive Actions',
  });

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
                Icons.checklist,
                color: AppColors.primarySteelBlue,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                title,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.info.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '${actions.length} actions',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.info,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),

          if (actions.isEmpty)
            Center(
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Column(
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      size: 48,
                      color: AppColors.success,
                    ),
                    SizedBox(height: 12),
                    Text(
                      'No pending actions',
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            )
          else
            for (var action in actions) _PreventiveActionItem(action: action),
        ],
      ),
    );
  }
}

class _PreventiveActionItem extends StatelessWidget {
  final PreventiveActionEntity action;

  const _PreventiveActionItem({required this.action});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final statusColor = _getStatusColor();

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: statusColor.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: statusColor.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: statusColor.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(_getActionIcon(), color: statusColor, size: 16),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      action.actionName,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      action.patientName,
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
          if (action.notes != null) ...[
            SizedBox(height: 10),
            Text(
              action.notes!,
              style: theme.textTheme.bodySmall?.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
          SizedBox(height: 10),
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
                action.status == ActionStatus.completed
                    ? 'Completed ${action.completedAt?.toRelativeString() ?? ''}'
                    : 'Scheduled: ${action.scheduledFor.toFormattedString()}',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: isDark
                      ? AppColors.darkTextSecondary
                      : AppColors.lightTextSecondary,
                ),
              ),
              if (action.assignedTo != null) ...[
                Spacer(),
                Icon(
                  Icons.person,
                  size: 14,
                  color: isDark
                      ? AppColors.darkTextTertiary
                      : AppColors.lightTextTertiary,
                ),
                SizedBox(width: 4),
                Text(
                  action.assignedTo!,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: isDark
                        ? AppColors.darkTextSecondary
                        : AppColors.lightTextSecondary,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Color _getStatusColor() {
    switch (action.status) {
      case ActionStatus.pending:
        return AppColors.warning;
      case ActionStatus.scheduled:
        return AppColors.info;
      case ActionStatus.inProgress:
        return AppColors.primarySteelBlue;
      case ActionStatus.completed:
        return AppColors.success;
    }
  }

  String _getStatusLabel() {
    switch (action.status) {
      case ActionStatus.pending:
        return 'PENDING';
      case ActionStatus.scheduled:
        return 'SCHEDULED';
      case ActionStatus.inProgress:
        return 'IN PROGRESS';
      case ActionStatus.completed:
        return 'COMPLETED';
    }
  }

  IconData _getActionIcon() {
    switch (action.actionType) {
      case ActionType.homeSafetyInspection:
        return Icons.home;
      case ActionType.caregiverVisit:
        return Icons.person;
      case ActionType.physiotherapy:
        return Icons.accessibility_new;
      case ActionType.wearableCalibration:
        return Icons.watch;
      case ActionType.medicationReview:
        return Icons.medication;
      case ActionType.nutritionCounseling:
        return Icons.restaurant;
      case ActionType.prenatalCheckup:
        return Icons.pregnant_woman;
      case ActionType.infantMonitoring:
        return Icons.child_care;
      case ActionType.painManagement:
        return Icons.healing;
      case ActionType.mentalHealthSupport:
        return Icons.psychology;
    }
  }
}
