import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_alert_entity.freezed.dart';

enum AlertCategory {
  emergency,
  safety,
  fraud,
  medication,
  riskEscalation,
  systemAlert,
}

enum AlertPriority { low, medium, high, critical, emergency }

enum AlertStatus { active, acknowledged, inProgress, resolved, dismissed }

@freezed
abstract class LiveAlertEntity with _$LiveAlertEntity {
  const factory LiveAlertEntity({
    required String id,
    required AlertCategory category,
    required AlertPriority priority,
    required AlertStatus status,
    required String title,
    required String description,
    required String source,
    required DateTime triggeredAt,
    DateTime? acknowledgedAt,
    DateTime? resolvedAt,
    String? patientId,
    String? patientName,
    String? providerId,
    String? providerName,
    String? location,
    required List<String> tags,
    required Map<String, dynamic> metadata,
    String? assignedTo,
    String? actionTaken,
    int? escalationLevel,
    bool? requiresImmediateAction,
  }) = _LiveAlertEntity;
}
