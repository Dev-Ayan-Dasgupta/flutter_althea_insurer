import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/intervention_entity.dart';

part 'intervention_model.freezed.dart';
part 'intervention_model.g.dart';

@freezed
abstract class InterventionModel with _$InterventionModel {
  const InterventionModel._();

  const factory InterventionModel({
    required String id,
    required String title,
    required String description,
    required String type,
    required String priority,
    required double expectedImpact,
    required int estimatedCost,
    required String timeframe,
    required bool isImplemented,
  }) = _InterventionModel;

  factory InterventionModel.fromJson(Map<String, dynamic> json) =>
      _$InterventionModelFromJson(json);

  InterventionEntity toEntity() {
    InterventionType typeEnum;
    switch (type.toLowerCase()) {
      case 'medication':
        typeEnum = InterventionType.medication;
        break;
      case 'lifestyle':
        typeEnum = InterventionType.lifestyle;
        break;
      case 'monitoring':
        typeEnum = InterventionType.monitoring;
        break;
      case 'referral':
        typeEnum = InterventionType.referral;
        break;
      default:
        typeEnum = InterventionType.monitoring;
    }

    InterventionPriority priorityEnum;
    switch (priority.toLowerCase()) {
      case 'critical':
        priorityEnum = InterventionPriority.critical;
        break;
      case 'high':
        priorityEnum = InterventionPriority.high;
        break;
      case 'medium':
        priorityEnum = InterventionPriority.medium;
        break;
      case 'low':
        priorityEnum = InterventionPriority.low;
        break;
      default:
        priorityEnum = InterventionPriority.medium;
    }

    return InterventionEntity(
      id: id,
      title: title,
      description: description,
      type: typeEnum,
      priority: priorityEnum,
      expectedImpact: expectedImpact,
      estimatedCost: estimatedCost,
      timeframe: timeframe,
      isImplemented: isImplemented,
    );
  }
}
