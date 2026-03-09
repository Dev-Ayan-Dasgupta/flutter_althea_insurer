import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_action_entity.freezed.dart';

enum ActionType {
  acknowledge,
  assign,
  escalate,
  resolve,
  dismiss,
  contact,
  dispatch,
}

@freezed
abstract class AlertActionEntity with _$AlertActionEntity {
  const factory AlertActionEntity({
    required String id,
    required String alertId,
    required ActionType actionType,
    required String actionName,
    required DateTime performedAt,
    required String performedBy,
    String? notes,
    Map<String, dynamic>? actionData,
  }) = _AlertActionEntity;
}
