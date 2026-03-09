import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../providers/analytics_provider.dart';
import '../widgets/stats_card.dart';
import '../widgets/activity_chart.dart';
import '../../domain/entities/analytics_stats_entity.dart';
import '../../domain/entities/user_activity_entity.dart';

class AnalyticsDashboardScreen extends ConsumerWidget {
  const AnalyticsDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statsAsync = ref.watch(analyticsStatsProvider);
    final recentActivitiesAsync = ref.watch(recentActivitiesProvider);
    final activitiesByTypeAsync = ref.watch(activitiesByTypeProvider);
    final theme = Theme.of(context);
    final isDesktop = context.isDesktop;

    return Scaffold(
      appBar: AppBar(title: Text('User Analytics')),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(analyticsStatsProvider);
          ref.invalidate(userActivitiesProvider);
        },
        child: SingleChildScrollView(
          padding: EdgeInsets.all(isDesktop ? 24 : 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  Icon(
                    Icons.analytics,
                    color: AppColors.primarySteelBlue,
                    size: 28,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Activity Dashboard',
                          style: theme.textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Track your platform usage and productivity',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.brightness == Brightness.dark
                                ? AppColors.darkTextSecondary
                                : AppColors.lightTextSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),

              // Stats Cards
              statsAsync.when(
                data: (AnalyticsStatsEntity stats) => Column(
                  children: [
                    GridView.count(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: isDesktop ? 4 : 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: isDesktop ? 1.3 : 1.1,
                      children: [
                        StatsCard(
                          icon: Icons.login,
                          label: 'Total Logins',
                          value: stats.totalLogins.toString(),
                          color: AppColors.primarySteelBlue,
                          trend: '+12%',
                          isPositiveTrend: true,
                        ),
                        StatsCard(
                          icon: Icons.visibility,
                          label: 'Page Views',
                          value: stats.totalPageViews.toString(),
                          color: AppColors.info,
                          trend: '+8%',
                          isPositiveTrend: true,
                        ),
                        StatsCard(
                          icon: Icons.notifications_active,
                          label: 'Alerts Handled',
                          value: stats.totalAlertsAcknowledged.toString(),
                          color: AppColors.warning,
                          trend: '+15%',
                          isPositiveTrend: true,
                        ),
                        StatsCard(
                          icon: Icons.receipt,
                          label: 'Claims Reviewed',
                          value: stats.totalClaimsReviewed.toString(),
                          color: AppColors.success,
                          trend: '+5%',
                          isPositiveTrend: true,
                        ),
                        StatsCard(
                          icon: Icons.security,
                          label: 'Fraud Cases',
                          value: stats.totalFraudInvestigations.toString(),
                          color: AppColors.error,
                        ),
                        StatsCard(
                          icon: Icons.article,
                          label: 'Reports Generated',
                          value: stats.totalReportsGenerated.toString(),
                          color: AppColors.primarySteelBlue,
                        ),
                        StatsCard(
                          icon: Icons.access_time,
                          label: 'Avg Session',
                          value:
                              '${stats.avgSessionDuration.toStringAsFixed(1)} min',
                          color: AppColors.success,
                        ),
                        StatsCard(
                          icon: Icons.search,
                          label: 'Searches',
                          value: stats.totalSearches.toString(),
                          color: AppColors.info,
                        ),
                      ],
                    ),
                    SizedBox(height: 24),

                    // Activity Chart
                    ActivityChart(dailyActivity: stats.dailyActivity),
                    SizedBox(height: 24),
                  ],
                ),
                loading: () => GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: isDesktop ? 4 : 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: isDesktop ? 1.3 : 1.1,
                  children: List.generate(
                    8,
                    (index) => ShimmerCard(height: 150),
                  ),
                ),
                error: (error, stack) => _buildErrorCard(context, error),
              ),

              // Feature Usage
              statsAsync.when(
                data: (AnalyticsStatsEntity stats) =>
                    _buildFeatureUsage(context, stats.featureUsage, isDesktop),
                loading: () => ShimmerCard(height: 400),
                error: (error, stack) => SizedBox.shrink(),
              ),
              SizedBox(height: 24),

              // Activity Breakdown
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isDesktop) ...[
                    // Recent Activities
                    Expanded(
                      flex: 2,
                      child: _buildRecentActivities(
                        context,
                        recentActivitiesAsync,
                      ),
                    ),
                    SizedBox(width: 24),
                    // Activity Types
                    Expanded(
                      flex: 1,
                      child: _buildActivityTypes(
                        context,
                        activitiesByTypeAsync,
                      ),
                    ),
                  ] else
                    Expanded(
                      child: Column(
                        children: [
                          _buildActivityTypes(context, activitiesByTypeAsync),
                          SizedBox(height: 24),
                          _buildRecentActivities(
                            context,
                            recentActivitiesAsync,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureUsage(
    BuildContext context,
    Map<String, int> featureUsage,
    bool isDesktop,
  ) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final sortedEntries = featureUsage.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    final maxValue = sortedEntries.first.value;

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
                Icons.dashboard,
                color: AppColors.primarySteelBlue,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Feature Usage',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          for (var entry in sortedEntries)
            Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        entry.key,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '${entry.value} views',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: isDark
                              ? AppColors.darkTextSecondary
                              : AppColors.lightTextSecondary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: LinearProgressIndicator(
                      value: entry.value / maxValue,
                      minHeight: 8,
                      backgroundColor: isDark
                          ? AppColors.darkBorder
                          : AppColors.lightBorder,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.primarySteelBlue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildRecentActivities(
    BuildContext context,
    AsyncValue<List<UserActivityEntity>> activitiesAsync,
  ) {
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
              Icon(Icons.history, color: AppColors.primarySteelBlue, size: 20),
              SizedBox(width: 8),
              Text(
                'Recent Activity',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          activitiesAsync.when(
            data: (activities) => ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: activities.length,
              separatorBuilder: (context, index) => Divider(height: 24),
              itemBuilder: (context, index) {
                final activity = activities[index];
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: _getActivityColor(
                          activity.activityType,
                        ).withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        _getActivityIcon(activity.activityType),
                        size: 16,
                        color: _getActivityColor(activity.activityType),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            activity.description,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            activity.timestamp.toRelativeString(),
                            style: theme.textTheme.bodySmall?.copyWith(
                              fontSize: 11,
                              color: isDark
                                  ? AppColors.darkTextSecondary
                                  : AppColors.lightTextSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            loading: () => Column(
              children: List.generate(
                5,
                (index) => Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: ShimmerCard(height: 60),
                ),
              ),
            ),
            error: (error, stack) => Text('Failed to load activities'),
          ),
        ],
      ),
    );
  }

  Widget _buildActivityTypes(
    BuildContext context,
    AsyncValue<Map<ActivityType, int>> activitiesAsync,
  ) {
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
                Icons.pie_chart,
                color: AppColors.primarySteelBlue,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Activity Breakdown',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          activitiesAsync.when(
            data: (activities) {
              final sortedEntries = activities.entries.toList()
                ..sort((a, b) => b.value.compareTo(a.value));

              return Column(
                children: sortedEntries.map((entry) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: _getActivityColor(
                              entry.key,
                            ).withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Icon(
                            _getActivityIcon(entry.key),
                            size: 14,
                            color: _getActivityColor(entry.key),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            _getActivityLabel(entry.key),
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.primarySteelBlue.withValues(
                              alpha: 0.1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            entry.value.toString(),
                            style: theme.textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: AppColors.primarySteelBlue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              );
            },
            loading: () => Column(
              children: List.generate(
                6,
                (index) => Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: ShimmerCard(height: 40),
                ),
              ),
            ),
            error: (error, stack) => Text('Failed to load activity types'),
          ),
        ],
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
            'Failed to load analytics',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.error,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Color _getActivityColor(ActivityType type) {
    switch (type) {
      case ActivityType.login:
        return AppColors.primarySteelBlue;
      case ActivityType.pageView:
        return AppColors.info;
      case ActivityType.alertAcknowledged:
        return AppColors.warning;
      case ActivityType.claimReviewed:
        return AppColors.success;
      case ActivityType.fraudInvestigated:
        return AppColors.error;
      case ActivityType.reportGenerated:
        return AppColors.primarySteelBlue;
      case ActivityType.settingsChanged:
        return AppColors.secondarySteelGrey;
      case ActivityType.searchPerformed:
        return AppColors.info;
    }
  }

  IconData _getActivityIcon(ActivityType type) {
    switch (type) {
      case ActivityType.login:
        return Icons.login;
      case ActivityType.pageView:
        return Icons.visibility;
      case ActivityType.alertAcknowledged:
        return Icons.notifications_active;
      case ActivityType.claimReviewed:
        return Icons.receipt;
      case ActivityType.fraudInvestigated:
        return Icons.security;
      case ActivityType.reportGenerated:
        return Icons.article;
      case ActivityType.settingsChanged:
        return Icons.settings;
      case ActivityType.searchPerformed:
        return Icons.search;
    }
  }

  String _getActivityLabel(ActivityType type) {
    switch (type) {
      case ActivityType.login:
        return 'Logins';
      case ActivityType.pageView:
        return 'Page Views';
      case ActivityType.alertAcknowledged:
        return 'Alerts';
      case ActivityType.claimReviewed:
        return 'Claims';
      case ActivityType.fraudInvestigated:
        return 'Fraud Cases';
      case ActivityType.reportGenerated:
        return 'Reports';
      case ActivityType.settingsChanged:
        return 'Settings';
      case ActivityType.searchPerformed:
        return 'Searches';
    }
  }
}
