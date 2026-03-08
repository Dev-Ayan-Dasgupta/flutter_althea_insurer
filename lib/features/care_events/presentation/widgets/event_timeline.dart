import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';

class EventTimeline extends StatelessWidget {
  final DateTime scheduledAt;
  final DateTime? completedAt;
  final DateTime createdAt;

  const EventTimeline({
    super.key,
    required this.scheduledAt,
    this.completedAt,
    required this.createdAt,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _TimelineItem(
          icon: Icons.event_outlined,
          title: 'Created',
          time: createdAt.toDateTimeString(),
          isCompleted: true,
        ),
        _TimelineDivider(),
        _TimelineItem(
          icon: Icons.schedule_outlined,
          title: 'Scheduled',
          time: scheduledAt.toDateTimeString(),
          isCompleted: true,
        ),
        if (completedAt != null) ...[
          _TimelineDivider(),
          _TimelineItem(
            icon: Icons.check_circle_outline,
            title: 'Completed',
            time: completedAt!.toDateTimeString(),
            isCompleted: true,
          ),
        ],
      ],
    );
  }
}

class _TimelineItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String time;
  final bool isCompleted;

  const _TimelineItem({
    required this.icon,
    required this.title,
    required this.time,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: isCompleted
                ? AppColors.success.withValues(alpha: 0.1)
                : (isDark
                      ? AppColors.darkSurfaceVariant
                      : AppColors.lightSurfaceVariant),
            shape: BoxShape.circle,
            border: Border.all(
              color: isCompleted
                  ? AppColors.success
                  : (isDark ? AppColors.darkBorder : AppColors.lightBorder),
              width: 2,
            ),
          ),
          child: Icon(
            icon,
            size: 20,
            color: isCompleted
                ? AppColors.success
                : AppColors.secondarySteelGrey,
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 2),
              Text(
                time,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: isDark
                      ? AppColors.darkTextSecondary
                      : AppColors.lightTextSecondary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TimelineDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: EdgeInsets.only(left: 19),
      child: Container(
        width: 2,
        height: 24,
        color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
      ),
    );
  }
}
