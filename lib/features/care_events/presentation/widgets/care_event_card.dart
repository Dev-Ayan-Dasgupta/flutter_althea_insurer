import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/care_event_entity.dart';
import 'verification_badge.dart';

class CareEventCard extends StatefulWidget {
  final CareEventEntity event;

  const CareEventCard({super.key, required this.event});

  @override
  State<CareEventCard> createState() => _CareEventCardState();
}

class _CareEventCardState extends State<CareEventCard> {
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
              color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
            ),
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: AppColors.primarySteelBlue.withValues(alpha: 0.1),
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ]
                : null,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                context.push('/care-events/${widget.event.id}');
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
                        // Event Type Icon
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: _getEventTypeColor().withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            _getEventTypeIcon(),
                            size: 20,
                            color: _getEventTypeColor(),
                          ),
                        ),
                        SizedBox(width: 12),

                        // Event Info
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.event.patientName,
                                style: theme.textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                _getEventTypeLabel(),
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: isDark
                                      ? AppColors.darkTextSecondary
                                      : AppColors.lightTextSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Verification Badge
                        VerificationBadge(
                          status: widget.event.verificationStatus,
                        ),
                      ],
                    ),
                    SizedBox(height: 12),

                    // Description
                    Text(
                      widget.event.description,
                      style: theme.textTheme.bodyMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 12),

                    // Bottom Row
                    Row(
                      children: [
                        // Caregiver
                        Icon(
                          Icons.person_outline,
                          size: 16,
                          color: isDark
                              ? AppColors.darkTextTertiary
                              : AppColors.lightTextTertiary,
                        ),
                        SizedBox(width: 4),
                        Text(
                          widget.event.caregiverName,
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
                          widget.event.completedAt?.toRelativeString() ??
                              widget.event.scheduledAt.toRelativeString(),
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: isDark
                                ? AppColors.darkTextSecondary
                                : AppColors.lightTextSecondary,
                          ),
                        ),
                        Spacer(),

                        // Claim Amount
                        Text(
                          widget.event.claimAmount.toCurrency(),
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.primarySteelBlue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _getEventTypeColor() {
    switch (widget.event.eventType) {
      case CareEventType.nurseVisit:
        return AppColors.primarySteelBlue;
      case CareEventType.medicationDelivery:
        return AppColors.success;
      case CareEventType.diagnosticTest:
        return AppColors.info;
      case CareEventType.physiotherapy:
        return AppColors.warning;
      case CareEventType.woundCare:
        return AppColors.error;
      case CareEventType.vitalCheck:
        return AppColors.secondarySteelGrey;
    }
  }

  IconData _getEventTypeIcon() {
    switch (widget.event.eventType) {
      case CareEventType.nurseVisit:
        return Icons.medical_services_outlined;
      case CareEventType.medicationDelivery:
        return Icons.medication_outlined;
      case CareEventType.diagnosticTest:
        return Icons.science_outlined;
      case CareEventType.physiotherapy:
        return Icons.accessibility_new_outlined;
      case CareEventType.woundCare:
        return Icons.healing_outlined;
      case CareEventType.vitalCheck:
        return Icons.favorite_outline;
    }
  }

  String _getEventTypeLabel() {
    switch (widget.event.eventType) {
      case CareEventType.nurseVisit:
        return 'Nurse Visit';
      case CareEventType.medicationDelivery:
        return 'Medication Delivery';
      case CareEventType.diagnosticTest:
        return 'Diagnostic Test';
      case CareEventType.physiotherapy:
        return 'Physiotherapy';
      case CareEventType.woundCare:
        return 'Wound Care';
      case CareEventType.vitalCheck:
        return 'Vital Check';
    }
  }
}
