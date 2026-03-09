import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/alert_action_entity.dart';

part 'alert_action_model.freezed.dart';
part 'alert_action_model.g.dart';

@freezed
abstract class AlertActionModel with _$AlertActionModel {
  const AlertActionModel._();

  const factory AlertActionModel({
    required String id,
    required String alertId,
    required String actionType,
    required String actionName,
    required DateTime performedAt,
    required String performedBy,
    String? notes,
    Map<String, dynamic>? actionData,
  }) = _AlertActionModel;

  factory AlertActionModel.fromJson(Map<String, dynamic> json) =>
      _$AlertActionModelFromJson(json);

  AlertActionEntity toEntity() {
    ActionType typeEnum;
    switch (actionType.toLowerCase()) {
      case 'acknowledge':
        typeEnum = ActionType.acknowledge;
        break;
      case 'assign':
        typeEnum = ActionType.assign;
        break;
      case 'escalate':
        typeEnum = ActionType.escalate;
        break;
      case 'resolve':
        typeEnum = ActionType.resolve;
        break;
      case 'dismiss':
        typeEnum = ActionType.dismiss;
        break;
      case 'contact':
        typeEnum = ActionType.contact;
        break;
      case 'dispatch':
        typeEnum = ActionType.dispatch;
        break;
      default:
        typeEnum = ActionType.acknowledge;
    }

    return AlertActionEntity(
      id: id,
      alertId: alertId,
      actionType: typeEnum,
      actionName: actionName,
      performedAt: performedAt,
      performedBy: performedBy,
      notes: notes,
      actionData: actionData,
    );
  }
}
