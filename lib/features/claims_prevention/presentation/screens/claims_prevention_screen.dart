import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../providers/claims_prevention_provider.dart';
import '../widgets/prevention_counter_widget.dart';
import '../widgets/roi_calculator_card.dart';
import '../widgets/cost_comparison_chart.dart';
import '../widgets/intervention_success_card.dart';

class ClaimsPreventionScreen extends ConsumerWidget {
  const ClaimsPreventionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metricsAsync = ref.watch(preventionMetricsProvider);
    final costAvoidanceAsync = ref.watch(costAvoidanceProvider);
    final interventionsAsync = ref.watch(interventionImpactProvider);
    final statsAsync = ref.watch(claimsPreventionStatsProvider);
    final isDesktop = context.isDesktop;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(preventionMetricsProvider);
          ref.invalidate(costAvoidanceProvider);
          ref.invalidate(interventionImpactProvider);
          ref.invalidate(claimsPreventionStatsProvider);
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
                            Icons.trending_down,
                            color: AppColors.success,
                            size: 28,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Claims Prevention Analytics',
                            style: Theme.of(context).textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Cost savings and intervention impact analysis',
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
                      ref.invalidate(preventionMetricsProvider);
                      ref.invalidate(costAvoidanceProvider);
                      ref.invalidate(interventionImpactProvider);
                      ref.invalidate(claimsPreventionStatsProvider);
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
                  metricsAsync,
                  costAvoidanceAsync,
                  interventionsAsync,
                )
              else
                _buildMobileLayout(
                  context,
                  metricsAsync,
                  costAvoidanceAsync,
                  interventionsAsync,
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryStats(
    BuildContext context,
    ClaimsPreventionStats stats,
    bool isDesktop,
  ) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: isDesktop ? 4 : 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: isDesktop ? 2.0 : 1.5,
      children: [
        _StatChip(
          label: 'Total Preventions',
          value: stats.totalPreventions.toString(),
          color: AppColors.success,
          icon: Icons.shield,
        ),
        _StatChip(
          label: 'Cost Avoided',
          value: stats.totalCostAvoided.toCompactCurrency(),
          color: AppColors.primarySteelBlue,
          icon: Icons.savings,
        ),
        _StatChip(
          label: 'Avg Success Rate',
          value: '${stats.avgSuccessRate.toStringAsFixed(1)}%',
          color: AppColors.info,
          icon: Icons.check_circle,
        ),
        _StatChip(
          label: 'ROI',
          value: '${stats.roi.toStringAsFixed(0)}%',
          color: AppColors.emergencyAmber,
          icon: Icons.trending_up,
        ),
      ],
    );
  }

  Widget _buildStatsShimmer(bool isDesktop) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: isDesktop ? 4 : 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: isDesktop ? 2.0 : 1.5,
      children: List.generate(4, (index) => ShimmerCard(height: 80)),
    );
  }

  Widget _buildDesktopLayout(
    BuildContext context,
    AsyncValue metricsAsync,
    AsyncValue costAvoidanceAsync,
    AsyncValue interventionsAsync,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Column
        Expanded(
          flex: 2,
          child: Column(
            children: [
              // Prevention Counters
              metricsAsync.when(
                data: (metrics) => Column(
                  children: [
                    for (var metric in metrics.take(3))
                      Padding(
                        padding: EdgeInsets.only(bottom: 16),
                        child: PreventionCounterWidget(metric: metric),
                      ),
                  ],
                ),
                loading: () => Column(
                  children: [
                    for (int i = 0; i < 3; i++)
                      Padding(
                        padding: EdgeInsets.only(bottom: 16),
                        child: ShimmerCard(height: 200),
                      ),
                  ],
                ),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
              SizedBox(height: 24),

              // Intervention Impact
              interventionsAsync.when(
                data: (interventions) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Intervention Impact Analysis',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 16),
                    for (var intervention in interventions)
                      InterventionSuccessCard(intervention: intervention),
                  ],
                ),
                loading: () => Column(
                  children: [
                    for (int i = 0; i < 3; i++)
                      Padding(
                        padding: EdgeInsets.only(bottom: 12),
                        child: ShimmerCard(height: 200),
                      ),
                  ],
                ),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
            ],
          ),
        ),
        SizedBox(width: 24),

        // Right Column
        Expanded(
          flex: 1,
          child: Column(
            children: [
              // ROI Calculator
              costAvoidanceAsync.when(
                data: (costAvoidance) =>
                    RoiCalculatorCard(costAvoidance: costAvoidance),
                loading: () => ShimmerCard(height: 600),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
              SizedBox(height: 24),

              // Cost Comparison Chart
              costAvoidanceAsync.when(
                data: (costAvoidance) =>
                    CostComparisonChart(costAvoidance: costAvoidance),
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
    AsyncValue metricsAsync,
    AsyncValue costAvoidanceAsync,
    AsyncValue interventionsAsync,
  ) {
    return Column(
      children: [
        // ROI Calculator
        costAvoidanceAsync.when(
          data: (costAvoidance) =>
              RoiCalculatorCard(costAvoidance: costAvoidance),
          loading: () => ShimmerCard(height: 600),
          error: (error, stack) => _buildErrorCard(context, error),
        ),
        SizedBox(height: 16),

        // Cost Comparison
        costAvoidanceAsync.when(
          data: (costAvoidance) =>
              CostComparisonChart(costAvoidance: costAvoidance),
          loading: () => ShimmerCard(height: 400),
          error: (error, stack) => _buildErrorCard(context, error),
        ),
        SizedBox(height: 16),

        // Prevention Counters
        metricsAsync.when(
          data: (metrics) => Column(
            children: [
              for (var metric in metrics)
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: PreventionCounterWidget(metric: metric),
                ),
            ],
          ),
          loading: () => Column(
            children: [
              for (int i = 0; i < 5; i++)
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: ShimmerCard(height: 200),
                ),
            ],
          ),
          error: (error, stack) => _buildErrorCard(context, error),
        ),
        SizedBox(height: 16),

        // Intervention Impact
        interventionsAsync.when(
          data: (interventions) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Intervention Impact Analysis',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              for (var intervention in interventions)
                InterventionSuccessCard(intervention: intervention),
            ],
          ),
          loading: () => Column(
            children: [
              for (int i = 0; i < 5; i++)
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: ShimmerCard(height: 200),
                ),
            ],
          ),
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
        ],
      ),
    );
  }
}
