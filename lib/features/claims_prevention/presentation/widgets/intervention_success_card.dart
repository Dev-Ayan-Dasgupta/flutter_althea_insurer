import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/intervention_impact_entity.dart';

class InterventionSuccessCard extends StatelessWidget {
  final InterventionImpactEntity intervention;

  const InterventionSuccessCard({super.key, required this.intervention});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final color = _getCategoryColor();

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(_getCategoryIcon(), color: color, size: 24),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      intervention.name,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      _getCategoryLabel(),
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: color,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.success.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      size: 16,
                      color: AppColors.success,
                    ),
                    SizedBox(width: 6),
                    Text(
                      '${intervention.successRate.toStringAsFixed(1)}%',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.success,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          // Metrics Grid
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 2.5,
            children: [
              _MetricBox(
                label: 'Total Interventions',
                value: intervention.totalInterventions.toString(),
                color: AppColors.info,
              ),
              _MetricBox(
                label: 'Successful',
                value: intervention.successfulOutcomes.toString(),
                color: AppColors.success,
              ),
              _MetricBox(
                label: 'Avg Cost',
                value: intervention.avgCostPerIntervention.toCompactCurrency(),
                color: AppColors.warning,
              ),
              _MetricBox(
                label: 'Avg Savings',
                value: intervention.avgSavingsPerSuccess.toCompactCurrency(),
                color: AppColors.success,
              ),
            ],
          ),
          SizedBox(height: 16),
          Divider(),
          SizedBox(height: 16),

          // Total Impact
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Savings',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: isDark
                          ? AppColors.darkTextSecondary
                          : AppColors.lightTextSecondary,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    intervention.totalSavings.toCurrency(),
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.success,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: AppColors.primarySteelBlue.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      'ROI',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: AppColors.primarySteelBlue,
                      ),
                    ),
                    Text(
                      '${intervention.roi.toStringAsFixed(0)}%',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.primarySteelBlue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color _getCategoryColor() {
    switch (intervention.category) {
      case InterventionCategory.nursing:
        return AppColors.primarySteelBlue;
      case InterventionCategory.medication:
        return AppColors.success;
      case InterventionCategory.monitoring:
        return AppColors.info;
      case InterventionCategory.emergency:
        return AppColors.emergencyAmber;
      case InterventionCategory.lifestyle:
        return AppColors.warning;
    }
  }

  IconData _getCategoryIcon() {
    switch (intervention.category) {
      case InterventionCategory.nursing:
        return Icons.medical_services;
      case InterventionCategory.medication:
        return Icons.medication;
      case InterventionCategory.monitoring:
        return Icons.monitor_heart;
      case InterventionCategory.emergency:
        return Icons.emergency;
      case InterventionCategory.lifestyle:
        return Icons.directions_run;
    }
  }

  String _getCategoryLabel() {
    switch (intervention.category) {
      case InterventionCategory.nursing:
        return 'Nursing Care';
      case InterventionCategory.medication:
        return 'Medication Management';
      case InterventionCategory.monitoring:
        return 'Health Monitoring';
      case InterventionCategory.emergency:
        return 'Emergency Response';
      case InterventionCategory.lifestyle:
        return 'Lifestyle Intervention';
    }
  }
}

class _MetricBox extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _MetricBox({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: isDark
                  ? AppColors.darkTextSecondary
                  : AppColors.lightTextSecondary,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 4),
          Text(
            value,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
              color: color,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
