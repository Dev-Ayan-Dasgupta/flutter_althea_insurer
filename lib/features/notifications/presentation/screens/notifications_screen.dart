import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../providers/notifications_provider.dart';
import '../widgets/notification_card.dart';
import '../../domain/entities/notification_entity.dart';

class NotificationsScreen extends ConsumerStatefulWidget {
  const NotificationsScreen({super.key});

  @override
  ConsumerState<NotificationsScreen> createState() =>
      _NotificationsScreenState();
}

class _NotificationsScreenState extends ConsumerState<NotificationsScreen> {
  NotificationStatus? _selectedStatus;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final notificationsAsync = ref.watch(
      filteredNotificationsProvider(_selectedStatus),
    );
    final unreadCount = ref.watch(unreadNotificationsCountProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              context.push(RouteNames.notificationPreferences);
            },
            tooltip: 'Notification Settings',
          ),
          PopupMenuButton<String>(
            icon: Icon(Icons.more_vert),
            onSelected: (value) {
              if (value == 'mark_all_read') {
                _markAllAsRead();
              } else if (value == 'clear_all') {
                _clearAll();
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'mark_all_read',
                child: Row(
                  children: [
                    Icon(Icons.done_all, size: 20),
                    SizedBox(width: 8),
                    Text('Mark all as read'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'clear_all',
                child: Row(
                  children: [
                    Icon(Icons.clear_all, size: 20),
                    SizedBox(width: 8),
                    Text('Clear all'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          // Filter Tabs
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _FilterChip(
                    label: 'All',
                    isSelected: _selectedStatus == null,
                    onTap: () {
                      setState(() {
                        _selectedStatus = null;
                      });
                    },
                  ),
                  SizedBox(width: 8),
                  unreadCount.when(
                    data: (count) => _FilterChip(
                      label: 'Unread',
                      count: count,
                      isSelected: _selectedStatus == NotificationStatus.unread,
                      onTap: () {
                        setState(() {
                          _selectedStatus = NotificationStatus.unread;
                        });
                      },
                    ),
                    loading: () => _FilterChip(
                      label: 'Unread',
                      isSelected: _selectedStatus == NotificationStatus.unread,
                      onTap: () {
                        setState(() {
                          _selectedStatus = NotificationStatus.unread;
                        });
                      },
                    ),
                    error: (_, __) => SizedBox.shrink(),
                  ),
                  SizedBox(width: 8),
                  _FilterChip(
                    label: 'Read',
                    isSelected: _selectedStatus == NotificationStatus.read,
                    onTap: () {
                      setState(() {
                        _selectedStatus = NotificationStatus.read;
                      });
                    },
                  ),
                  SizedBox(width: 8),
                  _FilterChip(
                    label: 'Archived',
                    isSelected: _selectedStatus == NotificationStatus.archived,
                    onTap: () {
                      setState(() {
                        _selectedStatus = NotificationStatus.archived;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),

          // Notifications List
          Expanded(
            child: notificationsAsync.when(
              data: (List<NotificationEntity> notifications) {
                if (notifications.isEmpty) {
                  return _buildEmptyState(context);
                }

                return RefreshIndicator(
                  onRefresh: () async {
                    ref.invalidate(notificationsProvider);
                  },
                  child: ListView.builder(
                    padding: EdgeInsets.all(16),
                    itemCount: notifications.length,
                    itemBuilder: (context, index) {
                      final notification = notifications[index];
                      return NotificationCard(
                        notification: notification,
                        onDismiss: () {
                          _dismissNotification(notification.id);
                        },
                      );
                    },
                  ),
                );
              },
              loading: () => ListView.builder(
                padding: EdgeInsets.all(16),
                itemCount: 8,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: ShimmerCard(height: 100),
                ),
              ),
              error: (error, stack) => _buildErrorCard(context, error),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.notifications_none,
              size: 64,
              color: AppColors.secondarySteelGrey,
            ),
            SizedBox(height: 16),
            Text(
              'No Notifications',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 8),
            Text(
              _selectedStatus == NotificationStatus.unread
                  ? 'You\'re all caught up!'
                  : 'No notifications to show',
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
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.error.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.error.withValues(alpha: 0.3)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.error_outline, color: AppColors.error, size: 48),
          SizedBox(height: 16),
          Text(
            'Failed to load notifications',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.error,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  void _markAllAsRead() async {
    final datasource = ref.read(notificationsDatasourceProvider);
    await datasource.markAllAsRead();
    ref.invalidate(notificationsProvider);

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('All notifications marked as read'),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  void _clearAll() async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Clear All Notifications'),
        content: Text('Are you sure you want to clear all notifications?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.error),
            child: Text('Clear'),
          ),
        ],
      ),
    );

    if (result == true) {
      final datasource = ref.read(notificationsDatasourceProvider);
      await datasource.clearAllNotifications();
      ref.invalidate(notificationsProvider);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('All notifications cleared'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }

  void _dismissNotification(String id) async {
    final datasource = ref.read(notificationsDatasourceProvider);
    await datasource.markAsRead(id);
    ref.invalidate(notificationsProvider);
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final int? count;
  final bool isSelected;
  final VoidCallback onTap;

  const _FilterChip({
    required this.label,
    this.count,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FilterChip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label),
          if (count != null && count! > 0) ...[
            SizedBox(width: 6),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: isSelected
                    ? Colors.white
                    : AppColors.primarySteelBlue.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                count.toString(),
                style: theme.textTheme.bodySmall?.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: isSelected ? AppColors.primarySteelBlue : null,
                ),
              ),
            ),
          ],
        ],
      ),
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
