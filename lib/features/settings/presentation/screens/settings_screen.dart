import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/theme/theme_provider.dart';
import '../../../../core/utils/app_info_provider.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../providers/settings_provider.dart';
import '../widgets/settings_section.dart';
import '../widgets/preference_tile.dart';
import '../../domain/entities/user_preferences_entity.dart';
import '../../domain/entities/notification_settings_entity.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferencesAsync = ref.watch(userPreferencesProvider);
    final notificationsAsync = ref.watch(notificationSettingsProvider);
    final theme = Theme.of(context);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(userPreferencesProvider);
          ref.invalidate(notificationSettingsProvider);
        },
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
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
                            Icons.settings,
                            color: AppColors.primarySteelBlue,
                            size: 28,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Settings',
                            style: theme.textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Customize your experience',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.brightness == Brightness.dark
                              ? AppColors.darkTextSecondary
                              : AppColors.lightTextSecondary,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.refresh),
                    onPressed: () {
                      ref.invalidate(userPreferencesProvider);
                      ref.invalidate(notificationSettingsProvider);
                    },
                    tooltip: 'Refresh',
                  ),
                ],
              ),
              SizedBox(height: 24),

              // Account Section
              SettingsSection(
                title: 'Account',
                children: [
                  PreferenceTile(
                    icon: Icons.person,
                    title: 'Profile',
                    subtitle: 'View and edit your profile',
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      context.push(RouteNames.profile);
                    },
                  ),
                  PreferenceTile(
                    icon: Icons.lock,
                    title: 'Change Password',
                    subtitle: 'Update your password',
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      _showChangePasswordDialog(context);
                    },
                  ),
                  PreferenceTile(
                    icon: Icons.security,
                    title: 'Two-Factor Authentication',
                    subtitle: 'Add an extra layer of security',
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      _showComingSoonDialog(
                        context,
                        'Two-Factor Authentication',
                      );
                    },
                  ),
                ],
              ),

              // Appearance Section
              preferencesAsync.when(
                data: (UserPreferencesEntity prefs) => SettingsSection(
                  title: 'Appearance',
                  children: [
                    PreferenceTile(
                      icon: Icons.brightness_6,
                      title: 'Theme',
                      subtitle: _getThemeLabel(ref.watch(themeModeProvider)),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {
                        _showThemeDialog(context, ref);
                      },
                    ),
                    PreferenceTile(
                      icon: Icons.palette,
                      title: 'Accent Color',
                      subtitle: 'Blue',
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {
                        _showColorPicker(context);
                      },
                    ),
                    PreferenceTile(
                      icon: Icons.view_compact,
                      title: 'Compact View',
                      subtitle: prefs.compactView
                          ? 'More items on screen'
                          : 'Standard view',
                      trailing: Switch(
                        value: prefs.compactView,
                        onChanged: (value) {
                          _showSnackBar(
                            context,
                            'View preference will be updated',
                          );
                        },
                      ),
                    ),
                  ],
                ),
                loading: () => ShimmerCard(height: 200),
                error: (error, stack) => _buildErrorCard(context, error),
              ),

              // Notifications Section
              notificationsAsync.when(
                data: (NotificationSettingsEntity settings) => SettingsSection(
                  title: 'Notifications',
                  children: [
                    PreferenceTile(
                      icon: Icons.email,
                      title: 'Email Notifications',
                      subtitle: settings.emailNotifications
                          ? 'Enabled'
                          : 'Disabled',
                      trailing: Switch(
                        value: settings.emailNotifications,
                        onChanged: (value) {
                          _showSnackBar(
                            context,
                            'Email notifications will be updated',
                          );
                        },
                      ),
                    ),
                    PreferenceTile(
                      icon: Icons.notifications,
                      title: 'Push Notifications',
                      subtitle: settings.pushNotifications
                          ? 'Enabled'
                          : 'Disabled',
                      trailing: Switch(
                        value: settings.pushNotifications,
                        onChanged: (value) {
                          _showSnackBar(
                            context,
                            'Push notifications will be updated',
                          );
                        },
                      ),
                    ),
                    PreferenceTile(
                      icon: Icons.message,
                      title: 'SMS Notifications',
                      subtitle: settings.smsNotifications
                          ? 'Enabled'
                          : 'Disabled',
                      trailing: Switch(
                        value: settings.smsNotifications,
                        onChanged: (value) {
                          _showSnackBar(
                            context,
                            'SMS notifications will be updated',
                          );
                        },
                      ),
                    ),
                    Divider(height: 1),
                    PreferenceTile(
                      icon: Icons.warning,
                      title: 'Emergency Alerts',
                      subtitle: 'Critical health emergencies',
                      trailing: Switch(
                        value: settings.emergencyAlerts,
                        onChanged: (value) {
                          _showSnackBar(
                            context,
                            'Emergency alerts will be updated',
                          );
                        },
                      ),
                    ),
                    PreferenceTile(
                      icon: Icons.security,
                      title: 'Fraud Alerts',
                      subtitle: 'Suspicious activity detection',
                      trailing: Switch(
                        value: settings.fraudAlerts,
                        onChanged: (value) {
                          _showSnackBar(
                            context,
                            'Fraud alerts will be updated',
                          );
                        },
                      ),
                    ),
                    PreferenceTile(
                      icon: Icons.shield,
                      title: 'Safety Alerts',
                      subtitle: 'Patient safety notifications',
                      trailing: Switch(
                        value: settings.safetyAlerts,
                        onChanged: (value) {
                          _showSnackBar(
                            context,
                            'Safety alerts will be updated',
                          );
                        },
                      ),
                    ),
                    PreferenceTile(
                      icon: Icons.medication,
                      title: 'Medication Alerts',
                      subtitle: 'Adherence notifications',
                      trailing: Switch(
                        value: settings.medicationAlerts,
                        onChanged: (value) {
                          _showSnackBar(
                            context,
                            'Medication alerts will be updated',
                          );
                        },
                      ),
                    ),
                    Divider(height: 1),
                    PreferenceTile(
                      icon: Icons.nightlight,
                      title: 'Quiet Hours',
                      subtitle: settings.quietHoursEnabled
                          ? '${settings.quietHoursStart} - ${settings.quietHoursEnd}'
                          : 'Disabled',
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {
                        _showQuietHoursDialog(context, settings);
                      },
                    ),
                  ],
                ),
                loading: () => ShimmerCard(height: 400),
                error: (error, stack) => _buildErrorCard(context, error),
              ),

              // Data & Privacy Section
              SettingsSection(
                title: 'Data & Privacy',
                children: [
                  PreferenceTile(
                    icon: Icons.download,
                    title: 'Export Data',
                    subtitle: 'Download your data',
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      _showExportDataDialog(context);
                    },
                  ),
                  PreferenceTile(
                    icon: Icons.delete_forever,
                    title: 'Clear Cache',
                    subtitle: 'Free up storage space',
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      _showClearCacheDialog(context);
                    },
                  ),
                  PreferenceTile(
                    icon: Icons.privacy_tip,
                    title: 'Privacy Policy',
                    subtitle: 'View our privacy policy',
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      _showComingSoonDialog(context, 'Privacy Policy');
                    },
                  ),
                  PreferenceTile(
                    icon: Icons.description,
                    title: 'Terms of Service',
                    subtitle: 'View terms and conditions',
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      _showComingSoonDialog(context, 'Terms of Service');
                    },
                  ),
                ],
              ),

              // About Section
              Consumer(
                builder: (context, ref, child) {
                  final versionAsync = ref.watch(appVersionProvider);

                  return SettingsSection(
                    title: 'About',
                    children: [
                      PreferenceTile(
                        icon: Icons.info,
                        title: 'Version',
                        subtitle: versionAsync.when(
                          data: (version) => version,
                          loading: () => 'Loading...',
                          error: (_, __) => 'Unknown',
                        ),
                      ),
                      PreferenceTile(
                        icon: Icons.update,
                        title: 'Check for Updates',
                        subtitle: 'You are on the latest version',
                        trailing: Icon(Icons.chevron_right),
                        onTap: () {
                          _showSnackBar(
                            context,
                            'You are on the latest version',
                          );
                        },
                      ),
                      PreferenceTile(
                        icon: Icons.help,
                        title: 'Help & Support',
                        subtitle: 'Get help with AltheaCare',
                        trailing: Icon(Icons.chevron_right),
                        onTap: () {
                          _showComingSoonDialog(context, 'Help & Support');
                        },
                      ),
                    ],
                  );
                },
              ),

              // Danger Zone
              SettingsSection(
                title: 'Danger Zone',
                children: [
                  PreferenceTile(
                    icon: Icons.logout,
                    title: 'Sign Out',
                    subtitle: 'Sign out of your account',
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      _showSignOutDialog(context);
                    },
                  ),
                ],
              ),
            ],
          ),
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
            'Failed to load settings',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.error,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), behavior: SnackBarBehavior.floating),
    );
  }

  void _showChangePasswordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Change Password'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Current Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'New Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Confirm New Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              _showSnackBar(context, 'Password updated successfully');
            },
            child: Text('Update'),
          ),
        ],
      ),
    );
  }

  String _getThemeLabel(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.light:
        return 'Light';
      case ThemeMode.dark:
        return 'Dark';
      case ThemeMode.system:
        return 'System Default';
    }
  }

  void _showThemeDialog(BuildContext context, WidgetRef ref) {
    final currentMode = ref.read(themeModeProvider);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Choose Theme'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RadioListTile<ThemeMode>(
              title: Text('Light'),
              subtitle: Text('Always use light theme'),
              value: ThemeMode.light,
              groupValue: currentMode,
              onChanged: (value) {
                if (value != null) {
                  ref.read(themeModeProvider.notifier).setThemeMode(value);
                  Navigator.pop(context);
                  _showSnackBar(context, 'Theme changed to Light');
                }
              },
            ),
            RadioListTile<ThemeMode>(
              title: Text('Dark'),
              subtitle: Text('Always use dark theme'),
              value: ThemeMode.dark,
              groupValue: currentMode,
              onChanged: (value) {
                if (value != null) {
                  ref.read(themeModeProvider.notifier).setThemeMode(value);
                  Navigator.pop(context);
                  _showSnackBar(context, 'Theme changed to Dark');
                }
              },
            ),
            RadioListTile<ThemeMode>(
              title: Text('System Default'),
              subtitle: Text('Follow system settings'),
              value: ThemeMode.system,
              groupValue: currentMode,
              onChanged: (value) {
                if (value != null) {
                  ref.read(themeModeProvider.notifier).setThemeMode(value);
                  Navigator.pop(context);
                  _showSnackBar(context, 'Theme changed to System Default');
                }
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
        ],
      ),
    );
  }

  void _showColorPicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Choose Accent Color'),
        content: Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            _ColorOption(color: Colors.blue, label: 'Blue'),
            _ColorOption(color: Colors.red, label: 'Red'),
            _ColorOption(color: Colors.green, label: 'Green'),
            _ColorOption(color: Colors.purple, label: 'Purple'),
            _ColorOption(color: Colors.orange, label: 'Orange'),
            _ColorOption(color: Colors.teal, label: 'Teal'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
        ],
      ),
    );
  }

  void _showQuietHoursDialog(
    BuildContext context,
    NotificationSettingsEntity settings,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Quiet Hours'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Set quiet hours when notifications will be muted'),
            SizedBox(height: 16),
            SwitchListTile(
              title: Text('Enable Quiet Hours'),
              value: settings.quietHoursEnabled,
              onChanged: (value) {},
            ),
            SizedBox(height: 8),
            ListTile(
              title: Text('Start Time'),
              trailing: Text(settings.quietHoursStart ?? '22:00'),
              onTap: () {},
            ),
            ListTile(
              title: Text('End Time'),
              trailing: Text(settings.quietHoursEnd ?? '07:00'),
              onTap: () {},
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              _showSnackBar(context, 'Quiet hours updated');
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }

  void _showExportDataDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Export Data'),
        content: Text(
          'Your data will be exported as a JSON file. This may take a few moments.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              _showSnackBar(context, 'Data export started');
            },
            child: Text('Export'),
          ),
        ],
      ),
    );
  }

  void _showClearCacheDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Clear Cache'),
        content: Text(
          'This will clear all cached data. You may need to reload some content.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              _showSnackBar(context, 'Cache cleared successfully');
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.error),
            child: Text('Clear'),
          ),
        ],
      ),
    );
  }

  void _showSignOutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Sign Out'),
        content: Text('Are you sure you want to sign out?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              context.go(RouteNames.login);
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.error),
            child: Text('Sign Out'),
          ),
        ],
      ),
    );
  }

  void _showComingSoonDialog(BuildContext context, String feature) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Coming Soon'),
        content: Text('$feature will be available in a future update.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}

class _ColorOption extends StatelessWidget {
  final Color color;
  final String label;

  const _ColorOption({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Accent color changed to $label'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
      child: Column(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
          SizedBox(height: 4),
          Text(label, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
