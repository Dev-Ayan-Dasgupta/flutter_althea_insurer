import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/service_capacity_entity.dart';

class ServiceCapacityCard extends StatelessWidget {
  final ServiceCapacityEntity capacity;

  const ServiceCapacityCard({super.key, required this.capacity});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: capacity.isBottleneck
              ? AppColors.error.withValues(alpha: 0.3)
              : (isDark ? AppColors.darkBorder : AppColors.lightBorder),
          width: capacity.isBottleneck ? 2 : 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: _getServiceColor().withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  _getServiceIcon(),
                  color: _getServiceColor(),
                  size: 24,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      capacity.serviceName,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    if (capacity.isBottleneck) ...[
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(Icons.warning, size: 14, color: AppColors.error),
                          SizedBox(width: 4),
                          Text(
                            'BOTTLENECK',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: AppColors.error,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: _getUtilizationColor().withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '${capacity.utilizationPercentage.toStringAsFixed(0)}%',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: _getUtilizationColor(),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),

          // Capacity Bar
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Capacity Utilization',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: isDark
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                      ),
                    ),
                    SizedBox(height: 8),
                    Stack(
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
                          widthFactor: capacity.utilizationPercentage / 100,
                          child: Container(
                            height: 12,
                            decoration: BoxDecoration(
                              color: _getUtilizationColor(),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16),

          // Metrics
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _MetricBox(
                label: 'Daily Capacity',
                value: capacity.dailyCapacity.toString(),
                color: AppColors.primarySteelBlue,
              ),
              _MetricBox(
                label: 'Utilized',
                value: capacity.currentUtilization.toString(),
                color: AppColors.info,
              ),
              _MetricBox(
                label: 'Available',
                value: capacity.availableSlots.toString(),
                color: AppColors.success,
              ),
              _MetricBox(
                label: 'Forecast',
                value: capacity.demandForecast.toString(),
                color: AppColors.warning,
              ),
            ],
          ),

          // Bottleneck Warning
          if (capacity.isBottleneck && capacity.bottleneckReason != null) ...[
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.error.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColors.error.withValues(alpha: 0.3),
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.info_outline, color: AppColors.error, size: 20),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      capacity.bottleneckReason!,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: AppColors.error,
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

  Color _getServiceColor() {
    switch (capacity.serviceType) {
      case ServiceType.nurseVisit:
        return AppColors.primarySteelBlue;
      case ServiceType.medicineDelivery:
        return AppColors.success;
      case ServiceType.diagnosticTest:
        return AppColors.warning;
      case ServiceType.ambulanceService:
        return AppColors.emergencyRed;
      case ServiceType.physiotherapy:
        return AppColors.info;
    }
  }

  IconData _getServiceIcon() {
    switch (capacity.serviceType) {
      case ServiceType.nurseVisit:
        return Icons.medical_services;
      case ServiceType.medicineDelivery:
        return Icons.local_shipping;
      case ServiceType.diagnosticTest:
        return Icons.science;
      case ServiceType.ambulanceService:
        return Icons.emergency;
      case ServiceType.physiotherapy:
        return Icons.accessibility_new;
    }
  }

  Color _getUtilizationColor() {
    if (capacity.utilizationPercentage >= 90) return AppColors.error;
    if (capacity.utilizationPercentage >= 75) return AppColors.warning;
    if (capacity.utilizationPercentage >= 50) return AppColors.info;
    return AppColors.success;
  }
}

class _MetricBox extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _MetricBox({
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
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
            color: color,
          ),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: theme.textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
