import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../providers/care_events_provider.dart';
import '../widgets/care_event_card.dart';
import '../widgets/filter_chip_widget.dart';
import '../../domain/entities/care_event_entity.dart';
import 'audit_console_screen.dart';

class CareEventsScreen extends ConsumerStatefulWidget {
  const CareEventsScreen({super.key});

  @override
  ConsumerState<CareEventsScreen> createState() => _CareEventsScreenState();
}

class _CareEventsScreenState extends ConsumerState<CareEventsScreen>
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
                      Text(
                        'Care Events',
                        style: theme.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Verified audit trail of all care activities',
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
                        ref.invalidate(careEventsProvider);
                        ref.invalidate(careEventsStatsProvider);
                      } else {
                        ref.invalidate(flaggedCareEventsProvider);
                        ref.invalidate(auditStatisticsProvider);
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
                        Icon(Icons.event_available, size: 18),
                        SizedBox(width: 8),
                        Text('All Events'),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.security, size: 18),
                        SizedBox(width: 8),
                        Text('Audit Console'),
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
        children: [_AllEventsTab(), AuditConsoleScreen()],
      ),
    );
  }
}

class _AllEventsTab extends ConsumerWidget {
  const _AllEventsTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final careEventsAsync = ref.watch(careEventsProvider);
    final statsAsync = ref.watch(careEventsStatsProvider);
    final filter = ref.watch(careEventsFilterProvider);
    final isDesktop = context.isDesktop;

    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(careEventsProvider);
        ref.invalidate(careEventsStatsProvider);
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

            // Events List
            careEventsAsync.when(
              data: (events) => events.isEmpty
                  ? _buildEmptyState(context)
                  : _buildEventsList(events),
              loading: () => _buildEventsShimmer(),
              error: (error, stack) => _buildErrorCard(context, error),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatsRow(
    BuildContext context,
    CareEventsStats stats,
    bool isDesktop,
  ) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: isDesktop ? 4 : 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: isDesktop ? 2.5 : 2.0,
      children: [
        _StatChip(
          label: 'Total',
          value: stats.total.toString(),
          color: AppColors.primarySteelBlue,
        ),
        _StatChip(
          label: 'Verified',
          value: stats.verified.toString(),
          color: AppColors.verified,
        ),
        _StatChip(
          label: 'Flagged',
          value: stats.flagged.toString(),
          color: AppColors.flagged,
        ),
        _StatChip(
          label: 'Total Claims',
          value: stats.totalClaims.toCompactCurrency(),
          color: AppColors.success,
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
      childAspectRatio: isDesktop ? 2.5 : 2.0,
      children: List.generate(4, (index) => ShimmerCard(height: 80)),
    );
  }

  Widget _buildFilters(
    BuildContext context,
    WidgetRef ref,
    CareEventsFilterState filter,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Filter by Status',
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
              selected: filter.status == null,
              onTap: () {
                ref.read(careEventsFilterProvider.notifier).setStatus(null);
              },
            ),
            FilterChipWidget(
              label: 'Verified',
              selected: filter.status == 'verified',
              onTap: () {
                ref
                    .read(careEventsFilterProvider.notifier)
                    .setStatus('verified');
              },
            ),
            FilterChipWidget(
              label: 'Partial',
              selected: filter.status == 'partial',
              onTap: () {
                ref
                    .read(careEventsFilterProvider.notifier)
                    .setStatus('partial');
              },
            ),
            FilterChipWidget(
              label: 'Flagged',
              selected: filter.status == 'flagged',
              onTap: () {
                ref
                    .read(careEventsFilterProvider.notifier)
                    .setStatus('flagged');
              },
            ),
            FilterChipWidget(
              label: 'Pending',
              selected: filter.status == 'pending',
              onTap: () {
                ref
                    .read(careEventsFilterProvider.notifier)
                    .setStatus('pending');
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildEventsList(List<CareEventEntity> events) {
    return Column(
      children: events.map((event) => CareEventCard(event: event)).toList(),
    );
  }

  Widget _buildEventsShimmer() {
    return Column(
      children: List.generate(5, (index) => ShimmerCard(height: 140)),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(48),
        child: Column(
          children: [
            Icon(
              Icons.event_busy_outlined,
              size: 64,
              color: AppColors.secondarySteelGrey,
            ),
            SizedBox(height: 16),
            Text(
              'No care events found',
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
            'Failed to load care events',
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

  const _StatChip({
    required this.label,
    required this.value,
    required this.color,
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
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: isDark
                  ? AppColors.darkTextSecondary
                  : AppColors.lightTextSecondary,
            ),
          ),
          SizedBox(height: 4),
          Text(
            value,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
