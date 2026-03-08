import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../../domain/entities/chronic_disease_cohort_entity.dart';
import '../providers/risk_engine_provider.dart';
import '../widgets/disease_cohort_card.dart';

class ChronicDiseaseMonitoringScreen extends ConsumerWidget {
  const ChronicDiseaseMonitoringScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cohortsAsync = ref.watch(chronicDiseaseCohortsProvider);
    final isDesktop = context.isDesktop;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(chronicDiseaseCohortsProvider);
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
                            Icons.health_and_safety,
                            color: AppColors.primarySteelBlue,
                            size: 28,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Chronic Disease Monitoring',
                            style: Theme.of(context).textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Disease-specific cohorts and intervention effectiveness',
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
                      ref.invalidate(chronicDiseaseCohortsProvider);
                    },
                    tooltip: 'Refresh',
                  ),
                ],
              ),
              SizedBox(height: 24),

              // Summary Stats
              cohortsAsync.when(
                data: (cohorts) =>
                    _buildSummaryStats(context, cohorts, isDesktop),
                loading: () => _buildStatsShimmer(isDesktop),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
              SizedBox(height: 24),

              // Disease Cohorts
              cohortsAsync.when(
                data: (cohorts) => Column(
                  children: [
                    for (var cohort in cohorts)
                      DiseaseCohortCard(cohort: cohort),
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
      ),
    );
  }

  Widget _buildSummaryStats(
    BuildContext context,
    List<ChronicDiseaseCohortEntity> cohorts,
    bool isDesktop,
  ) {
    final totalPatients = cohorts.fold<int>(
      0,
      (sum, c) => sum + c.totalPatients,
    );
    final avgRiskScore = cohorts.isEmpty
        ? 0.0
        : cohorts.fold<double>(0.0, (sum, c) => sum + c.avgRiskScore) /
              cohorts.length;
    final totalInterventions = cohorts.fold<int>(
      0,
      (sum, c) => sum + c.interventionsActive,
    );
    final avgSuccessRate = cohorts.isEmpty
        ? 0.0
        : cohorts.fold<double>(
                0.0,
                (sum, c) => sum + c.interventionSuccessRate,
              ) /
              cohorts.length;

    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: isDesktop ? 4 : 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: isDesktop ? 2.0 : 1.5,
      children: [
        _StatChip(
          label: 'Total Patients',
          value: totalPatients.toString(),
          color: AppColors.primarySteelBlue,
          icon: Icons.people,
        ),
        _StatChip(
          label: 'Avg Risk Score',
          value: avgRiskScore.toStringAsFixed(1),
          color: AppColors.warning,
          icon: Icons.analytics,
        ),
        _StatChip(
          label: 'Active Interventions',
          value: totalInterventions.toString(),
          color: AppColors.info,
          icon: Icons.healing,
        ),
        _StatChip(
          label: 'Avg Success Rate',
          value: '${avgSuccessRate.toStringAsFixed(1)}%',
          color: AppColors.success,
          icon: Icons.check_circle,
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
            'Failed to load chronic disease data',
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
