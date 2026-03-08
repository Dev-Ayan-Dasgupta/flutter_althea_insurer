import 'package:freezed_annotation/freezed_annotation.dart';

part 'audit_flag_entity.freezed.dart';

enum AuditFlagType {
  gpsDiscrepancy,
  bleHandshakeMissing,
  duplicateClaim,
  shortDuration,
  timeAnomaly,
  manualOverride,
}

enum AuditFlagSeverity { low, medium, high, critical }

@freezed
abstract class AuditFlagEntity with _$AuditFlagEntity {
  const factory AuditFlagEntity({
    required String id,
    required AuditFlagType type,
    required AuditFlagSeverity severity,
    required String description,
    required String reason,
    required DateTime detectedAt,
    required bool requiresInvestigation,
  }) = _AuditFlagEntity;
}
