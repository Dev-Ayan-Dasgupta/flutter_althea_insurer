import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/chronic_disease_cohort_entity.dart';

class DiseaseCohortCard extends StatelessWidget {
  final ChronicDiseaseCohortEntity cohort;

  const DiseaseCohortCard({super.key, required this.cohort});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final color = _getDiseaseColor();

    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withValues(alpha: 0.3), width: 2),
      ),
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
                child: Icon(_getDiseaseIcon(), color: color, size: 28),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cohort.diseaseName,
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '${cohort.totalPatients} patients in cohort',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: isDark
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: _getRiskScoreColor().withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Avg Risk: ${cohort.avgRiskScore.toStringAsFixed(1)}',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: _getRiskScoreColor(),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          // Control Distribution
          Row(
            children: [
              Expanded(
                child: _ControlStatusBox(
                  label: 'Well Controlled',
                  count: cohort.wellControlled,
                  total: cohort.totalPatients,
                  color: AppColors.success,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: _ControlStatusBox(
                  label: 'Moderate',
                  count: cohort.moderateControl,
                  total: cohort.totalPatients,
                  color: AppColors.warning,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: _ControlStatusBox(
                  label: 'Poor Control',
                  count: cohort.poorControl,
                  total: cohort.totalPatients,
                  color: AppColors.error,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          // Risk Trend Chart
          Text(
            'Risk Progression (6 months)',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 12),
          SizedBox(
            height: 120,
            child: LineChart(
              LineChartData(
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(show: false),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    spots: cohort.riskTrend
                        .asMap()
                        .entries
                        .map((e) => FlSpot(e.key.toDouble(), e.value.value))
                        .toList(),
                    isCurved: true,
                    color: color,
                    barWidth: 3,
                    dotData: FlDotData(show: true),
                    belowBarData: BarAreaData(
                      show: true,
                      color: color.withValues(alpha: 0.1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),

          // Metrics Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _MetricItem(
                icon: Icons.local_hospital,
                label: 'Hosp. Rate',
                value:
                    '${(cohort.hospitalizationRate * 100).toStringAsFixed(1)}%',
                color: AppColors.error,
              ),
              _MetricItem(
                icon: Icons.medication,
                label: 'Adherence',
                value: '${(cohort.adherenceRate * 100).toStringAsFixed(0)}%',
                color: AppColors.info,
              ),
              _MetricItem(
                icon: Icons.healing,
                label: 'Interventions',
                value: cohort.interventionsActive.toString(),
                color: AppColors.primarySteelBlue,
              ),
              _MetricItem(
                icon: Icons.check_circle,
                label: 'Success Rate',
                value: '${cohort.interventionSuccessRate.toStringAsFixed(1)}%',
                color: AppColors.success,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color _getDiseaseColor() {
    switch (cohort.diseaseType) {
      case DiseaseType.diabetes:
        return AppColors.info;
      case DiseaseType.hypertension:
        return AppColors.error;
      case DiseaseType.cardiac:
        return AppColors.emergencyRed;
      case DiseaseType.copd:
        return AppColors.warning;
      case DiseaseType.ckd:
        return AppColors.secondarySteelGrey;
    }
  }

  IconData _getDiseaseIcon() {
    switch (cohort.diseaseType) {
      case DiseaseType.diabetes:
        return Icons.water_drop;
      case DiseaseType.hypertension:
        return Icons.favorite;
      case DiseaseType.cardiac:
        return Icons.monitor_heart;
      case DiseaseType.copd:
        return Icons.air;
      case DiseaseType.ckd:
        return Icons.boy_rounded;
    }
  }

  Color _getRiskScoreColor() {
    if (cohort.avgRiskScore >= 70) return AppColors.riskCritical;
    if (cohort.avgRiskScore >= 60) return AppColors.riskHigh;
    if (cohort.avgRiskScore >= 40) return AppColors.riskModerate;
    return AppColors.riskLow;
  }
}

class _ControlStatusBox extends StatelessWidget {
  final String label;
  final int count;
  final int total;
  final Color color;

  const _ControlStatusBox({
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
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: theme.textTheme.bodySmall,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 2),
          Text(
            '$percentage%',
            style: theme.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
        ],
      ),
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
        Icon(icon, color: color, size: 24),
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
