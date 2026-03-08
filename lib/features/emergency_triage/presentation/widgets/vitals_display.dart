import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/patient_vitals_entity.dart';

class VitalsDisplay extends StatelessWidget {
  final PatientVitalsEntity vitals;

  const VitalsDisplay({super.key, required this.vitals});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 2.0,
      children: [
        _VitalCard(
          icon: Icons.favorite,
          label: 'Heart Rate',
          value: '${vitals.heartRate}',
          unit: 'bpm',
          isAbnormal: vitals.heartRate > 100 || vitals.heartRate < 60,
        ),
        _VitalCard(
          icon: Icons.air,
          label: 'SpO₂',
          value: '${vitals.oxygenSaturation}',
          unit: '%',
          isAbnormal: vitals.oxygenSaturation < 95,
        ),
        _VitalCard(
          icon: Icons.monitor_heart,
          label: 'Blood Pressure',
          value:
              '${vitals.bloodPressureSystolic}/${vitals.bloodPressureDiastolic}',
          unit: 'mmHg',
          isAbnormal:
              vitals.bloodPressureSystolic > 140 ||
              vitals.bloodPressureSystolic < 90,
        ),
        _VitalCard(
          icon: Icons.thermostat,
          label: 'Temperature',
          value: vitals.temperature.toStringAsFixed(1),
          unit: '°C',
          isAbnormal: vitals.temperature > 37.5 || vitals.temperature < 36.0,
        ),
        _VitalCard(
          icon: Icons.waves,
          label: 'Resp. Rate',
          value: '${vitals.respiratoryRate}',
          unit: '/min',
          isAbnormal:
              vitals.respiratoryRate > 20 || vitals.respiratoryRate < 12,
        ),
        if (vitals.ecgData != null)
          _VitalCard(
            icon: Icons.show_chart,
            label: 'ECG',
            value: 'Available',
            unit: '',
            isAbnormal: false,
          ),
      ],
    );
  }
}

class _VitalCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final String unit;
  final bool isAbnormal;

  const _VitalCard({
    required this.icon,
    required this.label,
    required this.value,
    required this.unit,
    required this.isAbnormal,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final color = isAbnormal ? AppColors.error : AppColors.success;

    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: color.withValues(alpha: 0.3),
          width: isAbnormal ? 2 : 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(icon, size: 16, color: color),
              SizedBox(width: 6),
              Expanded(
                child: Text(
                  label,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: isDark
                        ? AppColors.darkTextSecondary
                        : AppColors.lightTextSecondary,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(height: 6),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                value,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: color,
                ),
              ),
              if (unit.isNotEmpty) ...[
                SizedBox(width: 4),
                Padding(
                  padding: EdgeInsets.only(bottom: 2),
                  child: Text(
                    unit,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: isDark
                          ? AppColors.darkTextSecondary
                          : AppColors.lightTextSecondary,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
