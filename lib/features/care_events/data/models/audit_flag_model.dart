import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/audit_flag_entity.dart';

part 'audit_flag_model.freezed.dart';
part 'audit_flag_model.g.dart';

@freezed
abstract class AuditFlagModel with _$AuditFlagModel {
  const AuditFlagModel._();

  const factory AuditFlagModel({
    required String id,
    required String type,
    required String severity,
    required String description,
    required String reason,
    required DateTime detectedAt,
    required bool requiresInvestigation,
  }) = _AuditFlagModel;

  factory AuditFlagModel.fromJson(Map<String, dynamic> json) =>
      _$AuditFlagModelFromJson(json);

  AuditFlagEntity toEntity() {
    AuditFlagType typeEnum;
    switch (type.toLowerCase()) {
      case 'gps_discrepancy':
        typeEnum = AuditFlagType.gpsDiscrepancy;
        break;
      case 'ble_handshake_missing':
        typeEnum = AuditFlagType.bleHandshakeMissing;
        break;
      case 'duplicate_claim':
        typeEnum = AuditFlagType.duplicateClaim;
        break;
      case 'short_duration':
        typeEnum = AuditFlagType.shortDuration;
        break;
      case 'time_anomaly':
        typeEnum = AuditFlagType.timeAnomaly;
        break;
      case 'manual_override':
        typeEnum = AuditFlagType.manualOverride;
        break;
      default:
        typeEnum = AuditFlagType.gpsDiscrepancy;
    }

    AuditFlagSeverity severityEnum;
    switch (severity.toLowerCase()) {
      case 'low':
        severityEnum = AuditFlagSeverity.low;
        break;
      case 'medium':
        severityEnum = AuditFlagSeverity.medium;
        break;
      case 'high':
        severityEnum = AuditFlagSeverity.high;
        break;
      case 'critical':
        severityEnum = AuditFlagSeverity.critical;
        break;
      default:
        severityEnum = AuditFlagSeverity.medium;
    }

    return AuditFlagEntity(
      id: id,
      type: typeEnum,
      severity: severityEnum,
      description: description,
      reason: reason,
      detectedAt: detectedAt,
      requiresInvestigation: requiresInvestigation,
    );
  }
}
