import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/adherence_cohort_entity.dart';

class AdherenceCohortCard extends StatelessWidget {
  final AdherenceCohortEntity cohort;

  const AdherenceCohortCard({super.key, required this.cohort});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      margin: EdgeInsets.only(bottom: 16),
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
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cohort.cohortName,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '${cohort.totalPatients} patients',
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
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: _getAdherenceColor().withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      '${cohort.avgAdherenceRate.toStringAsFixed(1)}%',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: _getAdherenceColor(),
                      ),
                    ),
                    Text(
                      'Adherence',
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontSize: 10,
                        color: _getAdherenceColor(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          // Adherence Distribution
          Column(
            children: [
              _AdherenceBar(
                label: 'Excellent (>90%)',
                count: cohort.excellentAdherence,
                total: cohort.totalPatients,
                color: AppColors.success,
              ),
              SizedBox(height: 8),
              _AdherenceBar(
                label: 'Good (75-90%)',
                count: cohort.goodAdherence,
                total: cohort.totalPatients,
                color: AppColors.info,
              ),
              SizedBox(height: 8),
              _AdherenceBar(
                label: 'Fair (50-75%)',
                count: cohort.fairAdherence,
                total: cohort.totalPatients,
                color: AppColors.warning,
              ),
              SizedBox(height: 8),
              _AdherenceBar(
                label: 'Poor (<50%)',
                count: cohort.poorAdherence,
                total: cohort.totalPatients,
                color: AppColors.error,
              ),
            ],
          ),
          SizedBox(height: 20),

          // Metrics Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _MetricItem(
                icon: Icons.local_hospital,
                label: 'Hosp. Rate',
                value: '${cohort.hospitalizationRate.toStringAsFixed(1)}%',
                color: cohort.hospitalizationRate > 10
                    ? AppColors.error
                    : AppColors.success,
              ),
              _MetricItem(
                icon: Icons.attach_money,
                label: 'Cost/Patient',
                value: cohort.costPerPatient.toCompactCurrency(),
                color: AppColors.warning,
              ),
              _MetricItem(
                icon: Icons.healing,
                label: 'Interventions',
                value: cohort.interventionsActive.length.toString(),
                color: AppColors.info,
              ),
            ],
          ),

          // Active Interventions
          if (cohort.interventionsActive.isNotEmpty) ...[
            SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (var intervention in cohort.interventionsActive)
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppColors.primarySteelBlue.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.primarySteelBlue.withValues(
                          alpha: 0.3,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.check_circle,
                          size: 14,
                          color: AppColors.primarySteelBlue,
                        ),
                        SizedBox(width: 6),
                        Text(
                          intervention,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: AppColors.primarySteelBlue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Color _getAdherenceColor() {
    if (cohort.avgAdherenceRate >= 85) return AppColors.success;
    if (cohort.avgAdherenceRate >= 70) return AppColors.info;
    if (cohort.avgAdherenceRate >= 50) return AppColors.warning;
    return AppColors.error;
  }
}

class _AdherenceBar extends StatelessWidget {
  final String label;
  final int count;
  final int total;
  final Color color;

  const _AdherenceBar({
    required this.label,
    required this.count,
    required this.total,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final percentage = (count / total);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: theme.textTheme.bodySmall),
            Text(
              '$count (${(percentage * 100).toStringAsFixed(0)}%)',
              style: theme.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
          ],
        ),
        SizedBox(height: 4),
        Stack(
          children: [
            Container(
              height: 8,
              decoration: BoxDecoration(
                color: isDark
                    ? AppColors.darkSurfaceVariant
                    : AppColors.lightSurfaceVariant,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            FractionallySizedBox(
              widthFactor: percentage,
              child: Container(
                height: 8,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ],
        ),
      ],
    );
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
        Icon(icon, size: 24, color: color),
        SizedBox(height: 4),
        Text(
          value,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
            color: color,
          ),
        ),
        Text(
          label,
          style: theme.textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
