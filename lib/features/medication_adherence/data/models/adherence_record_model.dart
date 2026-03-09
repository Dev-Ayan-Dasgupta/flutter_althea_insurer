import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/adherence_record_entity.dart';

part 'adherence_record_model.freezed.dart';
part 'adherence_record_model.g.dart';

@freezed
abstract class AdherenceRecordModel with _$AdherenceRecordModel {
  const AdherenceRecordModel._();

  const factory AdherenceRecordModel({
    required String id,
    required String medicationId,
    required String medicationName,
    required String patientId,
    required String patientName,
    required DateTime scheduledTime,
    DateTime? actualTime,
    required String status,
    String? reason,
    String? notes,
    bool? verifiedByCaregiver,
  }) = _AdherenceRecordModel;

  factory AdherenceRecordModel.fromJson(Map<String, dynamic> json) =>
      _$AdherenceRecordModelFromJson(json);

  AdherenceRecordEntity toEntity() {
    AdherenceStatus statusEnum;
    switch (status.toLowerCase()) {
      case 'taken':
        statusEnum = AdherenceStatus.taken;
        break;
      case 'missed':
        statusEnum = AdherenceStatus.missed;
        break;
      case 'delayed':
        statusEnum = AdherenceStatus.delayed;
        break;
      case 'skipped':
        statusEnum = AdherenceStatus.skipped;
        break;
      default:
        statusEnum = AdherenceStatus.taken;
    }

    return AdherenceRecordEntity(
      id: id,
      medicationId: medicationId,
      medicationName: medicationName,
      patientId: patientId,
      patientName: patientName,
      scheduledTime: scheduledTime,
      actualTime: actualTime,
      status: statusEnum,
      reason: reason,
      notes: notes,
      verifiedByCaregiver: verifiedByCaregiver,
    );
  }
}
