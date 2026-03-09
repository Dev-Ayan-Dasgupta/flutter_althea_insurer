import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../constants/app_colors.dart';
import '../router/route_names.dart';
import '../theme/theme_provider.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final currentRoute = GoRouterState.of(context).uri.toString();

    return Drawer(
      backgroundColor: isDark
          ? AppColors.darkBackground
          : AppColors.lightBackground,
      child: Column(
        children: [
          // Header
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(24, 48, 24, 24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.primarySteelBlue,
                  AppColors.primarySteelBlue.withValues(alpha: 0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.medical_services,
                    color: AppColors.primarySteelBlue,
                    size: 32,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'AltheaCare',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Insurer Portal',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.white.withValues(alpha: 0.9),
                  ),
                ),
              ],
            ),
          ),

          // Navigation Items
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 8),
              children: [
                // Overview Section
                _SectionHeader(title: 'OVERVIEW'),
                _DrawerTile(
                  icon: Icons.dashboard,
                  label: 'Dashboard',
                  route: RouteNames.dashboard,
                  currentRoute: currentRoute,
                  onTap: () {
                    context.go(RouteNames.dashboard);
                    Navigator.pop(context);
                  },
                ),

                // Operations Section
                _SectionHeader(title: 'OPERATIONS'),
                _DrawerTile(
                  icon: Icons.event_available,
                  label: 'Care Events',
                  route: RouteNames.careEvents,
                  currentRoute: currentRoute,
                  onTap: () {
                    context.go(RouteNames.careEvents);
                    Navigator.pop(context);
                  },
                ),
                _DrawerTile(
                  icon: Icons.emergency,
                  label: 'Emergency Triage',
                  route: RouteNames.emergencyTriage,
                  currentRoute: currentRoute,
                  onTap: () {
                    context.go(RouteNames.emergencyTriage);
                    Navigator.pop(context);
                  },
                ),
                _DrawerTile(
                  icon: Icons.hub,
                  label: 'Network Readiness',
                  route: RouteNames.networkReadiness,
                  currentRoute: currentRoute,
                  onTap: () {
                    context.go(RouteNames.networkReadiness);
                    Navigator.pop(context);
                  },
                ),

                // Risk & Analytics Section
                _SectionHeader(title: 'RISK & ANALYTICS'),
                _DrawerTile(
                  icon: Icons.psychology,
                  label: 'Risk Engine',
                  route: RouteNames.riskEngine,
                  currentRoute: currentRoute,
                  onTap: () {
                    context.go(RouteNames.riskEngine);
                    Navigator.pop(context);
                  },
                ),
                _DrawerTile(
                  icon: Icons.shield,
                  label: 'Claims Prevention',
                  route: RouteNames.claimsPrevention,
                  currentRoute: currentRoute,
                  onTap: () {
                    context.go(RouteNames.claimsPrevention);
                    Navigator.pop(context);
                  },
                ),
                _DrawerTile(
                  icon: Icons.bar_chart,
                  label: 'Population Health',
                  route: RouteNames.populationHealth,
                  currentRoute: currentRoute,
                  onTap: () {
                    context.go(RouteNames.populationHealth);
                    Navigator.pop(context);
                  },
                ),

                // Safety & Care Section
                _SectionHeader(title: 'SAFETY & SPECIAL CARE'),
                _DrawerTile(
                  icon: Icons.security,
                  label: 'Safety Monitor',
                  route: RouteNames.safetyMonitor,
                  currentRoute: currentRoute,
                  onTap: () {
                    context.go(RouteNames.safetyMonitor);
                    Navigator.pop(context);
                  },
                  badge: 'NEW',
                  badgeColor: AppColors.success,
                ),
              ],
            ),
          ),

          // Footer
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
                ),
              ),
            ),
            child: Column(
              children: [
                Consumer(
                  builder: (context, ref, child) {
                    final themeMode = ref.watch(themeModeProvider);
                    final isDarkMode = themeMode == ThemeMode.dark;

                    return ListTile(
                      leading: Icon(
                        isDarkMode ? Icons.light_mode : Icons.dark_mode,
                        color: isDark
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                      ),
                      title: Text(
                        isDarkMode ? 'Light Mode' : 'Dark Mode',
                        style: theme.textTheme.bodyMedium,
                      ),
                      onTap: () {
                        ref
                            .read(themeModeProvider.notifier)
                            .toggleTheme(!isDarkMode);
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: isDark
                        ? AppColors.darkTextSecondary
                        : AppColors.lightTextSecondary,
                  ),
                  title: Text('Settings', style: theme.textTheme.bodyMedium),
                  onTap: () {
                    context.go(RouteNames.settings);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.help_outline,
                    color: isDark
                        ? AppColors.darkTextSecondary
                        : AppColors.lightTextSecondary,
                  ),
                  title: Text(
                    'Help & Support',
                    style: theme.textTheme.bodyMedium,
                  ),
                  onTap: () {
                    // TODO: Navigate to help
                    Navigator.pop(context);
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

class _SectionHeader extends StatelessWidget {
  final String title;

  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Padding(
      padding: EdgeInsets.fromLTRB(24, 16, 24, 8),
      child: Text(
        title,
        style: theme.textTheme.labelSmall?.copyWith(
          color: isDark
              ? AppColors.darkTextTertiary
              : AppColors.lightTextTertiary,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}

class _DrawerTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String route;
  final String currentRoute;
  final VoidCallback onTap;
  final String? badge;
  final Color? badgeColor;

  const _DrawerTile({
    required this.icon,
    required this.label,
    required this.route,
    required this.currentRoute,
    required this.onTap,
    this.badge,
    this.badgeColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final isSelected = currentRoute == route;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.primarySteelBlue.withValues(alpha: 0.1)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isSelected
              ? AppColors.primarySteelBlue
              : (isDark
                    ? AppColors.darkTextSecondary
                    : AppColors.lightTextSecondary),
        ),
        title: Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: isSelected
                      ? AppColors.primarySteelBlue
                      : (isDark
                            ? AppColors.darkTextPrimary
                            : AppColors.lightTextPrimary),
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                ),
              ),
            ),
            if (badge != null)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: badgeColor ?? AppColors.primarySteelBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  badge!,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                  ),
                ),
              ),
          ],
        ),
        onTap: onTap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
