import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../providers/live_alerts_provider.dart';
import '../widgets/live_alert_card.dart';
import '../widgets/alert_timeline_view.dart';
import '../widgets/alert_filter_panel.dart';
import '../widgets/alert_stats_panel.dart';
import '../../domain/entities/live_alert_entity.dart';
import '../../domain/entities/alert_filter_entity.dart';

class LiveAlertsScreen extends ConsumerStatefulWidget {
  const LiveAlertsScreen({super.key});

  @override
  ConsumerState<LiveAlertsScreen> createState() => _LiveAlertsScreenState();
}

class _LiveAlertsScreenState extends ConsumerState<LiveAlertsScreen> {
  Set<AlertCategory> _selectedCategories = {};
  Set<AlertPriority> _selectedPriorities = {};
  Set<AlertStatus> _selectedStatuses = {AlertStatus.active};
  String _searchQuery = '';

  AlertFilterEntity get _currentFilter => AlertFilterEntity(
    categories: _selectedCategories.isEmpty
        ? null
        : _selectedCategories.toList(),
    priorities: _selectedPriorities.isEmpty
        ? null
        : _selectedPriorities.toList(),
    statuses: _selectedStatuses.isEmpty ? null : _selectedStatuses.toList(),
    searchQuery: _searchQuery.isEmpty ? null : _searchQuery,
  );

  @override
  Widget build(BuildContext context) {
    final alertsAsync = ref.watch(filteredAlertsProvider(_currentFilter));
    final statsAsync = ref.watch(alertStatisticsProvider);
    final isDesktop = context.isDesktop;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(liveAlertsProvider);
          ref.invalidate(alertStatisticsProvider);
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
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: AppColors.emergencyRed.withValues(
                                alpha: 0.1,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.notifications_active,
                              color: AppColors.emergencyRed,
                              size: 24,
                            ),
                          ),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Live Alert Center',
                                style: Theme.of(context).textTheme.headlineSmall
                                    ?.copyWith(fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'Real-time alert monitoring and response',
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(
                                      color:
                                          Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? AppColors.darkTextSecondary
                                          : AppColors.lightTextSecondary,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      // Live indicator
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.success.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: AppColors.success.withValues(alpha: 0.3),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: AppColors.success,
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(width: 6),
                            Text(
                              'LIVE',
                              style: Theme.of(context).textTheme.bodySmall
                                  ?.copyWith(
                                    color: AppColors.success,
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      IconButton(
                        icon: Icon(Icons.refresh),
                        onPressed: () {
                          ref.invalidate(liveAlertsProvider);
                          ref.invalidate(alertStatisticsProvider);
                        },
                        tooltip: 'Refresh',
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),

              // Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText:
                      'Search alerts by patient, provider, or description...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _searchQuery = value;
                  });
                },
              ),
              SizedBox(height: 24),

