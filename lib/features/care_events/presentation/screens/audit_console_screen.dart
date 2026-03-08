import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../../domain/entities/care_event_entity.dart';
import '../providers/care_events_provider.dart';
import '../widgets/audit_flag_badge.dart';
import '../widgets/verification_badge.dart';

class AuditConsoleScreen extends ConsumerWidget {
  const AuditConsoleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flaggedEventsAsync = ref.watch(flaggedCareEventsProvider);
    final auditStatsAsync = ref.watch(auditStatisticsProvider);
    final isDesktop = context.isDesktop;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(flaggedCareEventsProvider);
          ref.invalidate(auditStatisticsProvider);
        },
        child: SingleChildScrollView(
          padding: EdgeInsets.all(isDesktop ? 24 : 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.security,
                            color: AppColors.error,
                            size: 28,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Audit Console',
                            style: Theme.of(context).textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Fraud detection and verification oversight',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? AppColors.darkTextSecondary
                              : AppColors.lightTextSecondary,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.refresh),
                    onPressed: () {
                      ref.invalidate(flaggedCareEventsProvider);
                      ref.invalidate(auditStatisticsProvider);
                    },
                    tooltip: 'Refresh',
                  ),
                ],
              ),
              SizedBox(height: 24),

              // Audit Statistics
              auditStatsAsync.when(
                data: (stats) => _buildAuditStats(context, stats, isDesktop),
                loading: () => _buildStatsShimmer(isDesktop),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
              SizedBox(height: 24),

              // Section Header
              Row(
                children: [
                  Icon(Icons.flag, color: AppColors.error, size: 20),
                  SizedBox(width: 8),
                  Text(
                    'Flagged Events Requiring Review',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Flagged Events List
              flaggedEventsAsync.when(
                data: (events) => events.isEmpty
                    ? _buildEmptyState(context)
                    : Column(
                        children: [
                          for (var event in events)
                            _FlaggedEventCard(event: event),
                        ],
                      ),
                loading: () => Column(
                  children: [
                    for (int i = 0; i < 5; i++)
                      Padding(
                        padding: EdgeInsets.only(bottom: 12),
                        child: ShimmerCard(height: 180),
                      ),
                  ],
                ),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAuditStats(
    BuildContext context,
    AuditStatistics stats,
    bool isDesktop,
  ) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: isDesktop ? 5 : 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: isDesktop ? 2.0 : 1.5,
      children: [
        _StatChip(
          label: 'Total Events',
          value: stats.totalEvents.toString(),
          color: AppColors.primarySteelBlue,
          icon: Icons.event,
        ),
        _StatChip(
          label: 'Verified',
          value: stats.verified.toString(),
          color: AppColors.success,
          icon: Icons.check_circle,
          subtitle: '${stats.verificationRate.toStringAsFixed(1)}%',
        ),
        _StatChip(
          label: 'Flagged',
          value: stats.flagged.toString(),
          color: AppColors.error,
          icon: Icons.flag,
          subtitle: '${stats.flagRate.toStringAsFixed(1)}%',
        ),
        _StatChip(
          label: 'Pending Review',
          value: stats.pending.toString(),
          color: AppColors.warning,
          icon: Icons.pending,
        ),
        _StatChip(
          label: 'Resolved',
          value: stats.resolved.toString(),
          color: AppColors.info,
          icon: Icons.done_all,
          subtitle: '${stats.resolutionRate.toStringAsFixed(1)}%',
        ),
      ],
    );
  }

  Widget _buildStatsShimmer(bool isDesktop) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: isDesktop ? 5 : 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: isDesktop ? 2.0 : 1.5,
      children: List.generate(5, (index) => ShimmerCard(height: 80)),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(48),
        child: Column(
          children: [
            Icon(Icons.verified_user, size: 64, color: AppColors.success),
            SizedBox(height: 16),
            Text('All Clear!', style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 8),
            Text(
              'No flagged events requiring review',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.darkTextSecondary
                    : AppColors.lightTextSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorCard(BuildContext context, Object error) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.error.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.error.withValues(alpha: 0.3)),
      ),
      child: Column(
        children: [
          Icon(Icons.error_outline, color: AppColors.error, size: 48),
          SizedBox(height: 16),
          Text(
            'Failed to load audit data',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.error,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),
          Text(
            error.toString(),
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _StatChip extends StatelessWidget {
  final String label;
  final String value;
  final Color color;
  final IconData icon;
  final String? subtitle;

  const _StatChip({
    required this.label,
    required this.value,
    required this.color,
    required this.icon,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20, color: color),
          SizedBox(height: 8),
          Text(
            value,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
              color: color,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 2),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: isDark
                  ? AppColors.darkTextSecondary
                  : AppColors.lightTextSecondary,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          if (subtitle != null) ...[
            SizedBox(height: 2),
            Text(
              subtitle!,
              style: theme.textTheme.bodySmall?.copyWith(
                color: color,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _FlaggedEventCard extends ConsumerWidget {
  final CareEventEntity event;

  const _FlaggedEventCard({required this.event});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final flagsAsync = ref.watch(auditFlagsProvider(event.id));

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.error.withValues(alpha: 0.3),
          width: 2,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            context.push('/care-events/${event.id}');
          },
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            event.patientName,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '${_getEventTypeLabel(event.eventType)} • ${event.caregiverName}',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: isDark
                                  ? AppColors.darkTextSecondary
                                  : AppColors.lightTextSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    VerificationBadge(
                      status: event.verificationStatus,
                      showDetails: false,
                    ),
                  ],
                ),
                SizedBox(height: 12),

                // Audit Flags
                flagsAsync.when(
                  data: (flags) => flags.isEmpty
                      ? SizedBox.shrink()
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (var flag in flags) AuditFlagBadge(flag: flag),
                          ],
                        ),
                  loading: () => ShimmerCard(height: 60),
                  error: (error, stack) => SizedBox.shrink(),
                ),
                SizedBox(height: 12),

                // Bottom Info
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 16,
                      color: isDark
                          ? AppColors.darkTextTertiary
                          : AppColors.lightTextTertiary,
                    ),
                    SizedBox(width: 4),
                    Text(
                      event.completedAt?.toRelativeString() ?? 'In progress',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: isDark
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                      ),
                    ),
                    Spacer(),
                    TextButton.icon(
                      onPressed: () {
                        context.push('/care-events/${event.id}');
                      },
                      icon: Icon(Icons.search, size: 16),
                      label: Text('Investigate'),
                      style: TextButton.styleFrom(
                        foregroundColor: AppColors.primarySteelBlue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getEventTypeLabel(CareEventType type) {
    switch (type) {
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
