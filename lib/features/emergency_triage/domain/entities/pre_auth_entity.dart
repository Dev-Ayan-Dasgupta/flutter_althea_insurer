import 'package:freezed_annotation/freezed_annotation.dart';

part 'pre_auth_entity.freezed.dart';

enum PreAuthStatus { pending, approved, rejected, moreInfoRequired }

@freezed
abstract class PreAuthEntity with _$PreAuthEntity {
  const factory PreAuthEntity({
    required String id,
    required String emergencyCaseId,
    required PreAuthStatus status,
    required double approvedAmount,
    required String approvedBy,
    required DateTime approvedAt,
    String? rejectionReason,
    String? notes,
  }) = _PreAuthEntity;
}
