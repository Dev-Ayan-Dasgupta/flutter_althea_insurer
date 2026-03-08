import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/cost_avoidance_entity.dart';

class CostComparisonChart extends StatelessWidget {
  final CostAvoidanceEntity costAvoidance;

  const CostComparisonChart({super.key, required this.costAvoidance});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    // Calculate percentages for visual representation
    final maxValue = costAvoidance.predictedClaims;
    final actualPercentage = costAvoidance.actualClaims / maxValue;
    final avoidedPercentage = costAvoidance.avoidedClaims / maxValue;

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
                Icons.bar_chart,
                color: AppColors.primarySteelBlue,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Claims Comparison',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 24),

          // Without AltheaCare Bar
          _ComparisonBar(
            label: 'Without AltheaCare',
            sublabel: 'Predicted Claims',
            value: costAvoidance.predictedClaims,
            percentage: 1.0,
            color: AppColors.error,
          ),
          SizedBox(height: 24),

          // With AltheaCare Bars
          _ComparisonBar(
            label: 'With AltheaCare',
            sublabel: 'Actual Claims',
            value: costAvoidance.actualClaims,
            percentage: actualPercentage,
            color: AppColors.warning,
          ),
          SizedBox(height: 12),
          _ComparisonBar(
            label: '',
            sublabel: 'Claims Avoided',
            value: costAvoidance.avoidedClaims,
            percentage: avoidedPercentage,
            color: AppColors.success,
            showCheckmark: true,
          ),
          SizedBox(height: 24),

          // Summary Box
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.success,
                  AppColors.success.withValues(alpha: 0.8),
                ],
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(Icons.savings, color: Colors.white, size: 32),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Reduction',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.white.withValues(alpha: 0.9),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '${((avoidedPercentage) * 100).toStringAsFixed(1)}% decrease in claims',
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ComparisonBar extends StatelessWidget {
  final String label;
  final String sublabel;
  final double value;
  final double percentage;
  final Color color;
  final bool showCheckmark;

  const _ComparisonBar({
    required this.label,
    required this.sublabel,
    required this.value,
    required this.percentage,
    required this.color,
    this.showCheckmark = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label.isNotEmpty) ...[
          Text(
            label,
            style: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 4),
        ],
        Row(
          children: [
            if (showCheckmark) ...[
              Icon(Icons.check_circle, color: color, size: 16),
              SizedBox(width: 6),
            ],
            Text(
              sublabel,
              style: theme.textTheme.bodySmall?.copyWith(
                color: isDark
                    ? AppColors.darkTextSecondary
                    : AppColors.lightTextSecondary,
              ),
            ),
            Spacer(),
            Text(
              value.toCompactCurrency(),
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: color,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        TweenAnimationBuilder<double>(
          tween: Tween(begin: 0.0, end: percentage),
          duration: Duration(milliseconds: 1200),
          curve: Curves.easeOutCubic,
          builder: (context, value, child) {
            return Stack(
              children: [
                Container(
                  height: 12,
                  decoration: BoxDecoration(
                    color: isDark
                        ? AppColors.darkSurfaceVariant
                        : AppColors.lightSurfaceVariant,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: value,
                  child: Container(
                    height: 12,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: color.withValues(alpha: 0.4),
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
