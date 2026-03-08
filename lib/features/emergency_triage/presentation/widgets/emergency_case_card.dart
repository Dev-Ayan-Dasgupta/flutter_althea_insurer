import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/emergency_case_entity.dart';
import 'severity_badge.dart';

class EmergencyCaseCard extends StatefulWidget {
  final EmergencyCaseEntity case_;

  const EmergencyCaseCard({super.key, required this.case_});

  @override
  State<EmergencyCaseCard> createState() => _EmergencyCaseCardState();
}

class _EmergencyCaseCardState extends State<EmergencyCaseCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        transform: Matrix4.identity()..translate(0.0, _isHovered ? -2.0 : 0.0),
        child: Container(
          margin: EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: _getSeverityColor().withValues(alpha: 0.3),
              width: 2,
            ),
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: _getSeverityColor().withValues(alpha: 0.2),
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                  ]
                : null,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                context.push('/emergency-triage/${widget.case_.id}');
              },
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header Row
                    Row(
                      children: [
                        // Severity Badge
                        SeverityBadge(severity: widget.case_.severity),
                        SizedBox(width: 12),

                        // Status Badge
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.info.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            _getStatusLabel(),
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: AppColors.info,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Spacer(),

                        // Pre-Auth Indicator
                        if (widget.case_.preAuth != null)
                          Icon(
                            Icons.check_circle,
                            color: AppColors.success,
                            size: 20,
                          )
                        else
                          Icon(
                            Icons.pending,
                            color: AppColors.warning,
                            size: 20,
                          ),
                      ],
                    ),
                    SizedBox(height: 12),

                    // Patient Name
                    Text(
                      widget.case_.patientName,
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '${widget.case_.patientAge} years • ${widget.case_.patientId}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: isDark
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                      ),
                    ),
                    SizedBox(height: 12),

                    // Chief Complaint
                    Text(
                      widget.case_.chiefComplaint,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 12),

                    // Bottom Info Row
                    Row(
                      children: [
                        // Ambulance
                        Icon(
                          Icons.directions_car,
                          size: 16,
                          color: isDark
                              ? AppColors.darkTextTertiary
                              : AppColors.lightTextTertiary,
                        ),
                        SizedBox(width: 4),
                        Text(
                          widget.case_.ambulanceId,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: isDark
                                ? AppColors.darkTextSecondary
                                : AppColors.lightTextSecondary,
                          ),
                        ),
                        SizedBox(width: 16),

                        // Time
                        Icon(
                          Icons.access_time,
                          size: 16,
                          color: isDark
                              ? AppColors.darkTextTertiary
                              : AppColors.lightTextTertiary,
                        ),
                        SizedBox(width: 4),
                        Text(
                          widget.case_.dispatchedAt.toRelativeString(),
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: isDark
                                ? AppColors.darkTextSecondary
                                : AppColors.lightTextSecondary,
                          ),
                        ),
                        Spacer(),

                        // Estimated Cost
                        Text(
                          widget.case_.estimatedCost.toCompactCurrency(),
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: _getSeverityColor(),
                          ),
                        ),
                      ],
                    ),

                    // Vitals Preview
                    if (widget.case_.vitals.heartRate > 0) ...[
                      SizedBox(height: 12),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: isDark
                              ? AppColors.darkSurfaceVariant
                              : AppColors.lightSurfaceVariant,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _VitalPreview(
                              icon: Icons.favorite,
                              value: '${widget.case_.vitals.heartRate}',
                              isAbnormal: widget.case_.vitals.heartRate > 100,
                            ),
                            _VitalPreview(
                              icon: Icons.air,
                              value: '${widget.case_.vitals.oxygenSaturation}%',
                              isAbnormal:
                                  widget.case_.vitals.oxygenSaturation < 95,
                            ),
                            _VitalPreview(
                              icon: Icons.monitor_heart,
                              value:
                                  '${widget.case_.vitals.bloodPressureSystolic}/${widget.case_.vitals.bloodPressureDiastolic}',
                              isAbnormal:
                                  widget.case_.vitals.bloodPressureSystolic >
                                  140,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _getSeverityColor() {
    switch (widget.case_.severity) {
      case EmergencySeverity.critical:
        return AppColors.emergencyRed;
      case EmergencySeverity.high:
        return AppColors.emergencyAmber;
      case EmergencySeverity.moderate:
        return AppColors.warning;
      case EmergencySeverity.low:
        return AppColors.success;
    }
  }

  String _getStatusLabel() {
    switch (widget.case_.status) {
      case EmergencyStatus.dispatched:
        return 'Dispatched';
      case EmergencyStatus.enRoute:
        return 'En Route';
      case EmergencyStatus.onScene:
        return 'On Scene';
      case EmergencyStatus.transportingToHospital:
        return 'Transporting';
      case EmergencyStatus.atHospital:
        return 'At Hospital';
      case EmergencyStatus.completed:
        return 'Completed';
    }
  }
}

class _VitalPreview extends StatelessWidget {
  final IconData icon;
  final String value;
  final bool isAbnormal;

  const _VitalPreview({
    required this.icon,
    required this.value,
    required this.isAbnormal,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = isAbnormal ? AppColors.error : AppColors.success;

    return Row(
      children: [
        Icon(icon, size: 14, color: color),
        SizedBox(width: 4),
        Text(
          value,
          style: theme.textTheme.bodySmall?.copyWith(
            color: color,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
