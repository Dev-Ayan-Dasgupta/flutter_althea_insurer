import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/verification_status_entity.dart';

part 'verification_status_model.freezed.dart';
part 'verification_status_model.g.dart';

@freezed
abstract class VerificationStatusModel with _$VerificationStatusModel {
  const VerificationStatusModel._();

  const factory VerificationStatusModel({
    required String status,
    required bool bleVerified,
    required bool gpsVerified,
    required bool timestampVerified,
    String? flagReason,
  }) = _VerificationStatusModel;

  factory VerificationStatusModel.fromJson(Map<String, dynamic> json) =>
      _$VerificationStatusModelFromJson(json);

  VerificationStatusEntity toEntity() {
    VerificationStatusType statusType;
    switch (status.toLowerCase()) {
      case 'verified':
        statusType = VerificationStatusType.verified;
        break;
      case 'partial':
        statusType = VerificationStatusType.partial;
        break;
      case 'flagged':
        statusType = VerificationStatusType.flagged;
        break;
      case 'pending':
        statusType = VerificationStatusType.pending;
        break;
      default:
        statusType = VerificationStatusType.pending;
    }

    return VerificationStatusEntity(
      status: statusType,
      bleVerified: bleVerified,
      gpsVerified: gpsVerified,
      timestampVerified: timestampVerified,
      flagReason: flagReason,
    );
  }
}
