import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/live_alert_entity.dart';

part 'live_alert_model.freezed.dart';
part 'live_alert_model.g.dart';

@freezed
abstract class LiveAlertModel with _$LiveAlertModel {
  const LiveAlertModel._();

  const factory LiveAlertModel({
    required String id,
    required String category,
    required String priority,
    required String status,
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
  }) = _LiveAlertModel;

  factory LiveAlertModel.fromJson(Map<String, dynamic> json) =>
      _$LiveAlertModelFromJson(json);

  LiveAlertEntity toEntity() {
    AlertCategory categoryEnum;
    switch (category.toLowerCase()) {
      case 'emergency':
        categoryEnum = AlertCategory.emergency;
        break;
      case 'safety':
        categoryEnum = AlertCategory.safety;
        break;
      case 'fraud':
        categoryEnum = AlertCategory.fraud;
        break;
      case 'medication':
        categoryEnum = AlertCategory.medication;
        break;
      case 'risk_escalation':
        categoryEnum = AlertCategory.riskEscalation;
        break;
      case 'system_alert':
        categoryEnum = AlertCategory.systemAlert;
        break;
      default:
        categoryEnum = AlertCategory.systemAlert;
    }

    AlertPriority priorityEnum;
    switch (priority.toLowerCase()) {
      case 'low':
        priorityEnum = AlertPriority.low;
        break;
      case 'medium':
        priorityEnum = AlertPriority.medium;
        break;
      case 'high':
        priorityEnum = AlertPriority.high;
        break;
      case 'critical':
        priorityEnum = AlertPriority.critical;
        break;
      case 'emergency':
        priorityEnum = AlertPriority.emergency;
        break;
      default:
        priorityEnum = AlertPriority.medium;
    }

    AlertStatus statusEnum;
    switch (status.toLowerCase()) {
      case 'active':
        statusEnum = AlertStatus.active;
        break;
      case 'acknowledged':
        statusEnum = AlertStatus.acknowledged;
        break;
      case 'in_progress':
        statusEnum = AlertStatus.inProgress;
        break;
      case 'resolved':
        statusEnum = AlertStatus.resolved;
        break;
      case 'dismissed':
        statusEnum = AlertStatus.dismissed;
        break;
      default:
        statusEnum = AlertStatus.active;
    }

    return LiveAlertEntity(
      id: id,
      category: categoryEnum,
      priority: priorityEnum,
      status: statusEnum,
      title: title,
      description: description,
      source: source,
      triggeredAt: triggeredAt,
      acknowledgedAt: acknowledgedAt,
      resolvedAt: resolvedAt,
      patientId: patientId,
      patientName: patientName,
      providerId: providerId,
      providerName: providerName,
      location: location,
      tags: tags,
      metadata: metadata,
      assignedTo: assignedTo,
      actionTaken: actionTaken,
      escalationLevel: escalationLevel,
      requiresImmediateAction: requiresImmediateAction,
    );
  }
}
