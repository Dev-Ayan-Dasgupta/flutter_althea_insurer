import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/cohort_entity.dart';

class RiskDistributionChart extends StatelessWidget {
  final List<CohortEntity> cohorts;

  const RiskDistributionChart({super.key, required this.cohorts});

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
                Icons.pie_chart,
                color: AppColors.primarySteelBlue,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Risk Distribution Across Cohorts',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          // Bar Chart
          SizedBox(
            height: 250,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY:
                    cohorts
                        .fold<int>(
                          0,
                          (max, c) =>
                              c.totalPatients > max ? c.totalPatients : max,
                        )
                        .toDouble() *
                    1.2,
                barTouchData: BarTouchData(enabled: false),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        final index = value.toInt();
                        if (index >= 0 && index < cohorts.length) {
                          return Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              _getCohortShortName(cohorts[index].cohortType),
                              style: theme.textTheme.bodySmall?.copyWith(
                                fontSize: 11,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          );
                        }
                        return SizedBox.shrink();
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      getTitlesWidget: (value, meta) {
                        return Text(
                          value.toInt().toString(),
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontSize: 10,
                          ),
                        );
                      },
                    ),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  horizontalInterval: 100,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(
                      color: (isDark ? Colors.white : Colors.black).withValues(
                        alpha: 0.1,
                      ),
                      strokeWidth: 1,
                    );
                  },
                ),
                borderData: FlBorderData(show: false),
                barGroups: cohorts.asMap().entries.map((entry) {
                  final index = entry.key;
                  final cohort = entry.value;
                  return BarChartGroupData(
                    x: index,
                    barRods: [
                      BarChartRodData(
                        toY: cohort.lowRisk.toDouble(),
                        color: AppColors.success,
                        width: 20,
                        borderRadius: BorderRadius.zero,
                      ),
                      BarChartRodData(
                        toY: cohort.moderateRisk.toDouble(),
                        color: AppColors.warning,
                        width: 20,
                        borderRadius: BorderRadius.zero,
                      ),
                      BarChartRodData(
                        toY: cohort.highRisk.toDouble(),
                        color: AppColors.error,
                        width: 20,
                        borderRadius: BorderRadius.zero,
                      ),
                      BarChartRodData(
                        toY: cohort.criticalRisk.toDouble(),
                        color: AppColors.emergencyRed,
                        width: 20,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(height: 20),

          // Legend
          Wrap(
            spacing: 16,
            runSpacing: 8,
            children: [
              _LegendItem(label: 'Low Risk', color: AppColors.success),
              _LegendItem(label: 'Moderate Risk', color: AppColors.warning),
              _LegendItem(label: 'High Risk', color: AppColors.error),
              _LegendItem(
                label: 'Critical Risk',
                color: AppColors.emergencyRed,
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _getCohortShortName(CohortType type) {
    switch (type) {
      case CohortType.elderly:
        return 'Elderly';
      case CohortType.pregnancy:
        return 'Pregnancy';
      case CohortType.infantToddler:
        return 'Infant';
      case CohortType.accidentRecovery:
        return 'Accident';
      case CohortType.terminalIllness:
        return 'Palliative';
    }
  }
}

class _LegendItem extends StatelessWidget {
  final String label;
  final Color color;

  const _LegendItem({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        SizedBox(width: 6),
        Text(label, style: theme.textTheme.bodySmall),
      ],
    );
  }
}
