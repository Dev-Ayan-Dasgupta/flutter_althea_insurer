import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/cohort_entity.dart';

class CohortOverviewCard extends StatelessWidget {
  final CohortEntity cohort;
  final VoidCallback? onTap;

  const CohortOverviewCard({super.key, required this.cohort, this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final color = _getCohortColor();
    final isImproving = cohort.incidentChangePercentage < 0;

    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withValues(alpha: 0.3), width: 2),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: color.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(_getCohortIcon(), color: color, size: 28),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cohort.cohortName,
                            style: theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            cohort.description,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: isDark
                                  ? AppColors.darkTextSecondary
                                  : AppColors.lightTextSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          cohort.totalPatients.toString(),
                          style: theme.textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: color,
                          ),
                        ),
                        Text(
                          'patients',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: color,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Risk Distribution
                Row(
                  children: [
                    Expanded(
                      child: _RiskBox(
                        label: 'Low',
                        count: cohort.lowRisk,
                        total: cohort.totalPatients,
                        color: AppColors.success,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: _RiskBox(
                        label: 'Moderate',
                        count: cohort.moderateRisk,
                        total: cohort.totalPatients,
                        color: AppColors.warning,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: _RiskBox(
                        label: 'High',
                        count: cohort.highRisk,
                        total: cohort.totalPatients,
                        color: AppColors.error,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: _RiskBox(
                        label: 'Critical',
                        count: cohort.criticalRisk,
                        total: cohort.totalPatients,
                        color: AppColors.emergencyRed,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Metrics Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _MetricChip(
                      icon: Icons.warning,
                      label: 'Active Alerts',
                      value: cohort.activeAlerts.toString(),
                      color: cohort.activeAlerts > 0
                          ? AppColors.error
                          : AppColors.success,
                    ),
                    _MetricChip(
                      icon: isImproving
                          ? Icons.trending_down
                          : Icons.trending_up,
                      label: 'Incidents',
                      value:
                          '${cohort.incidentsThisMonth} (${isImproving ? '' : '+'}${cohort.incidentChangePercentage.toStringAsFixed(0)}%)',
                      color: isImproving ? AppColors.success : AppColors.error,
                    ),
                    _MetricChip(
                      icon: Icons.shield,
                      label: 'Preventive',
                      value: cohort.preventiveActionsActive.toString(),
                      color: AppColors.info,
                    ),
                  ],
                ),
                SizedBox(height: 16),

                // Top Risk Factors
                if (cohort.topRiskFactors.isNotEmpty) ...[
                  Text(
                    'Top Risk Factors:',
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      for (var factor in cohort.topRiskFactors.take(3))
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: color.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: color.withValues(alpha: 0.3),
                            ),
                          ),
                          child: Text(
                            factor,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: color,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _getCohortColor() {
    switch (cohort.cohortType) {
      case CohortType.elderly:
        return AppColors.primarySteelBlue;
      case CohortType.pregnancy:
        return AppColors.success;
      case CohortType.infantToddler:
        return AppColors.warning;
      case CohortType.accidentRecovery:
        return AppColors.error;
      case CohortType.terminalIllness:
        return AppColors.secondarySteelGrey;
    }
  }

  IconData _getCohortIcon() {
    switch (cohort.cohortType) {
      case CohortType.elderly:
        return Icons.elderly;
      case CohortType.pregnancy:
        return Icons.pregnant_woman;
      case CohortType.infantToddler:
        return Icons.child_care;
      case CohortType.accidentRecovery:
        return Icons.healing;
      case CohortType.terminalIllness:
        return Icons.favorite;
    }
  }
}

class _RiskBox extends StatelessWidget {
  final String label;
  final int count;
  final int total;
  final Color color;

  const _RiskBox({
    required this.label,
    required this.count,
    required this.total,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final percentage = (count / total * 100).toStringAsFixed(0);

    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Column(
        children: [
          Text(
            count.toString(),
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(fontSize: 11),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 2),
          Text(
            '$percentage%',
            style: theme.textTheme.bodySmall?.copyWith(
              fontSize: 10,
              color: color,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _MetricChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color color;

  const _MetricChip({
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
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w700,
            color: color,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(fontSize: 10),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
