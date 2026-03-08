import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/verification_detail_entity.dart';

part 'verification_detail_model.freezed.dart';
part 'verification_detail_model.g.dart';

@freezed
abstract class VerificationDetailModel with _$VerificationDetailModel {
  const VerificationDetailModel._();

  const factory VerificationDetailModel({
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
  }) = _VerificationDetailModel;

  factory VerificationDetailModel.fromJson(Map<String, dynamic> json) =>
      _$VerificationDetailModelFromJson(json);

  VerificationDetailEntity toEntity() => VerificationDetailEntity(
    bleVerified: bleVerified,
    gpsVerified: gpsVerified,
    timestampVerified: timestampVerified,
    bleDeviceId: bleDeviceId,
    gpsLatitude: gpsLatitude,
    gpsLongitude: gpsLongitude,
    gpsAccuracy: gpsAccuracy,
    actualStartTime: actualStartTime,
    actualEndTime: actualEndTime,
    actualDuration: actualDuration,
    expectedDuration: expectedDuration,
    manualOverride: manualOverride,
    overrideReason: overrideReason,
    overrideBy: overrideBy,
  );
}
