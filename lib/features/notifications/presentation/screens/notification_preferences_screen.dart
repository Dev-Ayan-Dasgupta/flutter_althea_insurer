import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../../../settings/presentation/widgets/settings_section.dart';
import '../providers/notifications_provider.dart';
import '../widgets/notification_toggle.dart';
import '../../domain/entities/notification_preference_entity.dart';

class NotificationPreferencesScreen extends ConsumerWidget {
  const NotificationPreferencesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferencesAsync = ref.watch(notificationPreferencesProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text('Notification Preferences')),
      body: preferencesAsync.when(
        data: (NotificationPreferenceEntity prefs) => SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Text(
                'Customize Your Notifications',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Choose how you want to receive alerts and updates',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.brightness == Brightness.dark
                      ? AppColors.darkTextSecondary
                      : AppColors.lightTextSecondary,
                ),
              ),
              SizedBox(height: 24),

              // Notification Channels
              SettingsSection(
                title: 'Notification Channels',
                children: [
                  NotificationToggle(
                    icon: Icons.email,
                    title: 'Email Notifications',
                    subtitle: prefs.emailEnabled
                        ? 'Receive alerts via email'
                        : 'Disabled',
                    value: prefs.emailEnabled,
                    onChanged: (value) {
                      _updatePreference(context, ref, 'emailEnabled', value);
                    },
                    color: AppColors.info,
                  ),
                  NotificationToggle(
                    icon: Icons.notifications,
                    title: 'Push Notifications',
                    subtitle: prefs.pushEnabled
                        ? 'Receive push notifications'
                        : 'Disabled',
                    value: prefs.pushEnabled,
                    onChanged: (value) {
                      _updatePreference(context, ref, 'pushEnabled', value);
                    },
                    color: AppColors.primarySteelBlue,
                  ),
                  NotificationToggle(
                    icon: Icons.message,
                    title: 'SMS Notifications',
                    subtitle: prefs.smsEnabled
                        ? 'Receive SMS alerts'
                        : 'Disabled',
                    value: prefs.smsEnabled,
                    onChanged: (value) {
                      _updatePreference(context, ref, 'smsEnabled', value);
                    },
                    color: AppColors.success,
                  ),
                  NotificationToggle(
                    icon: Icons.notifications_active,
                    title: 'In-App Notifications',
                    subtitle: prefs.inAppEnabled
                        ? 'Show in-app notifications'
                        : 'Disabled',
                    value: prefs.inAppEnabled,
                    onChanged: (value) {
                      _updatePreference(context, ref, 'inAppEnabled', value);
                    },
                    color: AppColors.warning,
                  ),
                ],
              ),

              // Alert Types
              SettingsSection(
                title: 'Alert Types',
                children: [
                  NotificationToggle(
                    icon: Icons.emergency,
                    title: 'Emergency Alerts',
                    subtitle: 'Critical health emergencies',
                    value: prefs.emergencyAlerts,
                    onChanged: (value) {
                      _updatePreference(context, ref, 'emergencyAlerts', value);
                    },
                    color: AppColors.emergencyRed,
                  ),
                  NotificationToggle(
                    icon: Icons.security,
                    title: 'Fraud Alerts',
                    subtitle: 'Suspicious activity detection',
                    value: prefs.fraudAlerts,
                    onChanged: (value) {
                      _updatePreference(context, ref, 'fraudAlerts', value);
                    },
                    color: AppColors.error,
                  ),
                  NotificationToggle(
                    icon: Icons.shield,
                    title: 'Safety Alerts',
                    subtitle: 'Patient safety notifications',
                    value: prefs.safetyAlerts,
                    onChanged: (value) {
                      _updatePreference(context, ref, 'safetyAlerts', value);
                    },
                    color: AppColors.warning,
                  ),
                  NotificationToggle(
                    icon: Icons.medication,
                    title: 'Medication Alerts',
                    subtitle: 'Adherence notifications',
                    value: prefs.medicationAlerts,
                    onChanged: (value) {
                      _updatePreference(
                        context,
                        ref,
                        'medicationAlerts',
                        value,
                      );
                    },
                    color: AppColors.info,
                  ),
                  NotificationToggle(
                    icon: Icons.trending_up,
                    title: 'Risk Alerts',
                    subtitle: 'Risk escalation notifications',
                    value: prefs.riskAlerts,
                    onChanged: (value) {
                      _updatePreference(context, ref, 'riskAlerts', value);
                    },
                    color: AppColors.primarySteelBlue,
                  ),
                  NotificationToggle(
                    icon: Icons.receipt,
                    title: 'Claims Alerts',
                    subtitle: 'Claim verification updates',
                    value: prefs.claimsAlerts,
                    onChanged: (value) {
                      _updatePreference(context, ref, 'claimsAlerts', value);
                    },
                    color: AppColors.success,
                  ),
                  NotificationToggle(
                    icon: Icons.network_check,
                    title: 'Network Alerts',
                    subtitle: 'Provider network updates',
                    value: prefs.networkAlerts,
                    onChanged: (value) {
                      _updatePreference(context, ref, 'networkAlerts', value);
                    },
                    color: AppColors.warning,
                  ),
                  NotificationToggle(
                    icon: Icons.settings,
                    title: 'System Alerts',
                    subtitle: 'Platform updates and maintenance',
                    value: prefs.systemAlerts,
                    onChanged: (value) {
                      _updatePreference(context, ref, 'systemAlerts', value);
                    },
                    color: AppColors.secondarySteelGrey,
                  ),
                ],
              ),

