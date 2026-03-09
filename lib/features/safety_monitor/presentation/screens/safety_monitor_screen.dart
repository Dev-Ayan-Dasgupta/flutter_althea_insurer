import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../../domain/entities/cohort_entity.dart';
import '../../domain/entities/preventive_action_entity.dart';
import '../../domain/entities/safety_alert_entity.dart';
import '../providers/safety_monitor_provider.dart';
import '../widgets/cohort_overview_card.dart';
import '../widgets/safety_alert_card.dart';
import '../widgets/risk_distribution_chart.dart';
import '../widgets/preventive_actions_list.dart';

class SafetyMonitorScreen extends ConsumerWidget {
  const SafetyMonitorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cohortsAsync = ref.watch(safetyCohortsProvider);
    final alertsAsync = ref.watch(safetyAlertsProvider(cohortType: null));
    final actionsAsync = ref.watch(preventiveActionsProvider(cohortType: null));
    final statsAsync = ref.watch(safetyMonitorStatsProvider);
    final isDesktop = context.isDesktop;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(safetyCohortsProvider);
          ref.invalidate(safetyAlertsProvider(cohortType: null));
          ref.invalidate(preventiveActionsProvider(cohortType: null));
          ref.invalidate(safetyMonitorStatsProvider);
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
                            color: AppColors.primarySteelBlue,
                            size: 28,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Safety & Special Care Monitor',
                            style: Theme.of(context).textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Comprehensive safety monitoring across vulnerable cohorts',
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
                      ref.invalidate(safetyCohortsProvider);
                      ref.invalidate(safetyAlertsProvider(cohortType: null));
                      ref.invalidate(
                        preventiveActionsProvider(cohortType: null),
                      );
                      ref.invalidate(safetyMonitorStatsProvider);
                    },
                    tooltip: 'Refresh',
                  ),
                ],
              ),
              SizedBox(height: 24),

              // Summary Stats
              statsAsync.when(
                data: (stats) => _buildSummaryStats(context, stats, isDesktop),
                loading: () => _buildStatsShimmer(isDesktop),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
              SizedBox(height: 24),

              // Main Content
              if (isDesktop)
                _buildDesktopLayout(
                  context,
                  cohortsAsync,
                  alertsAsync,
                  actionsAsync,
                )
              else
                _buildMobileLayout(
                  context,
                  cohortsAsync,
                  alertsAsync,
                  actionsAsync,
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryStats(
    BuildContext context,
    SafetyMonitorStatistics stats,
    bool isDesktop,
  ) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: isDesktop ? 6 : 3,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: isDesktop ? 2.0 : 1.2,
      children: [
        _StatChip(
          label: 'Total Patients',
          value: stats.totalPatients.toString(),
          color: AppColors.primarySteelBlue,
          icon: Icons.people,
        ),
        _StatChip(
          label: 'High Risk',
          value: stats.totalHighRisk.toString(),
          color: AppColors.error,
          icon: Icons.warning,
        ),
        _StatChip(
          label: 'Active Alerts',
          value: stats.totalAlerts.toString(),
          color: AppColors.warning,
          icon: Icons.notifications_active,
        ),
        _StatChip(
          label: 'Critical',
          value: stats.criticalAlerts.toString(),
          color: AppColors.emergencyRed,
          icon: Icons.priority_high,
        ),
        _StatChip(
          label: 'Incidents',
          value: stats.totalIncidents.toString(),
          color: AppColors.info,
          icon: Icons.event_note,
        ),
        _StatChip(
          label: 'Actions',
          value: stats.activeActions.toString(),
          color: AppColors.success,
          icon: Icons.task,
        ),
      ],
    );
  }

  Widget _buildStatsShimmer(bool isDesktop) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: isDesktop ? 6 : 3,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: isDesktop ? 2.0 : 1.2,
      children: List.generate(6, (index) => ShimmerCard(height: 80)),
    );
  }

  Widget _buildDesktopLayout(
    BuildContext context,
    AsyncValue<List<CohortEntity>> cohortsAsync,
    AsyncValue<List<SafetyAlertEntity>> alertsAsync,
    AsyncValue<List<PreventiveActionEntity>> actionsAsync,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Column - Cohorts
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Safety Cohorts',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              cohortsAsync.when(
                data: (cohorts) => Column(
                  children: [
                    for (var cohort in cohorts)
                      CohortOverviewCard(cohort: cohort),
                  ],
                ),
                loading: () => Column(
                  children: [
                    for (int i = 0; i < 5; i++)
                      Padding(
                        padding: EdgeInsets.only(bottom: 16),
                        child: ShimmerCard(height: 300),
                      ),
                  ],
                ),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
            ],
          ),
        ),
        SizedBox(width: 24),

        // Right Column - Alerts & Actions
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Risk Distribution
              cohortsAsync.when(
                data: (cohorts) => RiskDistributionChart(cohorts: cohorts),
                loading: () => ShimmerCard(height: 400),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
              SizedBox(height: 24),

              // Active Alerts
              Text(
                'Active Safety Alerts',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              alertsAsync.when(
                data: (alerts) {
                  final urgentAlerts = alerts
                      .where((a) => a.requiresImmediateAction)
                      .take(5)
                      .toList();
                  return Column(
                    children: [
                      for (var alert in urgentAlerts)
                        SafetyAlertCard(alert: alert),
                      if (alerts.length > 5)
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text(
                            '+ ${alerts.length - 5} more alerts',
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(
                                  color: AppColors.warning,
                                  fontStyle: FontStyle.italic,
                                ),
                          ),
                        ),
                    ],
                  );
                },
                loading: () => Column(
                  children: [
                    for (int i = 0; i < 3; i++)
                      Padding(
                        padding: EdgeInsets.only(bottom: 12),
                        child: ShimmerCard(height: 180),
                      ),
                  ],
                ),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
              SizedBox(height: 24),

              // Preventive Actions
              actionsAsync.when(
                data: (actions) {
                  final pendingActions = actions
                      .where(
                        (a) =>
                            a.status == ActionStatus.pending ||
                            a.status == ActionStatus.scheduled,
                      )
                      .take(8)
                      .toList();
                  return PreventiveActionsList(
                    actions: pendingActions,
                    title: 'Upcoming Actions',
                  );
                },
                loading: () => ShimmerCard(height: 400),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(
    BuildContext context,
    AsyncValue<List<CohortEntity>> cohortsAsync,
    AsyncValue<List<SafetyAlertEntity>> alertsAsync,
    AsyncValue<List<PreventiveActionEntity>> actionsAsync,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Risk Distribution
        cohortsAsync.when(
          data: (cohorts) => RiskDistributionChart(cohorts: cohorts),
          loading: () => ShimmerCard(height: 400),
          error: (error, stack) => _buildErrorCard(context, error),
        ),
        SizedBox(height: 24),

        // Active Alerts
        Text(
          'Active Safety Alerts',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 16),
        alertsAsync.when(
          data: (alerts) {
            final urgentAlerts = alerts
                .where((a) => a.requiresImmediateAction)
                .toList();
            return Column(
              children: [
                for (var alert in urgentAlerts) SafetyAlertCard(alert: alert),
              ],
            );
          },
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
        SizedBox(height: 24),

        // Cohorts
        Text(
          'Safety Cohorts',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 16),
        cohortsAsync.when(
          data: (cohorts) => Column(
            children: [
              for (var cohort in cohorts) CohortOverviewCard(cohort: cohort),
            ],
          ),
          loading: () => Column(
            children: [
              for (int i = 0; i < 5; i++)
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: ShimmerCard(height: 300),
                ),
            ],
          ),
          error: (error, stack) => _buildErrorCard(context, error),
        ),
        SizedBox(height: 24),

        // Preventive Actions
        actionsAsync.when(
          data: (actions) {
            final pendingActions = actions
                .where(
                  (a) =>
                      a.status == ActionStatus.pending ||
                      a.status == ActionStatus.scheduled,
                )
                .toList();
            return PreventiveActionsList(
              actions: pendingActions,
              title: 'Upcoming Actions',
            );
          },
          loading: () => ShimmerCard(height: 400),
          error: (error, stack) => _buildErrorCard(context, error),
        ),
      ],
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
            'Failed to load safety monitor data',
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

  const _StatChip({
    required this.label,
    required this.value,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 16, color: color),
          SizedBox(height: 6),
          Text(
            value,
            style: theme.textTheme.titleMedium?.copyWith(
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
              fontSize: 10,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
