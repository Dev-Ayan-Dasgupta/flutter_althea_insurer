import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/cost_avoidance_entity.dart';

class RoiCalculatorCard extends StatelessWidget {
  final CostAvoidanceEntity costAvoidance;

  const RoiCalculatorCard({super.key, required this.costAvoidance});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.success.withValues(alpha: 0.3),
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.calculate, color: AppColors.success, size: 24),
              SizedBox(width: 12),
              Text(
                'ROI Calculator',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 24),

          // ROI Percentage - Big Number
          Center(
            child: Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.success,
                    AppColors.success.withValues(alpha: 0.8),
                  ],
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.success.withValues(alpha: 0.3),
                    blurRadius: 12,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    'Return on Investment',
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 12),
                  TweenAnimationBuilder<double>(
                    tween: Tween(begin: 0.0, end: costAvoidance.roi),
                    duration: Duration(milliseconds: 2000),
                    curve: Curves.easeOutCubic,
                    builder: (context, value, child) {
                      return Text(
                        '${value.toStringAsFixed(0)}%',
                        style: theme.textTheme.displayLarge?.copyWith(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 64,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Platform delivers ${(costAvoidance.roi / 100).toStringAsFixed(1)}x returns',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.white.withValues(alpha: 0.9),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24),

          // Cost Breakdown
          _CostItem(
            label: 'Predicted Claims (Without AltheaCare)',
            value: costAvoidance.predictedClaims.toCurrency(),
            color: AppColors.error,
            icon: Icons.trending_up,
          ),
          SizedBox(height: 16),
          _CostItem(
            label: 'Actual Claims (With AltheaCare)',
            value: costAvoidance.actualClaims.toCurrency(),
            color: AppColors.warning,
            icon: Icons.trending_down,
          ),
          SizedBox(height: 16),
          Divider(),
          SizedBox(height: 16),
          _CostItem(
            label: 'Claims Avoided',
            value: costAvoidance.avoidedClaims.toCurrency(),
            color: AppColors.success,
            icon: Icons.savings,
            isBold: true,
          ),
          SizedBox(height: 16),
          _CostItem(
            label: 'Platform Cost (₹49 × 10,000 lives)',
            value: costAvoidance.platformCost.toCurrency(),
            color: AppColors.primarySteelBlue,
            icon: Icons.payment,
          ),
          SizedBox(height: 16),
          Divider(),
          SizedBox(height: 16),
          _CostItem(
            label: 'Net Savings',
            value: costAvoidance.netSavings.toCurrency(),
            color: AppColors.success,
            icon: Icons.account_balance_wallet,
            isBold: true,
            isLarge: true,
          ),
          SizedBox(height: 24),

          // Impact Stats
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.info.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _ImpactStat(
                  label: 'Interventions',
                  value: costAvoidance.interventionsPerformed.toString(),
                ),
                Container(
                  width: 1,
                  height: 40,
                  color: AppColors.info.withValues(alpha: 0.3),
                ),
                _ImpactStat(
                  label: 'Patients Impacted',
                  value: costAvoidance.patientsImpacted.toString(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CostItem extends StatelessWidget {
  final String label;
  final String value;
  final Color color;
  final IconData icon;
  final bool isBold;
  final bool isLarge;

  const _CostItem({
    required this.label,
    required this.value,
    required this.color,
    required this.icon,
    this.isBold = false,
    this.isLarge = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Row(
      children: [
        Icon(icon, color: color, size: isLarge ? 28 : 20),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: isDark
                      ? AppColors.darkTextSecondary
                      : AppColors.lightTextSecondary,
                  fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
              SizedBox(height: 4),
              Text(
                value,
                style:
                    (isLarge
                            ? theme.textTheme.headlineMedium
                            : theme.textTheme.titleLarge)
                        ?.copyWith(fontWeight: FontWeight.w700, color: color),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ImpactStat extends StatelessWidget {
  final String label;
  final String value;

  const _ImpactStat({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Text(
          value,
          style: theme.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColors.info,
          ),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(color: AppColors.info),
        ),
      ],
    );
  }
}
