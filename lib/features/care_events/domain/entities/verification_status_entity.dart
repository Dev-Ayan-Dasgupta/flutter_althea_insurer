import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_status_entity.freezed.dart';

enum VerificationStatusType { verified, partial, flagged, pending }

@freezed
abstract class VerificationStatusEntity with _$VerificationStatusEntity {
  const factory VerificationStatusEntity({
    required VerificationStatusType status,
    required bool bleVerified,
    required bool gpsVerified,
    required bool timestampVerified,
    String? flagReason,
  }) = _VerificationStatusEntity;
}
