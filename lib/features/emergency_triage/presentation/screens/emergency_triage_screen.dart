import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../providers/emergency_triage_provider.dart';
import '../widgets/emergency_case_card.dart';
import '../../domain/entities/emergency_case_entity.dart';
import '../../../care_events/presentation/widgets/filter_chip_widget.dart';

class EmergencyTriageScreen extends ConsumerWidget {
  const EmergencyTriageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final casesAsync = ref.watch(emergencyCasesProvider);
    final statsAsync = ref.watch(emergencyTriageStatsProvider);
    final filter = ref.watch(emergencyTriageFilterProvider);
    final isDesktop = context.isDesktop;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(emergencyCasesProvider);
          ref.invalidate(emergencyTriageStatsProvider);
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
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: AppColors.emergencyRed,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Emergency Triage Console',
                            style: Theme.of(context).textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Real-time pre-authorization of critical care',
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
                      ref.invalidate(emergencyCasesProvider);
                      ref.invalidate(emergencyTriageStatsProvider);
                    },
                    tooltip: 'Refresh',
                  ),
                ],
              ),
              SizedBox(height: 24),

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

              // Cases List
              casesAsync.when(
                data: (cases) => cases.isEmpty
                    ? _buildEmptyState(context)
                    : _buildCasesList(cases),
                loading: () => _buildCasesShimmer(),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatsRow(
    BuildContext context,
    EmergencyTriageStats stats,
    bool isDesktop,
  ) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: isDesktop ? 5 : 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: isDesktop ? 2.0 : 1.8,
      children: [
        _StatChip(
          label: 'Active',
          value: stats.active.toString(),
          color: AppColors.info,
          icon: Icons.local_hospital,
        ),
        _StatChip(
          label: 'Critical',
          value: stats.critical.toString(),
          color: AppColors.emergencyRed,
          icon: Icons.warning,
        ),
        _StatChip(
          label: 'High Priority',
          value: stats.high.toString(),
          color: AppColors.emergencyAmber,
          icon: Icons.priority_high,
        ),
        _StatChip(
          label: 'Pending Auth',
          value: stats.pendingPreAuth.toString(),
          color: AppColors.warning,
          icon: Icons.pending_actions,
        ),
        _StatChip(
          label: 'Est. Claims',
          value: stats.totalEstimatedCost.toCompactCurrency(),
          color: AppColors.success,
          icon: Icons.currency_rupee,
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
      childAspectRatio: isDesktop ? 2.0 : 1.8,
      children: List.generate(5, (index) => ShimmerCard(height: 80)),
    );
  }

  Widget _buildFilters(
    BuildContext context,
    WidgetRef ref,
    EmergencyTriageFilterState filter,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Filter by Severity',
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
              selected: filter.severity == null,
              onTap: () {
                ref
                    .read(emergencyTriageFilterProvider.notifier)
                    .setSeverity(null);
              },
            ),
            FilterChipWidget(
              label: 'Critical',
              selected: filter.severity == 'critical',
              onTap: () {
                ref
                    .read(emergencyTriageFilterProvider.notifier)
                    .setSeverity('critical');
              },
            ),
            FilterChipWidget(
              label: 'High',
              selected: filter.severity == 'high',
              onTap: () {
                ref
                    .read(emergencyTriageFilterProvider.notifier)
                    .setSeverity('high');
              },
            ),
            FilterChipWidget(
              label: 'Moderate',
              selected: filter.severity == 'moderate',
              onTap: () {
                ref
                    .read(emergencyTriageFilterProvider.notifier)
                    .setSeverity('moderate');
              },
            ),
            FilterChipWidget(
              label: 'Low',
              selected: filter.severity == 'low',
              onTap: () {
                ref
                    .read(emergencyTriageFilterProvider.notifier)
                    .setSeverity('low');
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCasesList(List<EmergencyCaseEntity> cases) {
    return Column(
      children: cases.map((case_) => EmergencyCaseCard(case_: case_)).toList(),
    );
  }

  Widget _buildCasesShimmer() {
    return Column(
      children: List.generate(5, (index) => ShimmerCard(height: 200)),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(48),
        child: Column(
          children: [
            Icon(
              Icons.medical_services_outlined,
              size: 64,
              color: AppColors.secondarySteelGrey,
            ),
            SizedBox(height: 16),
            Text(
              'No emergency cases',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            Text(
              'All clear! No active emergency cases.',
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
            'Failed to load emergency cases',
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
