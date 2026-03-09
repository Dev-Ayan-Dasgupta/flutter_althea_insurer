import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/disease_prevalence_entity.dart';

class DiseasePrevalenceHeatmap extends StatelessWidget {
  final List<DiseasePrevalenceEntity> diseases;

  const DiseasePrevalenceHeatmap({super.key, required this.diseases});

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
              Icon(Icons.grid_on, color: AppColors.primarySteelBlue, size: 20),
              SizedBox(width: 8),
              Text(
                'Disease Prevalence Map',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          // Disease Grid
          for (var disease in diseases)
            _DiseasePrevalenceCard(disease: disease),
        ],
      ),
    );
  }
}

class _DiseasePrevalenceCard extends StatelessWidget {
  final DiseasePrevalenceEntity disease;

  const _DiseasePrevalenceCard({required this.disease});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final color = _getCategoryColor();
    final isImproving = disease.changeFromLastQuarter < 0;

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
          // Header
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(_getCategoryIcon(), color: color, size: 20),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      disease.diseaseName,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      '${disease.totalCases} cases (${disease.prevalenceRate.toStringAsFixed(1)}%)',
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
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: (isImproving ? AppColors.success : AppColors.error)
                      .withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  children: [
                    Icon(
                      isImproving ? Icons.trending_down : Icons.trending_up,
                      size: 14,
                      color: isImproving ? AppColors.success : AppColors.error,
                    ),
                    SizedBox(width: 4),
                    Text(
                      '${disease.changeFromLastQuarter.abs().toStringAsFixed(1)}%',
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: isImproving
                            ? AppColors.success
                            : AppColors.error,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12),

          // Severity Distribution
          Row(
            children: [
              Expanded(
                child: _SeverityBar(
                  label: 'Critical',
                  count: disease.criticalCases,
                  total: disease.totalCases,
                  color: AppColors.error,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: _SeverityBar(
                  label: 'Moderate',
                  count: disease.moderateCases,
                  total: disease.totalCases,
                  color: AppColors.warning,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: _SeverityBar(
                  label: 'Mild',
                  count: disease.mildCases,
                  total: disease.totalCases,
                  color: AppColors.success,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),

          // Bottom Info
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _InfoChip(
                icon: Icons.location_on,
                label: disease.mostAffectedZone,
              ),
              _InfoChip(
                icon: Icons.person,
                label: 'Avg age: ${disease.avgAge.toStringAsFixed(0)}',
              ),
              _InfoChip(
                icon: Icons.attach_money,
                label: disease.costImpact.toCompactCurrency(),
                color: AppColors.error,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color _getCategoryColor() {
    switch (disease.category) {
      case DiseaseCategory.diabetes:
        return AppColors.info;
      case DiseaseCategory.hypertension:
        return AppColors.error;
      case DiseaseCategory.cardiac:
        return AppColors.emergencyRed;
      case DiseaseCategory.respiratory:
        return AppColors.warning;
      case DiseaseCategory.kidney:
        return AppColors.secondarySteelGrey;
      case DiseaseCategory.mobility:
        return AppColors.primarySteelBlue;
    }
  }

  IconData _getCategoryIcon() {
    switch (disease.category) {
      case DiseaseCategory.diabetes:
        return Icons.water_drop;
      case DiseaseCategory.hypertension:
        return Icons.favorite;
      case DiseaseCategory.cardiac:
        return Icons.monitor_heart;
      case DiseaseCategory.respiratory:
        return Icons.air;
      case DiseaseCategory.kidney:
        return Icons.boy_rounded;
      case DiseaseCategory.mobility:
        return Icons.accessibility_new;
    }
  }
}

class _SeverityBar extends StatelessWidget {
  final String label;
  final int count;
  final int total;
  final Color color;

  const _SeverityBar({
    required this.label,
    required this.count,
    required this.total,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final percentage = (count / total * 100).toStringAsFixed(0);

    return Column(
      children: [
        Text(
          count.toString(),
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
            color: color,
          ),
        ),
        SizedBox(height: 2),
        Text(label, style: theme.textTheme.bodySmall?.copyWith(fontSize: 10)),
        SizedBox(height: 2),
        Text(
          '$percentage%',
          style: theme.textTheme.bodySmall?.copyWith(
            fontSize: 10,
            color: color,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class _InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? color;

  const _InfoChip({required this.icon, required this.label, this.color});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Row(
      children: [
        Icon(
          icon,
          size: 14,
          color:
              color ??
              (isDark
                  ? AppColors.darkTextTertiary
                  : AppColors.lightTextTertiary),
        ),
        SizedBox(width: 4),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: color,
            fontWeight: color != null ? FontWeight.w600 : null,
          ),
        ),
      ],
    );
  }
}
