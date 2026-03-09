import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../providers/population_health_provider.dart';
import '../widgets/disease_prevalence_heatmap.dart';
import '../widgets/health_trend_chart.dart';
import '../widgets/adherence_cohort_card.dart';
import '../widgets/risk_segmentation_chart.dart';

class PopulationHealthScreen extends ConsumerWidget {
  const PopulationHealthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prevalenceAsync = ref.watch(diseasePrevalenceProvider);
    final trendsAsync = ref.watch(healthTrendsProvider);
    final cohortsAsync = ref.watch(adherenceCohortsProvider);
    final segmentsAsync = ref.watch(riskSegmentationProvider);
    final statsAsync = ref.watch(populationHealthStatsProvider);
    final isDesktop = context.isDesktop;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(diseasePrevalenceProvider);
          ref.invalidate(healthTrendsProvider);
          ref.invalidate(adherenceCohortsProvider);
          ref.invalidate(riskSegmentationProvider);
          ref.invalidate(populationHealthStatsProvider);
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
                            Icons.analytics,
                            color: AppColors.primarySteelBlue,
                            size: 28,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Population Health Intelligence',
                            style: Theme.of(context).textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Strategic health analytics and trend insights',
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
                      ref.invalidate(diseasePrevalenceProvider);
                      ref.invalidate(healthTrendsProvider);
                      ref.invalidate(adherenceCohortsProvider);
                      ref.invalidate(riskSegmentationProvider);
                      ref.invalidate(populationHealthStatsProvider);
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
                  prevalenceAsync,
                  trendsAsync,
                  cohortsAsync,
                  segmentsAsync,
                )
              else
                _buildMobileLayout(
                  context,
                  prevalenceAsync,
                  trendsAsync,
                  cohortsAsync,
                  segmentsAsync,
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryStats(
    BuildContext context,
    PopulationHealthStatistics stats,
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
          label: 'Population',
          value: stats.totalPopulation.toString(),
          color: AppColors.primarySteelBlue,
          icon: Icons.people,
        ),
        _StatChip(
          label: 'Disease Cases',
          value: stats.totalDiseases.toString(),
          color: AppColors.warning,
          icon: Icons.health_and_safety,
        ),
        _StatChip(
          label: 'Avg Adherence',
          value: '${stats.avgAdherence.toStringAsFixed(1)}%',
          color: AppColors.success,
          icon: Icons.medication,
        ),
        _StatChip(
          label: 'Improving Trends',
          value: stats.improvingTrends.toString(),
          color: AppColors.success,
          icon: Icons.trending_up,
        ),
        _StatChip(
          label: 'High Risk',
          value: stats.highRiskPopulation.toString(),
          color: AppColors.error,
          icon: Icons.warning,
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

  Widget _buildDesktopLayout(
    BuildContext context,
    AsyncValue prevalenceAsync,
    AsyncValue trendsAsync,
    AsyncValue cohortsAsync,
    AsyncValue segmentsAsync,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Column
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Disease Prevalence
              Text(
                'Disease Prevalence Analysis',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              prevalenceAsync.when(
                data: (diseases) =>
                    DiseasePrevalenceHeatmap(diseases: diseases),
                loading: () => ShimmerCard(height: 600),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
              SizedBox(height: 24),

              // Health Trends
              Text(
                'Health Trends (Quarterly)',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              trendsAsync.when(
                data: (trends) => Column(
                  children: [
                    for (var trend in trends) HealthTrendChart(trend: trend),
                  ],
                ),
                loading: () => Column(
                  children: [
                    for (int i = 0; i < 3; i++)
                      Padding(
                        padding: EdgeInsets.only(bottom: 16),
                        child: ShimmerCard(height: 250),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Risk Segmentation
              segmentsAsync.when(
                data: (segments) => RiskSegmentationChart(segments: segments),
                loading: () => ShimmerCard(height: 600),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
              SizedBox(height: 24),

              // Adherence Cohorts
              Text(
                'Medication Adherence Cohorts',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              cohortsAsync.when(
                data: (cohorts) => Column(
                  children: [
                    for (var cohort in cohorts)
                      AdherenceCohortCard(cohort: cohort),
                  ],
                ),
                loading: () => Column(
                  children: [
                    for (int i = 0; i < 3; i++)
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
      ],
    );
  }

  Widget _buildMobileLayout(
    BuildContext context,
    AsyncValue prevalenceAsync,
    AsyncValue trendsAsync,
    AsyncValue cohortsAsync,
    AsyncValue segmentsAsync,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Risk Segmentation
        segmentsAsync.when(
          data: (segments) => RiskSegmentationChart(segments: segments),
          loading: () => ShimmerCard(height: 600),
          error: (error, stack) => _buildErrorCard(context, error),
        ),
        SizedBox(height: 24),

        // Disease Prevalence
        Text(
          'Disease Prevalence Analysis',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 16),
        prevalenceAsync.when(
          data: (diseases) => DiseasePrevalenceHeatmap(diseases: diseases),
          loading: () => ShimmerCard(height: 600),
          error: (error, stack) => _buildErrorCard(context, error),
        ),
        SizedBox(height: 24),

        // Health Trends
        Text(
          'Health Trends (Quarterly)',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 16),
        trendsAsync.when(
          data: (trends) => Column(
            children: [
              for (var trend in trends) HealthTrendChart(trend: trend),
            ],
          ),
          loading: () => Column(
            children: [
              for (int i = 0; i < 5; i++)
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: ShimmerCard(height: 250),
                ),
            ],
          ),
          error: (error, stack) => _buildErrorCard(context, error),
        ),
        SizedBox(height: 24),

        // Adherence Cohorts
        Text(
          'Medication Adherence Cohorts',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 16),
        cohortsAsync.when(
          data: (cohorts) => Column(
            children: [
              for (var cohort in cohorts) AdherenceCohortCard(cohort: cohort),
            ],
          ),
          loading: () => Column(
            children: [
              for (int i = 0; i < 3; i++)
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: ShimmerCard(height: 300),
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
            'Failed to load population health data',
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
