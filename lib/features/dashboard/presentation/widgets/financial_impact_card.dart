import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/financial_impact_entity.dart';

class FinancialImpactCard extends StatelessWidget {
  final FinancialImpactEntity impact;

  const FinancialImpactCard({super.key, required this.impact});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.account_balance_wallet_outlined,
                  color: AppColors.primarySteelBlue,
                  size: 20,
                ),
                SizedBox(width: 8),
                Text(
                  'Financial Impact',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Total Savings
            _MetricRow(
              label: 'Total Savings',
              value: impact.totalSavings.toCompactCurrency(),
              icon: Icons.savings_outlined,
              color: AppColors.success,
              isLarge: true,
            ),
            SizedBox(height: 16),

            // ROI
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.info.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppColors.info.withValues(alpha: 0.3),
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.trending_up, color: AppColors.info, size: 24),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Return on Investment',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: isDark
                                ? AppColors.darkTextSecondary
                                : AppColors.lightTextSecondary,
                          ),
                        ),
                        SizedBox(height: 4),
                        TweenAnimationBuilder<double>(
                          tween: Tween(begin: 0.0, end: impact.roi),
                          duration: Duration(milliseconds: 1500),
                          curve: Curves.easeOutCubic,
                          builder: (context, value, child) {
                            return Text(
                              '${value.toStringAsFixed(0)}%',
                              style: theme.textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppColors.info,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Breakdown
            _MetricRow(
              label: 'Hospitalizations Avoided',
              value: impact.hospitalizationsAvoided.toInt().toString(),
              icon: Icons.local_hospital_outlined,
              color: AppColors.success,
            ),
            SizedBox(height: 12),
            _MetricRow(
              label: 'Avg. Claim Cost',
              value: impact.averageClaimCost.toCompactCurrency(),
              icon: Icons.receipt_long_outlined,
              color: AppColors.warning,
            ),
            SizedBox(height: 12),
            _MetricRow(
              label: 'Platform Revenue',
              value: impact.platformRevenue.toCompactCurrency(),
              icon: Icons.currency_rupee,
              color: AppColors.primarySteelBlue,
            ),
          ],
        ),
      ),
    );
  }
}

class _MetricRow extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color color;
  final bool isLarge;

  const _MetricRow({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
    this.isLarge = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(isLarge ? 12 : 8),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: color, size: isLarge ? 24 : 20),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: isDark
                      ? AppColors.darkTextSecondary
                      : AppColors.lightTextSecondary,
                ),
              ),
              SizedBox(height: 2),
              Text(
                value,
                style:
                    (isLarge
                            ? theme.textTheme.headlineMedium
                            : theme.textTheme.titleMedium)
                        ?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: isDark
                              ? AppColors.darkTextPrimary
                              : AppColors.lightTextPrimary,
                        ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
