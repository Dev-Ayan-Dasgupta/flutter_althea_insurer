import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/fraud_pattern_entity.dart';

class FraudPatternChart extends StatelessWidget {
  final List<FraudPatternEntity> patterns;

  const FraudPatternChart({super.key, required this.patterns});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final activePatterns = patterns.where((p) => p.isActive).toList();

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
              Icon(Icons.pattern, color: AppColors.primarySteelBlue, size: 20),
              SizedBox(width: 8),
              Text(
                'Active Fraud Patterns',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          // Pattern Cards
          for (var pattern in activePatterns) _PatternCard(pattern: pattern),
        ],
      ),
    );
  }
}

class _PatternCard extends StatelessWidget {
  final FraudPatternEntity pattern;

  const _PatternCard({required this.pattern});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final color = _getPatternColor();

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Icon(_getPatternIcon(), color: color, size: 16),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pattern.patternName,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      '${pattern.occurrences} occurrences',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: isDark
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.success.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  '${(pattern.detectionRate * 100).toStringAsFixed(0)}%',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.success,
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),

          // Description
          Text(
            pattern.description,
            style: theme.textTheme.bodySmall?.copyWith(fontSize: 11),
          ),
          SizedBox(height: 10),

          // Metrics
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _MetricItem(
                label: 'Estimated Loss',
                value: pattern.estimatedLoss.toCompactCurrency(),
                color: AppColors.error,
              ),
              _MetricItem(
                label: 'Prevented Loss',
                value: pattern.preventedLoss.toCompactCurrency(),
                color: AppColors.success,
              ),
              _MetricItem(
                label: 'Detection Rate',
                value: '${(pattern.detectionRate * 100).toStringAsFixed(0)}%',
                color: AppColors.info,
              ),
            ],
          ),
          SizedBox(height: 10),

          // Common Indicators
          if (pattern.commonIndicators.isNotEmpty) ...[
            Text(
              'Key Indicators:',
              style: theme.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 11,
              ),
            ),
            SizedBox(height: 6),
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                for (var indicator in pattern.commonIndicators.take(3))
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: color.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      indicator,
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontSize: 10,
                        color: color,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Color _getPatternColor() {
    switch (pattern.patternType) {
      case PatternType.billing:
        return AppColors.error;
      case PatternType.timing:
        return AppColors.warning;
      case PatternType.geographic:
        return AppColors.info;
      case PatternType.provider:
        return AppColors.primarySteelBlue;
      case PatternType.patient:
        return AppColors.secondarySteelGrey;
    }
  }

  IconData _getPatternIcon() {
    switch (pattern.patternType) {
      case PatternType.billing:
        return Icons.receipt;
      case PatternType.timing:
        return Icons.schedule;
      case PatternType.geographic:
        return Icons.map;
      case PatternType.provider:
        return Icons.business;
      case PatternType.patient:
        return Icons.person;
    }
  }
}

class _MetricItem extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _MetricItem({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Text(
          value,
          style: theme.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w700,
            color: color,
          ),
        ),
        SizedBox(height: 2),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(fontSize: 10),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
