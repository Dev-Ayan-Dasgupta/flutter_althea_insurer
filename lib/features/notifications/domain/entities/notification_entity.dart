import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_entity.freezed.dart';

enum NotificationType {
  emergency,
  fraud,
  safety,
  medication,
  risk,
  system,
  claims,
  network,
}

enum NotificationStatus { unread, read, archived }

@freezed
abstract class NotificationEntity with _$NotificationEntity {
  const factory NotificationEntity({
    required String id,
    required NotificationType type,
    required String title,
    required String body,
    required DateTime timestamp,
    required NotificationStatus status,
    String? actionUrl,
    String? imageUrl,
    Map<String, dynamic>? data,
  }) = _NotificationEntity;
}
