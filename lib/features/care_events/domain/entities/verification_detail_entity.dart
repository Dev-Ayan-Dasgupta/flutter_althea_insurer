import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_detail_entity.freezed.dart';

@freezed
abstract class VerificationDetailEntity with _$VerificationDetailEntity {
  const factory VerificationDetailEntity({
    required bool bleVerified,
    required bool gpsVerified,
    required bool timestampVerified,
    String? bleDeviceId,
    double? gpsLatitude,
    double? gpsLongitude,
    double? gpsAccuracy,
    DateTime? actualStartTime,
    DateTime? actualEndTime,
    int? actualDuration,
    int? expectedDuration,
    bool? manualOverride,
    String? overrideReason,
    String? overrideBy,
  }) = _VerificationDetailEntity;
}
