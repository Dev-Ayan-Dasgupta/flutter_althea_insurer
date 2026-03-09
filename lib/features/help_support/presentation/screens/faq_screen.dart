import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../providers/help_support_provider.dart';
import '../widgets/faq_card.dart';
import '../../domain/entities/faq_entity.dart';

class FAQScreen extends ConsumerStatefulWidget {
  final Map<String, dynamic>? extra;

  const FAQScreen({super.key, this.extra});

  @override
  ConsumerState<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends ConsumerState<FAQScreen> {
  final _searchController = TextEditingController();
  FAQCategory? _selectedCategory;
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();

    // Check if category was passed
    if (widget.extra?['category'] != null) {
      final categoryString = widget.extra!['category'] as String;
      _selectedCategory = _getCategoryFromString(categoryString);
    }

    // Check if search query was passed
    if (widget.extra?['search'] != null) {
      _searchQuery = widget.extra!['search'] as String;
      _searchController.text = _searchQuery;
    }
  }

  FAQCategory? _getCategoryFromString(String category) {
    switch (category.toLowerCase()) {
      case 'general':
        return FAQCategory.general;
      case 'alerts':
        return FAQCategory.alerts;
      case 'fraud':
        return FAQCategory.fraud;
      case 'claims':
        return FAQCategory.claims;
      case 'patients':
        return FAQCategory.patients;
      case 'technical':
        return FAQCategory.technical;
      default:
        return null;
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDesktop = context.isDesktop;

    final faqsAsync = _searchQuery.isNotEmpty
        ? ref.watch(searchFaqsProvider(_searchQuery))
        : _selectedCategory != null
        ? ref.watch(faqsByCategoryProvider(_selectedCategory!))
        : ref.watch(faqsProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Frequently Asked Questions')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(isDesktop ? 24 : 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search FAQs...',
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
            SizedBox(height: 24),

            // Category Filter
            Text(
              'Filter by Category',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _CategoryChip(
                    label: 'All',
                    isSelected: _selectedCategory == null,
                    onTap: () {
                      setState(() {
                        _selectedCategory = null;
                      });
                    },
                  ),
                  SizedBox(width: 8),
                  for (var category in FAQCategory.values)
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: _CategoryChip(
                        label: _getCategoryLabel(category),
                        isSelected: _selectedCategory == category,
                        onTap: () {
                          setState(() {
                            _selectedCategory = category;
                          });
                        },
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 24),

            // FAQs List
            faqsAsync.when(
              data: (List<FAQEntity> faqs) {
                if (faqs.isEmpty) {
                  return _buildEmptyState(context);
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${faqs.length} ${faqs.length == 1 ? 'question' : 'questions'} found',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.brightness == Brightness.dark
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                      ),
                    ),
                    SizedBox(height: 16),
                    for (var faq in faqs) FAQCard(faq: faq),
                  ],
                );
              },
              loading: () => Column(
                children: [
                  for (int i = 0; i < 8; i++)
                    Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: ShimmerCard(height: 120),
                    ),
                ],
              ),
              error: (error, stack) => _buildErrorCard(context, error),
            ),
          ],
        ),
      ),
    );
  }

  String _getCategoryLabel(FAQCategory category) {
    switch (category) {
      case FAQCategory.general:
        return 'General';
      case FAQCategory.alerts:
        return 'Alerts';
      case FAQCategory.fraud:
        return 'Fraud';
      case FAQCategory.claims:
        return 'Claims';
      case FAQCategory.patients:
        return 'Patients';
      case FAQCategory.technical:
        return 'Technical';
    }
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(48),
        child: Column(
          children: [
            Icon(
              Icons.search_off,
              size: 64,
              color: AppColors.secondarySteelGrey,
            ),
            SizedBox(height: 16),
            Text(
              'No FAQs Found',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 8),
            Text(
              'Try adjusting your search or filters',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
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
            'Failed to load FAQs',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.error,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _CategoryChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (_) => onTap(),
      backgroundColor: isSelected
          ? AppColors.primarySteelBlue.withValues(alpha: 0.2)
          : null,
      selectedColor: AppColors.primarySteelBlue.withValues(alpha: 0.2),
      checkmarkColor: AppColors.primarySteelBlue,
      labelStyle: theme.textTheme.bodyMedium?.copyWith(
        color: isSelected ? AppColors.primarySteelBlue : null,
        fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
      ),
    );
  }
}
