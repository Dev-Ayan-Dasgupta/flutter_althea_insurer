import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../providers/network_readiness_provider.dart';
import '../widgets/network_asset_card.dart';
import '../widgets/service_capacity_card.dart';
import '../widgets/resource_utilization_chart.dart';
import '../widgets/coverage_map_widget.dart';
import '../../domain/entities/network_asset_entity.dart';

class NetworkReadinessScreen extends ConsumerWidget {
  const NetworkReadinessScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final assetsAsync = ref.watch(networkAssetsProvider);
    final capacityAsync = ref.watch(serviceCapacityProvider);
    final utilizationAsync = ref.watch(resourceUtilizationProvider);
    final zonesAsync = ref.watch(coverageZonesProvider);
    final statsAsync = ref.watch(networkStatisticsProvider);
    final isDesktop = context.isDesktop;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(networkAssetsProvider);
          ref.invalidate(serviceCapacityProvider);
          ref.invalidate(resourceUtilizationProvider);
          ref.invalidate(coverageZonesProvider);
          ref.invalidate(networkStatisticsProvider);
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
                            Icons.hub,
                            color: AppColors.primarySteelBlue,
                            size: 28,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Network Readiness Monitor',
                            style: Theme.of(context).textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Real-time infrastructure capacity and utilization',
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
                      ref.invalidate(networkAssetsProvider);
                      ref.invalidate(serviceCapacityProvider);
                      ref.invalidate(resourceUtilizationProvider);
                      ref.invalidate(coverageZonesProvider);
                      ref.invalidate(networkStatisticsProvider);
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
                  assetsAsync,
                  capacityAsync,
                  utilizationAsync,
                  zonesAsync,
                )
              else
                _buildMobileLayout(
                  context,
                  assetsAsync,
                  capacityAsync,
                  utilizationAsync,
                  zonesAsync,
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryStats(
    BuildContext context,
    NetworkStatistics stats,
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
          label: 'Total Assets',
          value: stats.totalAssets.toString(),
          color: AppColors.primarySteelBlue,
          icon: Icons.hub,
        ),
        _StatChip(
          label: 'Active',
          value: stats.activeAssets.toString(),
          color: AppColors.success,
          icon: Icons.check_circle,
        ),
        _StatChip(
          label: 'Avg Utilization',
          value: '${stats.avgUtilizationRate.toStringAsFixed(0)}%',
          color: AppColors.info,
          icon: Icons.pie_chart,
        ),
        _StatChip(
          label: 'Capacity',
          value: '${stats.totalUtilization}/${stats.totalCapacity}',
          color: AppColors.warning,
          icon: Icons.insights,
        ),
        _StatChip(
          label: 'Bottlenecks',
          value: stats.bottlenecks.toString(),
          color: stats.bottlenecks > 0 ? AppColors.error : AppColors.success,
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
    AsyncValue assetsAsync,
    AsyncValue capacityAsync,
    AsyncValue utilizationAsync,
    AsyncValue zonesAsync,
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
              // Service Capacity Section
              Text(
                'Service Capacity Planning',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              capacityAsync.when(
                data: (capacities) => Column(
                  children: [
                    for (var capacity in capacities)
                      ServiceCapacityCard(capacity: capacity),
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

              // Resource Utilization Section
              Text(
                'Resource Utilization',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              utilizationAsync.when(
                data: (utilizations) => Column(
                  children: [
                    for (var utilization in utilizations)
                      ResourceUtilizationChart(utilization: utilization),
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
              // Coverage Map
              zonesAsync.when(
                data: (zones) => CoverageMapWidget(zones: zones),
                loading: () => ShimmerCard(height: 400),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
              SizedBox(height: 24),

              // Active Assets
              Text(
                'Active Network Assets',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              assetsAsync.when(
                data: (assets) => _buildAssetsSection(context, assets),
                loading: () => Column(
                  children: [
                    for (int i = 0; i < 10; i++)
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: ShimmerCard(height: 60),
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
    AsyncValue assetsAsync,
    AsyncValue capacityAsync,
    AsyncValue utilizationAsync,
    AsyncValue zonesAsync,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Coverage Map
        zonesAsync.when(
          data: (zones) => CoverageMapWidget(zones: zones),
          loading: () => ShimmerCard(height: 400),
          error: (error, stack) => _buildErrorCard(context, error),
        ),
        SizedBox(height: 24),

        // Service Capacity
        Text(
          'Service Capacity Planning',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 16),
        capacityAsync.when(
          data: (capacities) => Column(
            children: [
              for (var capacity in capacities)
                ServiceCapacityCard(capacity: capacity),
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

        // Resource Utilization
        Text(
          'Resource Utilization',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 16),
        utilizationAsync.when(
          data: (utilizations) => Column(
            children: [
              for (var utilization in utilizations)
                ResourceUtilizationChart(utilization: utilization),
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
        SizedBox(height: 24),

        // Active Assets
        Text(
          'Active Network Assets',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 16),
        assetsAsync.when(
          data: (assets) => _buildAssetsSection(context, assets),
          loading: () => Column(
            children: [
              for (int i = 0; i < 10; i++)
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: ShimmerCard(height: 60),
                ),
            ],
          ),
          error: (error, stack) => _buildErrorCard(context, error),
        ),
      ],
    );
  }

  Widget _buildAssetsSection(
    BuildContext context,
    List<NetworkAssetEntity> assets,
  ) {
    // Group by type
    final ambulances = assets
        .where((a) => a.type == AssetType.ambulance)
        .toList();
    final nurses = assets.where((a) => a.type == AssetType.nurse).toList();
    final caregivers = assets
        .where((a) => a.type == AssetType.caregiver)
        .toList();
    final pharmacies = assets
        .where((a) => a.type == AssetType.pharmacy)
        .toList();
    final labs = assets
        .where((a) => a.type == AssetType.diagnosticLab)
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (ambulances.isNotEmpty) ...[
          _AssetTypeHeader(
            icon: Icons.local_shipping,
            label: 'Ambulances (${ambulances.length})',
            color: AppColors.emergencyRed,
          ),
          for (var asset in ambulances) NetworkAssetCard(asset: asset),
          SizedBox(height: 16),
        ],
        if (nurses.isNotEmpty) ...[
          _AssetTypeHeader(
            icon: Icons.medical_services,
            label: 'Nurses (${nurses.length})',
            color: AppColors.primarySteelBlue,
          ),
          for (var asset in nurses.take(5)) NetworkAssetCard(asset: asset),
          if (nurses.length > 5)
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                '+ ${nurses.length - 5} more nurses',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.primarySteelBlue,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          SizedBox(height: 16),
        ],
        if (caregivers.isNotEmpty) ...[
          _AssetTypeHeader(
            icon: Icons.accessibility_new,
            label: 'Caregivers (${caregivers.length})',
            color: AppColors.info,
          ),
          for (var asset in caregivers.take(5)) NetworkAssetCard(asset: asset),
          if (caregivers.length > 5)
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                '+ ${caregivers.length - 5} more caregivers',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.info,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          SizedBox(height: 16),
        ],
        if (pharmacies.isNotEmpty) ...[
          _AssetTypeHeader(
            icon: Icons.local_pharmacy,
            label: 'Pharmacies (${pharmacies.length})',
            color: AppColors.success,
          ),
          for (var asset in pharmacies) NetworkAssetCard(asset: asset),
        ],
        if (labs.isNotEmpty) ...[
          _AssetTypeHeader(
            icon: Icons.science,
            label: 'Labs (${labs.length})',
            color: AppColors.warning,
          ),
          for (var asset in labs) NetworkAssetCard(asset: asset),
        ],
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
            'Failed to load network data',
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

class _AssetTypeHeader extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _AssetTypeHeader({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(icon, size: 18, color: color),
          SizedBox(width: 8),
          Text(
            label,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
