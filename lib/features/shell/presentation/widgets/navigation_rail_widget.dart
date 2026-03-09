import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/models/navigation_item.dart';
import '../providers/navigation_provider.dart';

class NavigationRailWidget extends ConsumerWidget {
  const NavigationRailWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(navigationIndexProvider);
    final items = ref.watch(navigationItemsProvider);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      width: 280,
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        border: Border(
          right: BorderSide(
            color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          // Logo/Brand
          Container(
            height: 64,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColors.primarySteelBlue.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.business_center,
                    color: AppColors.primarySteelBlue,
                    size: 24,
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppConstants.appName,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'AltheaCare',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: isDark
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(height: 1),

          // Navigation Items
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                final isSelected = selectedIndex == index;

                return _NavItem(
                  item: item,
                  isSelected: isSelected,
                  onTap: () {
                    ref.read(navigationIndexProvider.notifier).setIndex(index);
                    context.go(item.route);
                  },
                );
              },
            ),
          ),

          // Bottom Actions
          Divider(height: 1),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                _NavItem(
                  item: NavigationItem(
                    id: 'settings',
                    label: 'Settings',
                    icon: Icons.settings_outlined,
                    selectedIcon: Icons.settings,
                    route: '/settings',
                  ),
                  isSelected: false,
                  onTap: () {
                    context.push('/settings');
                  },
                ),
                SizedBox(height: 4),
                _NavItem(
                  item: NavigationItem(
                    id: 'help',
                    label: 'Help & Support',
                    icon: Icons.help_outline,
                    selectedIcon: Icons.help,
                    route: '/help-support',
                  ),
                  isSelected: false,
                  onTap: () {
                    context.push('/help-support');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatefulWidget {
  final NavigationItem item;
  final bool isSelected;
  final VoidCallback onTap;

  const _NavItem({
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<_NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<_NavItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: AppConstants.shortAnimation,
        margin: EdgeInsets.symmetric(vertical: 2),
        decoration: BoxDecoration(
          color: widget.isSelected
              ? AppColors.primarySteelBlue.withValues(alpha: 0.1)
              : _isHovered
              ? (isDark
                    ? AppColors.darkSurfaceVariant
                    : AppColors.lightSurfaceVariant)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: widget.onTap,
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  Icon(
                    widget.isSelected
                        ? widget.item.selectedIcon
                        : widget.item.icon,
                    size: 20,
                    color: widget.isSelected
                        ? AppColors.primarySteelBlue
                        : (isDark
                              ? AppColors.darkTextSecondary
                              : AppColors.lightTextSecondary),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      widget.item.label,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: widget.isSelected
                            ? FontWeight.w600
                            : FontWeight.w400,
                        color: widget.isSelected
                            ? AppColors.primarySteelBlue
                            : (isDark
                                  ? AppColors.darkTextPrimary
                                  : AppColors.lightTextPrimary),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
