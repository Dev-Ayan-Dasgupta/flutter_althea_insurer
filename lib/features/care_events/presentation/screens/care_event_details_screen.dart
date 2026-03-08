import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../../domain/entities/audit_flag_entity.dart';
import '../../domain/entities/care_event_entity.dart';
import '../providers/care_events_provider.dart';
import '../widgets/audit_flag_badge.dart';
import '../widgets/verification_badge.dart';
import '../widgets/event_timeline.dart';
import '../widgets/verification_details_card.dart';

class CareEventDetailsScreen extends ConsumerWidget {
  final String eventId;

  const CareEventDetailsScreen({super.key, required this.eventId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventAsync = ref.watch(careEventDetailsProvider(eventId));
    final isDesktop = context.isDesktop;

    return Scaffold(
      appBar: AppBar(
        title: Text('Care Event Details'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              ref.invalidate(careEventDetailsProvider(eventId));
            },
            tooltip: 'Refresh',
          ),
        ],
      ),
      body: eventAsync.when(
        data: (event) => SingleChildScrollView(
          padding: EdgeInsets.all(isDesktop ? 24 : 16),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1200),
              child: isDesktop
                  ? _buildDesktopLayout(context, event)
                  : _buildMobileLayout(context, event),
            ),
          ),
        ),
        loading: () => _buildLoadingState(),
        error: (error, stack) => _buildErrorState(context, error),
      ),
    );
  }

  Widget _buildDesktopLayout(BuildContext context, CareEventEntity event) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Column
        Expanded(
          flex: 2,
          child: Column(
            children: [
              _buildMainInfoCard(context, event),
              SizedBox(height: 24),
              _buildDescriptionCard(context, event),
              if (event.notes != null) ...[
                SizedBox(height: 24),
                _buildNotesCard(context, event),
              ],
            ],
          ),
        ),
        SizedBox(width: 24),

        // Right Column
        Expanded(
          flex: 1,
          child: Column(
            children: [
              _buildVerificationCard(context, event),
              SizedBox(height: 24),
              _buildAuditSection(context, event),
              SizedBox(height: 24),
              _buildTimelineCard(context, event),
              SizedBox(height: 24),
              _buildLocationCard(context, event),
              if (event.attachments != null &&
                  event.attachments!.isNotEmpty) ...[
                SizedBox(height: 24),
                _buildAttachmentsCard(context, event),
              ],
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context, CareEventEntity event) {
    return Column(
      children: [
        _buildMainInfoCard(context, event),
        SizedBox(height: 16),
        _buildVerificationCard(context, event),
        SizedBox(height: 16),
        _buildAuditSection(context, event),
        SizedBox(height: 16),
        _buildDescriptionCard(context, event),
        SizedBox(height: 16),
        _buildTimelineCard(context, event),
        SizedBox(height: 16),
        _buildLocationCard(context, event),
        if (event.notes != null) ...[
          SizedBox(height: 16),
          _buildNotesCard(context, event),
        ],
        if (event.attachments != null && event.attachments!.isNotEmpty) ...[
          SizedBox(height: 16),
          _buildAttachmentsCard(context, event),
        ],
      ],
    );
  }

  Widget _buildMainInfoCard(BuildContext context, CareEventEntity event) {
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
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: _getEventTypeColor(event).withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  _getEventTypeIcon(event),
                  size: 32,
                  color: _getEventTypeColor(event),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      event.patientName,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      _getEventTypeLabel(event),
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: isDark
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(height: 1),
          SizedBox(height: 20),

          // Patient ID
          _InfoRow(
            icon: Icons.badge_outlined,
            label: 'Patient ID',
            value: event.patientId,
          ),
          SizedBox(height: 12),

          // Caregiver
          _InfoRow(
            icon: Icons.person_outline,
            label: 'Caregiver',
            value: event.caregiverName,
          ),
          SizedBox(height: 12),

          // Event ID
          _InfoRow(icon: Icons.tag, label: 'Event ID', value: event.id),
          SizedBox(height: 12),

          // Duration
          _InfoRow(
            icon: Icons.timer_outlined,
            label: 'Duration',
            value: '${event.duration} minutes',
          ),
          SizedBox(height: 12),

          // Claim Amount
          _InfoRow(
            icon: Icons.currency_rupee,
            label: 'Claim Amount',
            value: event.claimAmount.toCurrency(),
            valueColor: AppColors.success,
          ),
        ],
      ),
    );
  }

  Widget _buildVerificationCard(BuildContext context, CareEventEntity event) {
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
              Icon(
                Icons.verified_user_outlined,
                color: AppColors.primarySteelBlue,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Verification Status',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          VerificationBadge(
            status: event.verificationStatus,
            showDetails: true,
          ),
        ],
      ),
    );
  }

  Widget _buildDescriptionCard(BuildContext context, CareEventEntity event) {
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
              Icon(
                Icons.description_outlined,
                color: AppColors.primarySteelBlue,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Description',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Text(event.description, style: theme.textTheme.bodyLarge),
        ],
      ),
    );
  }

  Widget _buildTimelineCard(BuildContext context, CareEventEntity event) {
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
              Icon(Icons.timeline, color: AppColors.primarySteelBlue, size: 20),
              SizedBox(width: 8),
              Text(
                'Timeline',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          EventTimeline(
            scheduledAt: event.scheduledAt,
            completedAt: event.completedAt,
            createdAt: event.createdAt,
          ),
        ],
      ),
    );
  }

  Widget _buildLocationCard(BuildContext context, CareEventEntity event) {
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
              Icon(
                Icons.location_on_outlined,
                color: AppColors.primarySteelBlue,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Location',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          if (event.latitude != null && event.longitude != null) ...[
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: isDark
                    ? AppColors.darkSurfaceVariant
                    : AppColors.lightSurfaceVariant,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.map_outlined,
                      size: 48,
                      color: AppColors.primarySteelBlue.withValues(alpha: 0.5),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'GPS Coordinates',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '${event.latitude!.toStringAsFixed(6)}, ${event.longitude!.toStringAsFixed(6)}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: isDark
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                        fontFamily: 'monospace',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ] else ...[
            Text(
              'Location data not available',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: isDark
                    ? AppColors.darkTextSecondary
                    : AppColors.lightTextSecondary,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildNotesCard(BuildContext context, CareEventEntity event) {
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
              Icon(
                Icons.notes_outlined,
                color: AppColors.primarySteelBlue,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Notes',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.info.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.info.withValues(alpha: 0.2)),
            ),
            child: Text(event.notes!, style: theme.textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }

  Widget _buildAttachmentsCard(BuildContext context, CareEventEntity event) {
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
              Icon(
                Icons.attach_file,
                color: AppColors.primarySteelBlue,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Attachments',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          ...event.attachments!.map(
            (attachment) => Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: isDark
                      ? AppColors.darkSurfaceVariant
                      : AppColors.lightSurfaceVariant,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.image_outlined,
                      size: 20,
                      color: AppColors.primarySteelBlue,
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        attachment,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Icon(
                      Icons.download_outlined,
                      size: 20,
                      color: isDark
                          ? AppColors.darkTextSecondary
                          : AppColors.lightTextSecondary,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingState() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('Loading care event details...'),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, Object error) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64, color: AppColors.error),
            SizedBox(height: 16),
            Text(
              'Failed to load care event',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            Text(
              error.toString(),
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  // Add these methods to the existing CareEventDetailsScreen class

  Widget _buildAuditSection(BuildContext context, CareEventEntity event) {
    return Consumer(
      builder: (context, ref, child) {
        final flagsAsync = ref.watch(auditFlagsProvider(event.id));
        final verificationAsync = ref.watch(
          verificationDetailsProvider(event.id),
        );

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Audit Flags Card
            flagsAsync.when(
              data: (flags) => flags.isEmpty
                  ? SizedBox.shrink()
                  : Column(
                      children: [
                        _buildAuditFlagsCard(context, flags),
                        SizedBox(height: 16),
                      ],
                    ),
              loading: () => Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: ShimmerCard(height: 200),
              ),
              error: (error, stack) => SizedBox.shrink(),
            ),

            // Verification Details Card
            verificationAsync.when(
              data: (verification) =>
                  VerificationDetailsCard(details: verification),
              loading: () => ShimmerCard(height: 300),
              error: (error, stack) => SizedBox.shrink(),
            ),
          ],
        );
      },
    );
  }

  Widget _buildAuditFlagsCard(
    BuildContext context,
    List<AuditFlagEntity> flags,
  ) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.error.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.error.withValues(alpha: 0.3),
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.flag, color: AppColors.error, size: 20),
              SizedBox(width: 8),
              Text(
                'Audit Flags',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.error,
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.error.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '${flags.length} flag${flags.length != 1 ? 's' : ''}',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.error,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          for (var flag in flags) AuditFlagBadge(flag: flag),
        ],
      ),
    );
  }

  Color _getEventTypeColor(CareEventEntity event) {
    switch (event.eventType) {
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

  IconData _getEventTypeIcon(CareEventEntity event) {
    switch (event.eventType) {
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

  String _getEventTypeLabel(CareEventEntity event) {
    switch (event.eventType) {
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

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color? valueColor;

  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: isDark
              ? AppColors.darkTextTertiary
              : AppColors.lightTextTertiary,
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: isDark
                      ? AppColors.darkTextSecondary
                      : AppColors.lightTextSecondary,
                ),
              ),
              SizedBox(height: 2),
              Text(
                value,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: valueColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
