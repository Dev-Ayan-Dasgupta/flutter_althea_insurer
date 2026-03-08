import 'package:freezed_annotation/freezed_annotation.dart';

part 'intervention_entity.freezed.dart';

enum InterventionType { medication, lifestyle, monitoring, referral }

enum InterventionPriority { critical, high, medium, low }

@freezed
abstract class InterventionEntity with _$InterventionEntity {
  const factory InterventionEntity({
    required String id,
    required String title,
    required String description,
    required InterventionType type,
    required InterventionPriority priority,
    required double expectedImpact,
    required int estimatedCost,
    required String timeframe,
    required bool isImplemented,
  }) = _InterventionEntity;
}
