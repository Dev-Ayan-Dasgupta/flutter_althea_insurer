import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/prevention_metric_entity.dart';

class PreventionCounterWidget extends StatelessWidget {
  final PreventionMetricEntity metric;

  const PreventionCounterWidget({super.key, required this.metric});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = _getColor();

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [color, color.withValues(alpha: 0.8)],
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.3),
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(_getIcon(), color: Colors.white, size: 24),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  _getLabel(),
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          // Counter
          TweenAnimationBuilder<int>(
            tween: IntTween(begin: 0, end: metric.count),
            duration: Duration(milliseconds: 1500),
            curve: Curves.easeOutCubic,
            builder: (context, value, child) {
              return Text(
                value.toString(),
                style: theme.textTheme.displayLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  fontSize: 56,
                  height: 1.0,
                ),
              );
            },
          ),
          SizedBox(height: 8),
          Text(
            metric.description,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: Colors.white.withValues(alpha: 0.9),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 12),

          // Success Rate
          Row(
            children: [
              Icon(Icons.check_circle, color: Colors.white, size: 16),
              SizedBox(width: 6),
              Text(
                '${metric.successRate.toStringAsFixed(1)}% success rate',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.white.withValues(alpha: 0.9),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color _getColor() {
    switch (metric.type) {
      case PreventionType.hospitalization:
        return AppColors.success;
      case PreventionType.emergencyVisit:
        return AppColors.info;
      case PreventionType.fall:
        return AppColors.warning;
      case PreventionType.chronicComplications:
        return AppColors.primarySteelBlue;
      case PreventionType.medication:
        return AppColors.secondarySteelGrey;
    }
  }

  IconData _getIcon() {
    switch (metric.type) {
      case PreventionType.hospitalization:
        return Icons.local_hospital;
      case PreventionType.emergencyVisit:
        return Icons.emergency;
      case PreventionType.fall:
        return Icons.accessibility_new;
      case PreventionType.chronicComplications:
        return Icons.health_and_safety;
      case PreventionType.medication:
        return Icons.medication;
    }
  }

  String _getLabel() {
    switch (metric.type) {
      case PreventionType.hospitalization:
        return 'Hospitalizations Avoided';
      case PreventionType.emergencyVisit:
        return 'ER Visits Prevented';
      case PreventionType.fall:
        return 'Falls Prevented';
      case PreventionType.chronicComplications:
        return 'Complications Avoided';
      case PreventionType.medication:
        return 'Medication Issues Prevented';
    }
  }
}
