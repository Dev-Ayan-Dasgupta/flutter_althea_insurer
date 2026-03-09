import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/patient_adherence_entity.dart';

class PatientAdherenceCard extends StatelessWidget {
  final PatientAdherenceEntity patient;
  final VoidCallback? onTap;

  const PatientAdherenceCard({super.key, required this.patient, this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final adherenceColor = _getAdherenceColor();

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: patient.requiresIntervention
              ? AppColors.error.withValues(alpha: 0.3)
              : (isDark ? AppColors.darkBorder : AppColors.lightBorder),
          width: patient.requiresIntervention ? 2 : 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: adherenceColor.withValues(alpha: 0.1),
                      child: Text(
                        patient.patientName.split(' ').map((n) => n[0]).join(),
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: adherenceColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  patient.patientName,
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              if (patient.requiresIntervention)
                                Icon(
                                  Icons.warning,
                                  color: AppColors.error,
                                  size: 20,
                                ),
                            ],
                          ),
                          SizedBox(height: 2),
                          Text(
                            '${patient.age} yrs • ${patient.gender} • ${patient.condition}',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: isDark
                                  ? AppColors.darkTextSecondary
                                  : AppColors.lightTextSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '${patient.adherenceRate.toStringAsFixed(0)}%',
                          style: theme.textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: adherenceColor,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: adherenceColor.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            _getAdherenceLevelLabel(),
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: adherenceColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),

                // Progress Bar
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Adherence Progress',
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '${patient.dosesTaken}/${patient.dosesScheduled} doses',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: isDark
                                ? AppColors.darkTextSecondary
                                : AppColors.lightTextSecondary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Stack(
                      children: [
                        Container(
                          height: 8,
                          decoration: BoxDecoration(
                            color: isDark
                                ? AppColors.darkSurfaceVariant
                                : AppColors.lightSurfaceVariant,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        FractionallySizedBox(
                          widthFactor: patient.adherenceRate / 100,
                          child: Container(
                            height: 8,
                            decoration: BoxDecoration(
                              color: adherenceColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),

                // Metrics Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _MetricItem(
                      icon: Icons.check_circle,
                      label: 'Taken',
                      value: patient.dosesTaken.toString(),
                      color: AppColors.success,
                    ),
                    _MetricItem(
                      icon: Icons.schedule,
                      label: 'Delayed',
                      value: patient.dosesDelayed.toString(),
                      color: AppColors.warning,
                    ),
                    _MetricItem(
                      icon: Icons.cancel,
                      label: 'Missed',
                      value: patient.dosesMissed.toString(),
                      color: AppColors.error,
                    ),
                    _MetricItem(
                      icon: Icons.medication,
                      label: 'Meds',
                      value: '${patient.activeMedications}',
                      color: AppColors.info,
                    ),
                  ],
                ),

                // Risk Factors
                if (patient.riskFactors.isNotEmpty) ...[
                  SizedBox(height: 12),
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: [
                      for (var factor in patient.riskFactors.take(2))
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.warning.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            factor,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: AppColors.warning,
                              fontSize: 11,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _getAdherenceColor() {
    switch (patient.adherenceLevel) {
      case AdherenceLevel.excellent:
        return AppColors.success;
      case AdherenceLevel.good:
        return AppColors.info;
      case AdherenceLevel.fair:
        return AppColors.warning;
      case AdherenceLevel.poor:
        return AppColors.error;
    }
  }

  String _getAdherenceLevelLabel() {
    switch (patient.adherenceLevel) {
      case AdherenceLevel.excellent:
        return 'EXCELLENT';
      case AdherenceLevel.good:
        return 'GOOD';
      case AdherenceLevel.fair:
        return 'FAIR';
      case AdherenceLevel.poor:
        return 'POOR';
    }
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
        Icon(icon, size: 20, color: color),
        SizedBox(height: 4),
        Text(
          value,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
            color: color,
          ),
        ),
        Text(label, style: theme.textTheme.bodySmall?.copyWith(fontSize: 10)),
      ],
    );
  }
}
