import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/notifications_datasource.dart';
import '../../domain/entities/notification_preference_entity.dart';
import '../../domain/entities/notification_entity.dart';

part 'notifications_provider.g.dart';

// Datasource Provider
@Riverpod(keepAlive: true)
NotificationsDatasource notificationsDatasource(Ref ref) {
  return NotificationsDatasource();
}

// Notification Preferences Provider
@riverpod
Future<NotificationPreferenceEntity> notificationPreferences(Ref ref) async {
  final datasource = ref.watch(notificationsDatasourceProvider);
  final model = await datasource.fetchNotificationPreferences();
  return model.toEntity();
}

// Notifications Provider
@riverpod
Future<List<NotificationEntity>> notifications(Ref ref) async {
  final datasource = ref.watch(notificationsDatasourceProvider);
  final models = await datasource.fetchNotifications();
  return models.map((model) => model.toEntity()).toList();
}

// Unread Notifications Count Provider
@riverpod
Future<int> unreadNotificationsCount(Ref ref) async {
  final notifications = await ref.watch(notificationsProvider.future);
  return notifications
      .where((n) => n.status == NotificationStatus.unread)
      .length;
}

// Filtered Notifications Provider
@riverpod
Future<List<NotificationEntity>> filteredNotifications(
  Ref ref,
  NotificationStatus? status,
) async {
  final allNotifications = await ref.watch(notificationsProvider.future);

  if (status == null) {
    return allNotifications;
  }

  return allNotifications.where((n) => n.status == status).toList();
}
