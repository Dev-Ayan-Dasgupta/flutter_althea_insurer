import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/medication_entity.dart';

class MedicationScheduleCard extends StatelessWidget {
  final MedicationEntity medication;

  const MedicationScheduleCard({super.key, required this.medication});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: medication.isActive
              ? AppColors.success.withValues(alpha: 0.3)
              : AppColors.secondarySteelGrey.withValues(alpha: 0.3),
        ),
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
                  color: _getTypeColor().withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(_getTypeIcon(), color: _getTypeColor(), size: 20),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      medication.name,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      '${medication.dosage} • ${_getFrequencyLabel()}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: isDark
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              if (medication.isActive)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.success.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    'ACTIVE',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: AppColors.success,
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 12),

          // Purpose
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.info.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(Icons.lightbulb_outline, size: 16, color: AppColors.info),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    medication.purpose,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: AppColors.info,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),

          // Timings
          Row(
            children: [
              Icon(
                Icons.access_time,
                size: 16,
                color: isDark
                    ? AppColors.darkTextTertiary
                    : AppColors.lightTextTertiary,
              ),
              SizedBox(width: 6),
              Text(
                'Timings: ',
                style: theme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                medication.timings.join(', '),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: isDark
                      ? AppColors.darkTextSecondary
                      : AppColors.lightTextSecondary,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),

          // Prescribed By
          Row(
            children: [
              Icon(
                Icons.person,
                size: 16,
                color: isDark
                    ? AppColors.darkTextTertiary
                    : AppColors.lightTextTertiary,
              ),
              SizedBox(width: 6),
              Text(
                'Prescribed by: ',
                style: theme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                medication.prescribedBy,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: isDark
                      ? AppColors.darkTextSecondary
                      : AppColors.lightTextSecondary,
                ),
              ),
            ],
          ),

          // Instructions
          if (medication.instructions != null) ...[
            SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.info_outline,
                  size: 16,
                  color: isDark
                      ? AppColors.darkTextTertiary
                      : AppColors.lightTextTertiary,
                ),
                SizedBox(width: 6),
                Text(
                  medication.instructions!,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontStyle: FontStyle.italic,
                    color: isDark
                        ? AppColors.darkTextSecondary
                        : AppColors.lightTextSecondary,
                  ),
                ),
              ],
            ),
          ],

          // Side Effects Warning
          if (medication.sideEffects != null) ...[
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.warning.withValues(alpha: 0.05),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: AppColors.warning.withValues(alpha: 0.2),
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.warning_amber, size: 14, color: AppColors.warning),
                  SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      'Possible side effects: ${medication.sideEffects}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontSize: 11,
                        color: AppColors.warning,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Color _getTypeColor() {
    switch (medication.type) {
      case MedicationType.tablet:
        return AppColors.primarySteelBlue;
      case MedicationType.capsule:
        return AppColors.info;
      case MedicationType.syrup:
        return AppColors.warning;
      case MedicationType.injection:
        return AppColors.error;
      case MedicationType.inhaler:
        return AppColors.success;
      case MedicationType.drops:
        return AppColors.secondarySteelGrey;
    }
  }

  IconData _getTypeIcon() {
    switch (medication.type) {
      case MedicationType.tablet:
      case MedicationType.capsule:
        return Icons.medication;
      case MedicationType.syrup:
        return Icons.local_drink;
      case MedicationType.injection:
        return Icons.medical_services;
      case MedicationType.inhaler:
        return Icons.air;
      case MedicationType.drops:
        return Icons.water_drop;
    }
  }

  String _getFrequencyLabel() {
    switch (medication.frequency) {
      case Frequency.onceDaily:
        return 'Once daily';
      case Frequency.twiceDaily:
        return 'Twice daily';
      case Frequency.threeTimesDaily:
        return 'Three times daily';
      case Frequency.fourTimesDaily:
        return 'Four times daily';
      case Frequency.asNeeded:
        return 'As needed';
      case Frequency.weekly:
        return 'Weekly';
    }
  }
}
