import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/notification_entity.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
abstract class NotificationModel with _$NotificationModel {
  const NotificationModel._();

  const factory NotificationModel({
    required String id,
    required String type,
    required String title,
    required String body,
    required DateTime timestamp,
    required String status,
    String? actionUrl,
    String? imageUrl,
    Map<String, dynamic>? data,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  NotificationEntity toEntity() {
    NotificationType typeEnum;
    switch (type.toLowerCase()) {
      case 'emergency':
        typeEnum = NotificationType.emergency;
        break;
      case 'fraud':
        typeEnum = NotificationType.fraud;
        break;
      case 'safety':
        typeEnum = NotificationType.safety;
        break;
      case 'medication':
        typeEnum = NotificationType.medication;
        break;
      case 'risk':
        typeEnum = NotificationType.risk;
        break;
      case 'system':
        typeEnum = NotificationType.system;
        break;
      case 'claims':
        typeEnum = NotificationType.claims;
        break;
      case 'network':
        typeEnum = NotificationType.network;
        break;
      default:
        typeEnum = NotificationType.system;
    }

    NotificationStatus statusEnum;
    switch (status.toLowerCase()) {
      case 'unread':
        statusEnum = NotificationStatus.unread;
        break;
      case 'read':
        statusEnum = NotificationStatus.read;
        break;
      case 'archived':
        statusEnum = NotificationStatus.archived;
        break;
      default:
        statusEnum = NotificationStatus.unread;
    }

    return NotificationEntity(
      id: id,
      type: typeEnum,
      title: title,
      body: body,
      timestamp: timestamp,
      status: statusEnum,
      actionUrl: actionUrl,
      imageUrl: imageUrl,
      data: data,
    );
  }
}
