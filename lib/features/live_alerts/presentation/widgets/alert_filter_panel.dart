import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/live_alert_entity.dart';

class AlertFilterPanel extends StatelessWidget {
  final Set<AlertCategory> selectedCategories;
  final Set<AlertPriority> selectedPriorities;
  final Set<AlertStatus> selectedStatuses;
  final Function(Set<AlertCategory>) onCategoriesChanged;
  final Function(Set<AlertPriority>) onPrioritiesChanged;
  final Function(Set<AlertStatus>) onStatusesChanged;
  final VoidCallback? onClearAll;

  const AlertFilterPanel({
    super.key,
    required this.selectedCategories,
    required this.selectedPriorities,
    required this.selectedStatuses,
    required this.onCategoriesChanged,
    required this.onPrioritiesChanged,
    required this.onStatusesChanged,
    this.onClearAll,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.filter_list,
                    color: AppColors.primarySteelBlue,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Filters',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              if (selectedCategories.isNotEmpty ||
                  selectedPriorities.isNotEmpty ||
                  selectedStatuses.isNotEmpty)
                TextButton(onPressed: onClearAll, child: Text('Clear All')),
            ],
          ),
          SizedBox(height: 16),

          // Categories
          Text(
            'Category',
            style: theme.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (var category in AlertCategory.values)
                FilterChip(
                  label: Text(_getCategoryLabel(category)),
                  selected: selectedCategories.contains(category),
                  onSelected: (selected) {
                    final newCategories = Set<AlertCategory>.from(
                      selectedCategories,
                    );
                    if (selected) {
                      newCategories.add(category);
                    } else {
                      newCategories.remove(category);
                    }
                    onCategoriesChanged(newCategories);
                  },
                  selectedColor: _getCategoryColor(
                    category,
                  ).withValues(alpha: 0.2),
                  checkmarkColor: _getCategoryColor(category),
                ),
            ],
          ),
          SizedBox(height: 16),

          // Priorities
          Text(
            'Priority',
            style: theme.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (var priority in AlertPriority.values)
                FilterChip(
                  label: Text(_getPriorityLabel(priority)),
                  selected: selectedPriorities.contains(priority),
                  onSelected: (selected) {
                    final newPriorities = Set<AlertPriority>.from(
                      selectedPriorities,
                    );
                    if (selected) {
                      newPriorities.add(priority);
                    } else {
                      newPriorities.remove(priority);
                    }
                    onPrioritiesChanged(newPriorities);
                  },
                  selectedColor: _getPriorityColor(
                    priority,
                  ).withValues(alpha: 0.2),
                  checkmarkColor: _getPriorityColor(priority),
                ),
            ],
          ),
          SizedBox(height: 16),

          // Statuses
          Text(
            'Status',
            style: theme.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (var status in AlertStatus.values)
                FilterChip(
                  label: Text(_getStatusLabel(status)),
                  selected: selectedStatuses.contains(status),
                  onSelected: (selected) {
                    final newStatuses = Set<AlertStatus>.from(selectedStatuses);
                    if (selected) {
                      newStatuses.add(status);
                    } else {
                      newStatuses.remove(status);
                    }
                    onStatusesChanged(newStatuses);
                  },
                  selectedColor: _getStatusColor(status).withValues(alpha: 0.2),
                  checkmarkColor: _getStatusColor(status),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Color _getCategoryColor(AlertCategory category) {
    switch (category) {
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

  String _getCategoryLabel(AlertCategory category) {
    switch (category) {
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

  Color _getPriorityColor(AlertPriority priority) {
    switch (priority) {
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

  String _getPriorityLabel(AlertPriority priority) {
    switch (priority) {
      case AlertPriority.emergency:
        return 'Emergency';
      case AlertPriority.critical:
        return 'Critical';
      case AlertPriority.high:
        return 'High';
      case AlertPriority.medium:
        return 'Medium';
      case AlertPriority.low:
        return 'Low';
    }
  }

  Color _getStatusColor(AlertStatus status) {
    switch (status) {
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

  String _getStatusLabel(AlertStatus status) {
    switch (status) {
      case AlertStatus.active:
        return 'Active';
      case AlertStatus.acknowledged:
        return 'Acknowledged';
      case AlertStatus.inProgress:
        return 'In Progress';
      case AlertStatus.resolved:
        return 'Resolved';
      case AlertStatus.dismissed:
        return 'Dismissed';
    }
  }
}