              // Summaries
              SettingsSection(
                title: 'Summary Reports',
                children: [
                  NotificationToggle(
                    icon: Icons.today,
                    title: 'Daily Summary',
                    subtitle: 'Receive daily activity summary',
                    value: prefs.dailySummary,
                    onChanged: (value) {
                      _updatePreference(context, ref, 'dailySummary', value);
                    },
                  ),
                  NotificationToggle(
                    icon: Icons.date_range,
                    title: 'Weekly Summary',
                    subtitle: 'Receive weekly activity summary',
                    value: prefs.weeklySummary,
                    onChanged: (value) {
                      _updatePreference(context, ref, 'weeklySummary', value);
                    },
                  ),
                  NotificationToggle(
                    icon: Icons.calendar_month,
                    title: 'Monthly Summary',
                    subtitle: 'Receive monthly activity summary',
                    value: prefs.monthlySummary,
                    onChanged: (value) {
                      _updatePreference(context, ref, 'monthlySummary', value);
                    },
                  ),
                ],
              ),

              // Advanced Settings
              SettingsSection(
                title: 'Advanced Settings',
                children: [
                  NotificationToggle(
                    icon: Icons.nightlight,
                    title: 'Quiet Hours',
                    subtitle: prefs.quietHoursEnabled
                        ? '${prefs.quietHoursStart} - ${prefs.quietHoursEnd}'
                        : 'Disabled',
                    value: prefs.quietHoursEnabled,
                    onChanged: (value) {
                      _updatePreference(
                        context,
                        ref,
                        'quietHoursEnabled',
                        value,
                      );
                    },
                  ),
                  NotificationToggle(
                    icon: Icons.volume_up,
                    title: 'Sound',
                    subtitle: 'Play sound for notifications',
                    value: prefs.soundEnabled,
                    onChanged: (value) {
                      _updatePreference(context, ref, 'soundEnabled', value);
                    },
                  ),
                  NotificationToggle(
                    icon: Icons.vibration,
                    title: 'Vibration',
                    subtitle: 'Vibrate for notifications',
                    value: prefs.vibrationEnabled,
                    onChanged: (value) {
                      _updatePreference(
                        context,
                        ref,
                        'vibrationEnabled',
                        value,
                      );
                    },
                  ),
                  NotificationToggle(
                    icon: Icons.lightbulb,
                    title: 'LED Indicator',
                    subtitle: 'Show LED light for notifications',
                    value: prefs.ledEnabled,
                    onChanged: (value) {
                      _updatePreference(context, ref, 'ledEnabled', value);
                    },
                  ),
                ],
              ),

              // Info Card
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.info.withValues(alpha: 0.05),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: AppColors.info.withValues(alpha: 0.2),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.info_outline, color: AppColors.info, size: 20),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Emergency alerts will always come through, even during quiet hours.',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppColors.info,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        loading: () => ListView(
          padding: EdgeInsets.all(24),
          children: [
            for (int i = 0; i < 5; i++) ...[
              ShimmerCard(height: 300),
              SizedBox(height: 16),
            ],
          ],
        ),
        error: (error, stack) =>
            Center(child: Text('Failed to load preferences')),
      ),
    );
  }

  void _updatePreference(
    BuildContext context,
    WidgetRef ref,
    String key,
    bool value,
  ) {
    // Here you would update the preference via datasource
    // For now, just show a snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Preference updated'),
        behavior: SnackBarBehavior.floating,
      ),
    );

    // Invalidate to refresh
    ref.invalidate(notificationPreferencesProvider);
  }
}