              // Main Content
              if (isDesktop)
                _buildDesktopLayout(context, alertsAsync, statsAsync)
              else
                _buildMobileLayout(context, alertsAsync, statsAsync),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDesktopLayout(
    BuildContext context,
    AsyncValue<List<LiveAlertEntity>> alertsAsync,
    AsyncValue statsAsync,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Column - Filters
        SizedBox(
          width: 280,
          child: AlertFilterPanel(
            selectedCategories: _selectedCategories,
            selectedPriorities: _selectedPriorities,
            selectedStatuses: _selectedStatuses,
            onCategoriesChanged: (categories) {
              setState(() {
                _selectedCategories = categories;
              });
            },
            onPrioritiesChanged: (priorities) {
              setState(() {
                _selectedPriorities = priorities;
              });
            },
            onStatusesChanged: (statuses) {
              setState(() {
                _selectedStatuses = statuses;
              });
            },
            onClearAll: () {
              setState(() {
                _selectedCategories.clear();
                _selectedPriorities.clear();
                _selectedStatuses = {AlertStatus.active};
              });
            },
          ),
        ),
        SizedBox(width: 24),

        // Middle Column - Alert List
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              alertsAsync.when(
                data: (alerts) {
                  if (alerts.isEmpty) {
                    return _buildEmptyState(context);
                  }

                  final emergencyAlerts = alerts
                      .where((a) => a.priority == AlertPriority.emergency)
                      .toList();
                  final criticalAlerts = alerts
                      .where((a) => a.priority == AlertPriority.critical)
                      .toList();
                  final otherAlerts = alerts
                      .where(
                        (a) =>
                            a.priority != AlertPriority.emergency &&
                            a.priority != AlertPriority.critical,
                      )
                      .toList();

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (emergencyAlerts.isNotEmpty) ...[
                        _buildSectionHeader(
                          context,
                          'Emergency Alerts (${emergencyAlerts.length})',
                          AppColors.emergencyRed,
                        ),
                        for (var alert in emergencyAlerts)
                          LiveAlertCard(alert: alert),
                        SizedBox(height: 16),
                      ],
                      if (criticalAlerts.isNotEmpty) ...[
                        _buildSectionHeader(
                          context,
                          'Critical Alerts (${criticalAlerts.length})',
                          AppColors.error,
                        ),
                        for (var alert in criticalAlerts)
                          LiveAlertCard(alert: alert),
                        SizedBox(height: 16),
                      ],
                      if (otherAlerts.isNotEmpty) ...[
                        _buildSectionHeader(
                          context,
                          'Other Alerts (${otherAlerts.length})',
                          AppColors.info,
                        ),
                        for (var alert in otherAlerts)
                          LiveAlertCard(alert: alert),
                      ],
                    ],
                  );
                },
                loading: () => Column(
                  children: [
                    for (int i = 0; i < 5; i++)
                      Padding(
                        padding: EdgeInsets.only(bottom: 12),
                        child: ShimmerCard(height: 220),
                      ),
                  ],
                ),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
            ],
          ),
        ),
        SizedBox(width: 24),

        // Right Column - Stats & Timeline
        SizedBox(
          width: 320,
          child: Column(
            children: [
              // Stats
              statsAsync.when(
                data: (stats) => AlertStatsPanel(stats: stats),
                loading: () => ShimmerCard(height: 400),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
              SizedBox(height: 24),

              // Timeline
              alertsAsync.when(
                data: (List<LiveAlertEntity> alerts) =>
                    AlertTimelineView(alerts: alerts.take(10).toList()),
                loading: () => ShimmerCard(height: 500),
                error: (error, stack) => SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(
    BuildContext context,
    AsyncValue<List<LiveAlertEntity>> alertsAsync,
    AsyncValue statsAsync,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Stats
        statsAsync.when(
          data: (stats) => AlertStatsPanel(stats: stats),
          loading: () => ShimmerCard(height: 300),
          error: (error, stack) => _buildErrorCard(context, error),
        ),
        SizedBox(height: 24),

        // Filters (Collapsible)
        ExpansionTile(
          title: Text('Filters'),
          leading: Icon(Icons.filter_list),
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: AlertFilterPanel(
                selectedCategories: _selectedCategories,
                selectedPriorities: _selectedPriorities,
                selectedStatuses: _selectedStatuses,
                onCategoriesChanged: (categories) {
                  setState(() {
                    _selectedCategories = categories;
                  });
                },
                onPrioritiesChanged: (priorities) {
                  setState(() {
                    _selectedPriorities = priorities;
                  });
                },
                onStatusesChanged: (statuses) {
                  setState(() {
                    _selectedStatuses = statuses;
                  });
                },
                onClearAll: () {
                  setState(() {
                    _selectedCategories.clear();
                    _selectedPriorities.clear();
                    _selectedStatuses = {AlertStatus.active};
                  });
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 24),

        // Alert List
        alertsAsync.when(
          data: (alerts) {
            if (alerts.isEmpty) {
              return _buildEmptyState(context);
            }

            return Column(
              children: [for (var alert in alerts) LiveAlertCard(alert: alert)],
            );
          },
          loading: () => Column(
            children: [
              for (int i = 0; i < 5; i++)
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: ShimmerCard(height: 220),
                ),
            ],
          ),
          error: (error, stack) => _buildErrorCard(context, error),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title, Color color) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Row(
        children: [
          Icon(Icons.warning, color: color, size: 20),
          SizedBox(width: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(48),
        child: Column(
          children: [
            Icon(
              Icons.check_circle_outline,
              size: 64,
              color: AppColors.success,
            ),
            SizedBox(height: 16),
            Text(
              'No Active Alerts',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 8),
            Text(
              'All systems are running smoothly',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
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
            'Failed to load alerts',
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
