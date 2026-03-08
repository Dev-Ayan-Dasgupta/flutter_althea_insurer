import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/risk_factor_entity.dart';

class RiskFactorCard extends StatelessWidget {
  final RiskFactorEntity factor;

  const RiskFactorCard({super.key, required this.factor});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final color = _getCategoryColor();

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Category badge
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  _getCategoryLabel(),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: color,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(width: 8),
              // Modifiable badge
              if (factor.isModifiable)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.success.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.edit, size: 12, color: AppColors.success),
                      SizedBox(width: 4),
                      Text(
                        'Modifiable',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppColors.success,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              Spacer(),
              // Impact score
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  factor.impactScore.toStringAsFixed(1),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: color,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),

          // Factor name
          Text(
            factor.name,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 6),

          // Description
          Text(
            factor.description,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: isDark
                  ? AppColors.darkTextSecondary
                  : AppColors.lightTextSecondary,
            ),
          ),

          // Values
          if (factor.currentValue != null) ...[
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _ValueDisplay(
                    label: 'Current',
                    value: factor.currentValue!,
                    color: color,
                  ),
                ),
                if (factor.targetValue != null) ...[
                  SizedBox(width: 12),
                  Icon(Icons.arrow_forward, size: 16, color: color),
                  SizedBox(width: 12),
                  Expanded(
                    child: _ValueDisplay(
                      label: 'Target',
                      value: factor.targetValue!,
                      color: AppColors.success,
                    ),
                  ),
                ],
              ],
            ),
          ],
        ],
      ),
    );
  }

  Color _getCategoryColor() {
    switch (factor.category) {
      case RiskFactorCategory.clinical:
        return AppColors.error;
      case RiskFactorCategory.lifestyle:
        return AppColors.warning;
      case RiskFactorCategory.demographic:
        return AppColors.info;
      case RiskFactorCategory.environmental:
        return AppColors.secondarySteelGrey;
    }
  }

  String _getCategoryLabel() {
    switch (factor.category) {
      case RiskFactorCategory.clinical:
        return 'Clinical';
      case RiskFactorCategory.lifestyle:
        return 'Lifestyle';
      case RiskFactorCategory.demographic:
        return 'Demographic';
      case RiskFactorCategory.environmental:
        return 'Environmental';
    }
  }
}

class _ValueDisplay extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _ValueDisplay({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.darkTextTertiary
                : AppColors.lightTextTertiary,
          ),
        ),
        SizedBox(height: 2),
        Text(
          value,
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w700,
            color: color,
          ),
        ),
      ],
    );
  }
}
