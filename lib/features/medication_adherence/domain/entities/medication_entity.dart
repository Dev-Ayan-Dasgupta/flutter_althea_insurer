import 'package:freezed_annotation/freezed_annotation.dart';

part 'medication_entity.freezed.dart';

enum MedicationType { tablet, capsule, syrup, injection, inhaler, drops }

enum Frequency {
  onceDaily,
  twiceDaily,
  threeTimesDaily,
  fourTimesDaily,
  asNeeded,
  weekly,
}

@freezed
abstract class MedicationEntity with _$MedicationEntity {
  const factory MedicationEntity({
    required String id,
    required String name,
    required String genericName,
    required MedicationType type,
    required String dosage,
    required Frequency frequency,
    required List<String> timings,
    required DateTime startDate,
    DateTime? endDate,
    required bool isActive,
    required String prescribedBy,
    required String purpose,
    String? sideEffects,
    String? instructions,
  }) = _MedicationEntity;
}
