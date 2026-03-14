import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../providers/insuree_provider.dart';
import '../widgets/insuree_card.dart';
import '../widgets/bulk_action_bar.dart';
import '../../domain/entities/insuree_entity.dart';

class InsureeManagementScreen extends ConsumerStatefulWidget {
  const InsureeManagementScreen({super.key});

  @override
  ConsumerState<InsureeManagementScreen> createState() =>
      _InsureeManagementScreenState();
}

class _InsureeManagementScreenState
    extends ConsumerState<InsureeManagementScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final selectedInsurees = ref.watch(selectedInsureesProvider);
    final countsAsync = ref.watch(insureeCountProvider);

    return Scaffold(
      body: Column(
        children: [
          // Header with Stats
          Container(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.people,
                      color: AppColors.primarySteelBlue,
                      size: 28,
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Insuree Management',
                            style: theme.textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Manage subscriptions and payments',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: theme.brightness == Brightness.dark
                                  ? AppColors.darkTextSecondary
                                  : AppColors.lightTextSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        context.push(RouteNames.addInsuree);
                      },
                      icon: Icon(Icons.add),
                      label: Text('Add Insuree'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),

                // Stats Cards
                countsAsync.when(
                  data: (counts) => Row(
                    children: [
                      Expanded(
                        child: _buildStatCard(
                          context,
                          'Total',
                          counts['total']!,
                          Icons.people,
                          AppColors.primarySteelBlue,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: _buildStatCard(
                          context,
                          'Active',
                          counts['active']!,
                          Icons.check_circle,
                          AppColors.success,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: _buildStatCard(
                          context,
                          'Expiring',
                          counts['expiring']!,
                          Icons.warning_amber,
                          AppColors.warning,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: _buildStatCard(
                          context,
                          'Pending',
                          counts['pending']!,
                          Icons.payment,
                          AppColors.error,
                        ),
                      ),
                    ],
                  ),
                  loading: () => Row(
                    children: [
                      for (int i = 0; i < 4; i++) ...[
                        Expanded(child: ShimmerCard(height: 80)),
                        if (i < 3) SizedBox(width: 12),
                      ],
                    ],
                  ),
                  error: (_, _) => SizedBox.shrink(),
                ),
                SizedBox(height: 16),

                // Search Bar
                TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search by name, policy number, or email...',
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: _searchController.text.isNotEmpty
                        ? IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: () {
                              setState(() {
                                _searchController.clear();
                                _searchQuery = '';
                              });
                            },
                          )
                        : null,
                  ),
                  onChanged: (value) {
                    setState(() {
                      _searchQuery = value;
                    });
                  },
                ),
              ],
            ),
          ),

          // Tabs
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Active'),
              Tab(text: 'Expiring'),
              Tab(text: 'Pending Payment'),
            ],
          ),

          // Tab Content
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildInsureeList(ref.watch(insureesProvider)),
                _buildInsureeList(ref.watch(activeInsureesProvider)),
                _buildInsureeList(ref.watch(expiringInsureesProvider)),
                _buildInsureeList(ref.watch(pendingPaymentInsureesProvider)),
              ],
            ),
          ),

          // Bulk Action Bar
          if (selectedInsurees.isNotEmpty)
            BulkActionBar(
              selectedCount: selectedInsurees.length,
              onRenewAll: () => _handleBulkRenew(selectedInsurees),
              onRemoveAll: () => _handleBulkRemove(selectedInsurees),
              onClearSelection: () {
                ref.read(selectedInsureesProvider.notifier).clearSelection();
              },
            ),
        ],
      ),
      floatingActionButton: selectedInsurees.isEmpty
          ? FloatingActionButton.extended(
              onPressed: () {
                context.push(RouteNames.paymentHistory);
              },
              icon: Icon(Icons.history),
              label: Text('Payment History'),
            )
          : null,
    );
  }

  Widget _buildStatCard(
    BuildContext context,
    String label,
    int count,
    IconData icon,
    Color color,
  ) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
        ),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 24),
          SizedBox(height: 8),
          Text(
            count.toString(),
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
          SizedBox(height: 4),
          Text(label, style: theme.textTheme.bodySmall),
        ],
      ),
    );
  }

  Widget _buildInsureeList(AsyncValue<List<InsureeEntity>> insureesAsync) {
    return insureesAsync.when(
      data: (insurees) {
        // Filter by search query
        final filteredInsurees = _searchQuery.isEmpty
            ? insurees
            : insurees.where((i) {
                final query = _searchQuery.toLowerCase();
                return i.fullName.toLowerCase().contains(query) ||
                    i.policyNumber.toLowerCase().contains(query) ||
                    i.email.toLowerCase().contains(query);
              }).toList();

        if (filteredInsurees.isEmpty) {
          return _buildEmptyState();
        }

        return RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(insureesProvider);
          },
          child: ListView.builder(
            padding: EdgeInsets.all(24),
            itemCount: filteredInsurees.length,
            itemBuilder: (context, index) {
              final insuree = filteredInsurees[index];
              final isSelected = ref
                  .read(selectedInsureesProvider.notifier)
                  .isSelected(insuree.id);

              return InsureeCard(
                insuree: insuree,
                isSelected: isSelected,
                onTap: () {
                  if (ref.read(selectedInsureesProvider).isNotEmpty) {
                    ref
                        .read(selectedInsureesProvider.notifier)
                        .toggleSelection(insuree.id);
                  } else {
                    context.push(RouteNames.insureeDetails, extra: insuree);
                  }
                },
                onLongPress: () {
                  ref
                      .read(selectedInsureesProvider.notifier)
                      .toggleSelection(insuree.id);
                },
                onRenew: () => _handleRenewSingle(insuree),
              );
            },
          ),
        );
      },
      loading: () => ListView.builder(
        padding: EdgeInsets.all(24),
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(bottom: 12),
          child: ShimmerCard(height: 200),
        ),
      ),
      error: (error, stack) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64, color: AppColors.error),
            SizedBox(height: 16),
            Text('Failed to load insurees'),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search_off, size: 64, color: AppColors.secondarySteelGrey),
          SizedBox(height: 16),
          Text(
            _searchQuery.isEmpty ? 'No insurees found' : 'No results found',
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 8),
          Text(
            _searchQuery.isEmpty
                ? 'Add your first insuree to get started'
                : 'Try adjusting your search',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  void _handleRenewSingle(InsureeEntity insuree) {
    context.push(
      RouteNames.payment,
      extra: {
        'insureeIds': [insuree.id],
      },
    );
  }

  void _handleBulkRenew(List<String> insureeIds) {
    context.push(RouteNames.payment, extra: {'insureeIds': insureeIds});
  }

  void _handleBulkRemove(List<String> insureeIds) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Remove Insurees'),
        content: Text(
          'Are you sure you want to remove ${insureeIds.length} ${insureeIds.length == 1 ? 'insuree' : 'insurees'}? This action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              _performBulkRemove(insureeIds);
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.error),
            child: Text('Remove'),
          ),
        ],
      ),
    );
  }

  Future<void> _performBulkRemove(List<String> insureeIds) async {
    try {
      final datasource = ref.read(insureeDatasourceProvider);
      await datasource.bulkRemoveInsurees(
        insureeIds,
        'Bulk removal by insurer',
      );

      ref.read(selectedInsureesProvider.notifier).clearSelection();
      ref.invalidate(insureesProvider);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              '${insureeIds.length} ${insureeIds.length == 1 ? 'insuree' : 'insurees'} removed successfully',
            ),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to remove insurees'),
            backgroundColor: AppColors.error,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }
}
