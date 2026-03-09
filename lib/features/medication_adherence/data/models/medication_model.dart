import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/medication_entity.dart';

part 'medication_model.freezed.dart';
part 'medication_model.g.dart';

@freezed
abstract class MedicationModel with _$MedicationModel {
  const MedicationModel._();

  const factory MedicationModel({
    required String id,
    required String name,
    required String genericName,
    required String type,
    required String dosage,
    required String frequency,
    required List<String> timings,
    required DateTime startDate,
    DateTime? endDate,
    required bool isActive,
    required String prescribedBy,
    required String purpose,
    String? sideEffects,
    String? instructions,
  }) = _MedicationModel;

  factory MedicationModel.fromJson(Map<String, dynamic> json) =>
      _$MedicationModelFromJson(json);

  MedicationEntity toEntity() {
    MedicationType typeEnum;
    switch (type.toLowerCase()) {
      case 'tablet':
        typeEnum = MedicationType.tablet;
        break;
      case 'capsule':
        typeEnum = MedicationType.capsule;
        break;
      case 'syrup':
        typeEnum = MedicationType.syrup;
        break;
      case 'injection':
        typeEnum = MedicationType.injection;
        break;
      case 'inhaler':
        typeEnum = MedicationType.inhaler;
        break;
      case 'drops':
        typeEnum = MedicationType.drops;
        break;
      default:
        typeEnum = MedicationType.tablet;
    }

    Frequency frequencyEnum;
    switch (frequency.toLowerCase()) {
      case 'once_daily':
        frequencyEnum = Frequency.onceDaily;
        break;
      case 'twice_daily':
        frequencyEnum = Frequency.twiceDaily;
        break;
      case 'three_times_daily':
        frequencyEnum = Frequency.threeTimesDaily;
        break;
      case 'four_times_daily':
        frequencyEnum = Frequency.fourTimesDaily;
        break;
      case 'as_needed':
        frequencyEnum = Frequency.asNeeded;
        break;
      case 'weekly':
        frequencyEnum = Frequency.weekly;
        break;
      default:
        frequencyEnum = Frequency.onceDaily;
    }

    return MedicationEntity(
      id: id,
      name: name,
      genericName: genericName,
      type: typeEnum,
      dosage: dosage,
      frequency: frequencyEnum,
      timings: timings,
      startDate: startDate,
      endDate: endDate,
      isActive: isActive,
      prescribedBy: prescribedBy,
      purpose: purpose,
      sideEffects: sideEffects,
      instructions: instructions,
    );
  }
}
