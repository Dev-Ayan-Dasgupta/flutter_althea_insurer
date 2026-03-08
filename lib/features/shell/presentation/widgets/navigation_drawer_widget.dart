import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../providers/navigation_provider.dart';
import 'user_avatar.dart';

class NavigationDrawerWidget extends ConsumerWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(navigationIndexProvider);
    final items = ref.watch(navigationItemsProvider);
    final user = ref.watch(currentUserProvider);
    final theme = Theme.of(context);

    return Drawer(
      child: Column(
        children: [
          // User Header
          Container(
            padding: EdgeInsets.fromLTRB(20, 48, 20, 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppColors.primarySteelBlue, AppColors.primaryDark],
              ),
            ),
            child: Column(
              children: [
                UserAvatar(size: 64, showOnlineIndicator: true),
                SizedBox(height: 12),
                Text(
                  user?.name ?? 'User Name',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  user?.email ?? 'user@example.com',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Colors.white.withValues(alpha: 0.8),
                  ),
                ),
                SizedBox(height: 4),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    user?.role ?? 'Role',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Navigation Items
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                final isSelected = selectedIndex == index;

                return ListTile(
                  leading: Icon(
                    isSelected ? item.selectedIcon : item.icon,
                    color: isSelected ? AppColors.primarySteelBlue : null,
                  ),
                  title: Text(
                    item.label,
                    style: TextStyle(
                      fontWeight: isSelected
                          ? FontWeight.w600
                          : FontWeight.w400,
                      color: isSelected ? AppColors.primarySteelBlue : null,
                    ),
                  ),
                  selected: isSelected,
                  selectedTileColor: AppColors.primarySteelBlue.withValues(
                    alpha: 0.1,
                  ),
                  onTap: () {
                    ref.read(navigationIndexProvider.notifier).setIndex(index);
                    context.go(item.route);
                    ref.read(drawerStateProvider.notifier).close();
                  },
                );
              },
            ),
          ),

          // Bottom Actions
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text('Settings'),
            onTap: () {
              context.push('/settings');
              ref.read(drawerStateProvider.notifier).close();
            },
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text('Help & Support'),
            onTap: () {
              context.push('/help');
              ref.read(drawerStateProvider.notifier).close();
            },
          ),
          ListTile(
            leading: Icon(Icons.logout, color: AppColors.error),
            title: Text('Logout', style: TextStyle(color: AppColors.error)),
            onTap: () {
              ref.read(drawerStateProvider.notifier).close();
              ref.read(authProvider.notifier).logout();
            },
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
