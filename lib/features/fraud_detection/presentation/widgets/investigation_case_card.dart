import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/investigation_case_entity.dart';

class InvestigationCaseCard extends StatelessWidget {
  final InvestigationCaseEntity caseEntity;

  const InvestigationCaseCard({super.key, required this.caseEntity});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final priorityColor = _getPriorityColor();
    final statusColor = _getStatusColor();

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: priorityColor.withValues(alpha: 0.3),
          width: caseEntity.priority == CasePriority.urgent ? 2 : 1,
        ),
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
                  color: priorityColor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.folder_open, color: priorityColor, size: 20),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          caseEntity.caseNumber,
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: priorityColor,
                          ),
                        ),
                        if (caseEntity.priority == CasePriority.urgent) ...[
                          SizedBox(width: 8),
                          Icon(
                            Icons.priority_high,
                            color: AppColors.emergencyRed,
                            size: 16,
                          ),
                        ],
                      ],
                    ),
                    SizedBox(height: 2),
                    Text(
                      caseEntity.title,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12),

          // Status and Priority
          Row(
            children: [
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
              SizedBox(width: 8),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
            ],
          ),
          SizedBox(height: 12),

          // Suspect Info
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.warning.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(Icons.person_search, size: 16, color: AppColors.warning),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Primary Suspect',
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        caseEntity.primarySuspect,
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),

          // Metrics
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _MetricItem(
                icon: Icons.attach_money,
                label: 'Amount',
                value: caseEntity.totalAmountInvolved.toCompactCurrency(),
                color: AppColors.error,
              ),
              _MetricItem(
                icon: Icons.savings,
                label: 'Recovered',
                value: caseEntity.recoveredAmount.toCompactCurrency(),
                color: AppColors.success,
              ),
              _MetricItem(
                icon: Icons.receipt_long,
                label: 'Claims',
                value: caseEntity.relatedClaims.toString(),
                color: AppColors.info,
              ),
            ],
          ),
          SizedBox(height: 12),

          // Evidence and Findings
          Row(
            children: [
              Expanded(
                child: _InfoBox(
                  icon: Icons.description,
                  label: 'Evidence',
                  value: caseEntity.evidenceCollected.length.toString(),
                  color: AppColors.info,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: _InfoBox(
                  icon: Icons.search,
                  label: 'Findings',
                  value: caseEntity.findings.length.toString(),
                  color: AppColors.primarySteelBlue,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),

          // Investigator and Timeline
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                    caseEntity.investigator,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: isDark
                          ? AppColors.darkTextSecondary
                          : AppColors.lightTextSecondary,
                    ),
                  ),
                ],
              ),
              Text(
                caseEntity.status == CaseStatus.closed
                    ? 'Closed ${caseEntity.closedAt?.toRelativeString() ?? ''}'
                    : 'Opened ${caseEntity.openedAt.toRelativeString()}',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: isDark
                      ? AppColors.darkTextSecondary
                      : AppColors.lightTextSecondary,
                ),
              ),
            ],
          ),

          // Action Taken (if closed)
          if (caseEntity.actionTaken != null) ...[
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
                      caseEntity.actionTaken!,
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

  Color _getPriorityColor() {
    switch (caseEntity.priority) {
      case CasePriority.low:
        return AppColors.info;
      case CasePriority.medium:
        return AppColors.warning;
      case CasePriority.high:
        return AppColors.error;
      case CasePriority.urgent:
        return AppColors.emergencyRed;
    }
  }

  String _getPriorityLabel() {
    switch (caseEntity.priority) {
      case CasePriority.low:
        return 'LOW PRIORITY';
      case CasePriority.medium:
        return 'MEDIUM';
      case CasePriority.high:
        return 'HIGH';
      case CasePriority.urgent:
        return 'URGENT';
    }
  }

  Color _getStatusColor() {
    switch (caseEntity.status) {
      case CaseStatus.open:
        return AppColors.warning;
      case CaseStatus.investigating:
        return AppColors.info;
      case CaseStatus.evidenceGathering:
        return AppColors.primarySteelBlue;
      case CaseStatus.underReview:
        return AppColors.secondarySteelGrey;
      case CaseStatus.closed:
        return AppColors.success;
    }
  }

  String _getStatusLabel() {
    switch (caseEntity.status) {
      case CaseStatus.open:
        return 'OPEN';
      case CaseStatus.investigating:
        return 'INVESTIGATING';
      case CaseStatus.evidenceGathering:
        return 'GATHERING EVIDENCE';
      case CaseStatus.underReview:
        return 'UNDER REVIEW';
      case CaseStatus.closed:
        return 'CLOSED';
    }
  }
}

class _MetricItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color color;

  const _MetricItem({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Icon(icon, size: 20, color: color),
        SizedBox(height: 4),
        Text(
          value,
          style: theme.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w700,
            color: color,
          ),
        ),
        Text(label, style: theme.textTheme.bodySmall?.copyWith(fontSize: 10)),
      ],
    );
  }
}

class _InfoBox extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color color;

  const _InfoBox({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, size: 16, color: color),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: color,
                ),
              ),
              Text(
                label,
                style: theme.textTheme.bodySmall?.copyWith(fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
