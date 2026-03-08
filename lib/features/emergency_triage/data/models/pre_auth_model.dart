import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/pre_auth_entity.dart';

part 'pre_auth_model.freezed.dart';
part 'pre_auth_model.g.dart';

@freezed
abstract class PreAuthModel with _$PreAuthModel {
  const PreAuthModel._();

  const factory PreAuthModel({
    required String id,
    required String emergencyCaseId,
    required String status,
    required double approvedAmount,
    required String approvedBy,
    required DateTime approvedAt,
    String? rejectionReason,
    String? notes,
  }) = _PreAuthModel;

  factory PreAuthModel.fromJson(Map<String, dynamic> json) =>
      _$PreAuthModelFromJson(json);

  PreAuthEntity toEntity() {
    PreAuthStatus statusEnum;
    switch (status.toLowerCase()) {
      case 'approved':
        statusEnum = PreAuthStatus.approved;
        break;
      case 'rejected':
        statusEnum = PreAuthStatus.rejected;
        break;
      case 'more_info_required':
        statusEnum = PreAuthStatus.moreInfoRequired;
        break;
      default:
        statusEnum = PreAuthStatus.pending;
    }

    return PreAuthEntity(
      id: id,
      emergencyCaseId: emergencyCaseId,
      status: statusEnum,
      approvedAmount: approvedAmount,
      approvedBy: approvedBy,
      approvedAt: approvedAt,
      rejectionReason: rejectionReason,
      notes: notes,
    );
  }
}
