import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/adherence_record_entity.dart';

class AdherenceTrendChart extends StatelessWidget {
  final List<AdherenceRecordEntity> records;

  const AdherenceTrendChart({super.key, required this.records});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    // Group records by date
    final Map<String, Map<String, int>> dailyStats = {};
    for (var record in records) {
      final dateKey =
          '${record.scheduledTime.month}/${record.scheduledTime.day}';
      dailyStats.putIfAbsent(
        dateKey,
        () => {'taken': 0, 'missed': 0, 'delayed': 0},
      );

      switch (record.status) {
        case AdherenceStatus.taken:
          dailyStats[dateKey]!['taken'] =
              (dailyStats[dateKey]!['taken'] ?? 0) + 1;
          break;
        case AdherenceStatus.missed:
        case AdherenceStatus.skipped:
          dailyStats[dateKey]!['missed'] =
              (dailyStats[dateKey]!['missed'] ?? 0) + 1;
          break;
        case AdherenceStatus.delayed:
          dailyStats[dateKey]!['delayed'] =
              (dailyStats[dateKey]!['delayed'] ?? 0) + 1;
          break;
      }
    }

    final dates = dailyStats.keys.toList();
    final adherenceRates = dates.map((date) {
      final stats = dailyStats[date]!;
      final total =
          (stats['taken'] ?? 0) +
          (stats['missed'] ?? 0) +
          (stats['delayed'] ?? 0);
      return total > 0 ? ((stats['taken'] ?? 0) / total * 100) : 0.0;
    }).toList();

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
                Icons.trending_up,
                color: AppColors.primarySteelBlue,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                '7-Day Adherence Trend',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          // Line Chart
          SizedBox(
            height: 180,
            child: LineChart(
              LineChartData(
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  horizontalInterval: 25,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(
                      color: (isDark ? Colors.white : Colors.black).withValues(
                        alpha: 0.1,
                      ),
                      strokeWidth: 1,
                    );
                  },
                ),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      getTitlesWidget: (value, meta) {
                        return Text(
                          '${value.toInt()}%',
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontSize: 10,
                          ),
                        );
                      },
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        final index = value.toInt();
                        if (index >= 0 && index < dates.length) {
                          return Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              dates[index],
                              style: theme.textTheme.bodySmall?.copyWith(
                                fontSize: 10,
                              ),
                            ),
                          );
                        }
                        return SizedBox.shrink();
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
                borderData: FlBorderData(show: false),
                minY: 0,
                maxY: 100,
                lineBarsData: [
                  LineChartBarData(
                    spots: adherenceRates
                        .asMap()
                        .entries
                        .map((e) => FlSpot(e.key.toDouble(), e.value))
                        .toList(),
                    isCurved: true,
                    color: AppColors.primarySteelBlue,
                    barWidth: 3,
                    dotData: FlDotData(show: true),
                    belowBarData: BarAreaData(
                      show: true,
                      color: AppColors.primarySteelBlue.withValues(alpha: 0.1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),

          // Legend
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _LegendItem(
                color: AppColors.success,
                label: 'Taken',
                count: records
                    .where((r) => r.status == AdherenceStatus.taken)
                    .length,
              ),
              _LegendItem(
                color: AppColors.warning,
                label: 'Delayed',
                count: records
                    .where((r) => r.status == AdherenceStatus.delayed)
                    .length,
              ),
              _LegendItem(
                color: AppColors.error,
                label: 'Missed',
                count: records
                    .where(
                      (r) =>
                          r.status == AdherenceStatus.missed ||
                          r.status == AdherenceStatus.skipped,
                    )
                    .length,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _LegendItem extends StatelessWidget {
  final Color color;
  final String label;
  final int count;

  const _LegendItem({
    required this.color,
    required this.label,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        SizedBox(width: 6),
        Text('$label: $count', style: theme.textTheme.bodySmall),
      ],
    );
  }
}
