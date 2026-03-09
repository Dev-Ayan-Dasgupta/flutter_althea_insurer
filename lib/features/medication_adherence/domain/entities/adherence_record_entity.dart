import 'package:freezed_annotation/freezed_annotation.dart';

part 'adherence_record_entity.freezed.dart';

enum AdherenceStatus { taken, missed, delayed, skipped }

@freezed
abstract class AdherenceRecordEntity with _$AdherenceRecordEntity {
  const factory AdherenceRecordEntity({
    required String id,
    required String medicationId,
    required String medicationName,
    required String patientId,
    required String patientName,
    required DateTime scheduledTime,
    DateTime? actualTime,
    required AdherenceStatus status,
    String? reason,
    String? notes,
    bool? verifiedByCaregiver,
  }) = _AdherenceRecordEntity;
}
