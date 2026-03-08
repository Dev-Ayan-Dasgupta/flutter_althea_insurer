import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../../domain/entities/cluster_stats_entity.dart';
import '../providers/dashboard_provider.dart';
import '../widgets/stat_card.dart';
import '../widgets/risk_distribution_card.dart';
import '../widgets/prevention_counter_card.dart';
import '../widgets/financial_impact_card.dart';
import '../widgets/cluster_map_card.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDesktop = context.isDesktop;
    final isTablet = context.isTablet;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.read(dashboardRefreshProvider.notifier).refresh();
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
                      Text(
                        'Cluster Risk Overview',
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Real-time population health monitoring',
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
                      ref.read(dashboardRefreshProvider.notifier).refresh();
                    },
                    tooltip: 'Refresh',
                  ),
                ],
              ),
              SizedBox(height: 24),

              // Stats Cards
              _buildStatsSection(context, ref, isDesktop, isTablet),
              SizedBox(height: 24),

              // Main Content Grid
              if (isDesktop)
                _buildDesktopLayout(context, ref)
              else
                _buildMobileLayout(context, ref),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatsSection(
    BuildContext context,
    WidgetRef ref,
    bool isDesktop,
    bool isTablet,
  ) {
    final clusterStatsAsync = ref.watch(clusterStatsProvider);

    return clusterStatsAsync.when(
      data: (stats) => _buildStatsGrid(
        context,
        stats,
        isDesktop: isDesktop,
        isTablet: isTablet,
      ),
      loading: () =>
          _buildStatsGridShimmer(isDesktop: isDesktop, isTablet: isTablet),
      error: (error, stack) => _buildErrorCard(context, error),
    );
  }

  Widget _buildStatsGrid(
    BuildContext context,
    dynamic stats, {
    required bool isDesktop,
    required bool isTablet,
  }) {
    // Cast to proper type
    final clusterStats = stats as ClusterStatsEntity;

    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: isDesktop ? 4 : (isTablet ? 2 : 2),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: isDesktop ? 1.3 : 1.19,
      children: [
        StatCard(
          title: 'Total Lives',
          value: clusterStats.totalLives.toCompactNumber(),
          icon: Icons.people_outline,
          color: AppColors.primarySteelBlue,
          subtitle: 'Insured population',
        ),
        StatCard(
          title: 'Active Users',
          value: clusterStats.activeLives.toCompactNumber(),
          icon: Icons.phone_android,
          color: AppColors.success,
          subtitle: 'App engagement',
        ),
        StatCard(
          title: 'High Risk',
          value: clusterStats.highRiskPatients.toCompactNumber(),
          icon: Icons.warning_outlined,
          color: AppColors.warning,
          subtitle: 'Need attention',
        ),
        StatCard(
          title: 'Avg Response',
          value: '${clusterStats.averageResponseTime.toStringAsFixed(1)} min',
          icon: Icons.timer_outlined,
          color: AppColors.info,
          subtitle: 'Emergency time',
        ),
      ],
    );
  }

  Widget _buildStatsGridShimmer({
    required bool isDesktop,
    required bool isTablet,
  }) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: isDesktop ? 4 : (isTablet ? 2 : 2),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: isDesktop ? 1.3 : 1.5,
      children: List.generate(4, (index) => ShimmerCard()),
    );
  }

  Widget _buildDesktopLayout(BuildContext context, WidgetRef ref) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Column
        Expanded(
          flex: 2,
          child: Column(
            children: [
              // Prevention Counter
              Consumer(
                builder: (context, ref, child) {
                  final preventionMetricsAsync = ref.watch(
                    preventionMetricsProvider,
                  );
                  return preventionMetricsAsync.when(
                    data: (metrics) => PreventionCounterCard(metrics: metrics),
                    loading: () => ShimmerCard(height: 200),
                    error: (error, stack) => _buildErrorCard(context, error),
                  );
                },
              ),
              SizedBox(height: 24),

              // Risk Distribution
              Consumer(
                builder: (context, ref, child) {
                  final riskDistributionAsync = ref.watch(
                    riskDistributionProvider,
                  );
                  return riskDistributionAsync.when(
                    data: (distribution) =>
                        RiskDistributionCard(distribution: distribution),
                    loading: () => ShimmerCard(height: 300),
                    error: (error, stack) => _buildErrorCard(context, error),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(width: 24),

        // Right Column
        Expanded(
          flex: 3,
          child: Column(
            children: [
              // Cluster Map
              Consumer(
                builder: (context, ref, child) {
                  final clusterStatsAsync = ref.watch(clusterStatsProvider);
                  return clusterStatsAsync.when(
                    data: (stats) => ClusterMapCard(stats: stats),
                    loading: () => ShimmerCard(height: 400),
                    error: (error, stack) => _buildErrorCard(context, error),
                  );
                },
              ),
              SizedBox(height: 24),

              // Financial Impact
              Consumer(
                builder: (context, ref, child) {
                  final financialImpactAsync = ref.watch(
                    financialImpactProvider,
                  );
                  return financialImpactAsync.when(
                    data: (impact) => FinancialImpactCard(impact: impact),
                    loading: () => ShimmerCard(height: 350),
                    error: (error, stack) => _buildErrorCard(context, error),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        // Prevention Counter
        Consumer(
          builder: (context, ref, child) {
            final preventionMetricsAsync = ref.watch(preventionMetricsProvider);
            return preventionMetricsAsync.when(
              data: (metrics) => PreventionCounterCard(metrics: metrics),
              loading: () => ShimmerCard(height: 200),
              error: (error, stack) => _buildErrorCard(context, error),
            );
          },
        ),
        SizedBox(height: 16),

        // Risk Distribution
        Consumer(
          builder: (context, ref, child) {
            final riskDistributionAsync = ref.watch(riskDistributionProvider);
            return riskDistributionAsync.when(
              data: (distribution) =>
                  RiskDistributionCard(distribution: distribution),
              loading: () => ShimmerCard(height: 300),
              error: (error, stack) => _buildErrorCard(context, error),
            );
          },
        ),
        SizedBox(height: 16),

        // Cluster Map
        Consumer(
          builder: (context, ref, child) {
            final clusterStatsAsync = ref.watch(clusterStatsProvider);
            return clusterStatsAsync.when(
              data: (stats) => ClusterMapCard(stats: stats),
              loading: () => ShimmerCard(height: 400),
              error: (error, stack) => _buildErrorCard(context, error),
            );
          },
        ),
        SizedBox(height: 16),

        // Financial Impact
        Consumer(
          builder: (context, ref, child) {
            final financialImpactAsync = ref.watch(financialImpactProvider);
            return financialImpactAsync.when(
              data: (impact) => FinancialImpactCard(impact: impact),
              loading: () => ShimmerCard(height: 350),
              error: (error, stack) => _buildErrorCard(context, error),
            );
          },
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
            'Failed to load data',
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
