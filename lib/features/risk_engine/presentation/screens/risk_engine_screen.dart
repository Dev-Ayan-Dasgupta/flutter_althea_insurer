import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../../../care_events/presentation/widgets/filter_chip_widget.dart';
import '../providers/risk_engine_provider.dart';
import '../widgets/risk_profile_card.dart';
import '../../domain/entities/risk_profile_entity.dart';
import 'chronic_disease_monitoring_screen.dart';

class RiskEngineScreen extends ConsumerStatefulWidget {
  const RiskEngineScreen({super.key});

  @override
  ConsumerState<RiskEngineScreen> createState() => _RiskEngineScreenState();
}

class _RiskEngineScreenState extends ConsumerState<RiskEngineScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final isDesktop = context.isDesktop;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Container(
          padding: EdgeInsets.fromLTRB(
            isDesktop ? 24 : 16,
            16,
            isDesktop ? 24 : 16,
            0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.psychology,
                            color: AppColors.primarySteelBlue,
                            size: 28,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'AI Risk Engine',
                            style: theme.textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Predictive analytics for proactive care management',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: isDark
                              ? AppColors.darkTextSecondary
                              : AppColors.lightTextSecondary,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.refresh),
                    onPressed: () {
                      if (_tabController.index == 0) {
                        ref.invalidate(riskProfilesProvider);
                        ref.invalidate(riskEngineStatsProvider);
                      } else {
                        ref.invalidate(chronicDiseaseCohortsProvider);
                      }
                    },
                    tooltip: 'Refresh',
                  ),
                ],
              ),
              SizedBox(height: 16),
              TabBar(
                controller: _tabController,
                labelColor: AppColors.primarySteelBlue,
                unselectedLabelColor: isDark
                    ? AppColors.darkTextSecondary
                    : AppColors.lightTextSecondary,
                indicatorColor: AppColors.primarySteelBlue,
                indicatorWeight: 3,
                tabs: [
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person, size: 18),
                        SizedBox(width: 8),
                        Text('Risk Profiles'),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.health_and_safety, size: 18),
                        SizedBox(width: 8),
                        Text('Chronic Disease'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [_RiskProfilesTab(), ChronicDiseaseMonitoringScreen()],
      ),
    );
  }
}

class _RiskProfilesTab extends ConsumerWidget {
  const _RiskProfilesTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profilesAsync = ref.watch(riskProfilesProvider);
    final statsAsync = ref.watch(riskEngineStatsProvider);
    final filter = ref.watch(riskEngineFilterProvider);
    final isDesktop = context.isDesktop;

    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(riskProfilesProvider);
        ref.invalidate(riskEngineStatsProvider);
      },
      child: SingleChildScrollView(
        padding: EdgeInsets.all(isDesktop ? 24 : 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Stats Cards
            statsAsync.when(
              data: (stats) => _buildStatsRow(context, stats, isDesktop),
              loading: () => _buildStatsShimmer(isDesktop),
              error: (error, stack) => _buildErrorCard(context, error),
            ),
            SizedBox(height: 24),

            // Filters
            _buildFilters(context, ref, filter),
            SizedBox(height: 24),

            // Profiles List
            profilesAsync.when(
              data: (profiles) => profiles.isEmpty
                  ? _buildEmptyState(context)
                  : _buildProfilesList(profiles),
              loading: () => _buildProfilesShimmer(),
              error: (error, stack) => _buildErrorCard(context, error),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatsRow(
    BuildContext context,
    RiskEngineStats stats,
    bool isDesktop,
  ) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: isDesktop ? 5 : 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: isDesktop ? 1.8 : 1.5,
      children: [
        _StatChip(
          label: 'Total Patients',
          value: stats.total.toString(),
          color: AppColors.primarySteelBlue,
          icon: Icons.people,
        ),
        _StatChip(
          label: 'Critical Risk',
          value: stats.critical.toString(),
          color: AppColors.riskCritical,
          icon: Icons.warning,
        ),
        _StatChip(
          label: 'High Risk',
          value: stats.high.toString(),
          color: AppColors.riskHigh,
          icon: Icons.priority_high,
        ),
        _StatChip(
          label: 'Avg Risk Score',
          value: stats.avgRiskScore.toStringAsFixed(1),
          color: AppColors.warning,
          icon: Icons.analytics,
        ),
        _StatChip(
          label: 'Potential Savings',
          value: stats.totalPotentialSavings.toCompactCurrency(),
          color: AppColors.success,
          icon: Icons.savings,
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
      childAspectRatio: isDesktop ? 1.8 : 1.5,
      children: List.generate(5, (index) => ShimmerCard(height: 80)),
    );
  }

  Widget _buildFilters(
    BuildContext context,
    WidgetRef ref,
    RiskEngineFilterState filter,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Filter by Risk Level',
          style: Theme.of(
            context,
          ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            FilterChipWidget(
              label: 'All',
              selected: filter.riskLevel == null,
              onTap: () {
                ref.read(riskEngineFilterProvider.notifier).setRiskLevel(null);
              },
            ),
            FilterChipWidget(
              label: 'Critical',
              selected: filter.riskLevel == 'critical',
              onTap: () {
                ref
                    .read(riskEngineFilterProvider.notifier)
                    .setRiskLevel('critical');
              },
            ),
            FilterChipWidget(
              label: 'High',
              selected: filter.riskLevel == 'high',
              onTap: () {
                ref
                    .read(riskEngineFilterProvider.notifier)
                    .setRiskLevel('high');
              },
            ),
            FilterChipWidget(
              label: 'Moderate',
              selected: filter.riskLevel == 'moderate',
              onTap: () {
                ref
                    .read(riskEngineFilterProvider.notifier)
                    .setRiskLevel('moderate');
              },
            ),
            FilterChipWidget(
              label: 'Low',
              selected: filter.riskLevel == 'low',
              onTap: () {
                ref.read(riskEngineFilterProvider.notifier).setRiskLevel('low');
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildProfilesList(List<RiskProfileEntity> profiles) {
    return Column(
      children: profiles
          .map((profile) => RiskProfileCard(profile: profile))
          .toList(),
    );
  }

  Widget _buildProfilesShimmer() {
    return Column(
      children: List.generate(5, (index) => ShimmerCard(height: 160)),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(48),
        child: Column(
          children: [
            Icon(
              Icons.psychology_outlined,
              size: 64,
              color: AppColors.secondarySteelGrey,
            ),
            SizedBox(height: 16),
            Text(
              'No risk profiles found',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            Text(
              'Try adjusting your filters',
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
            'Failed to load risk profiles',
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
