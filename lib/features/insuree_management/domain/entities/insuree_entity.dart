import 'package:freezed_annotation/freezed_annotation.dart';

part 'insuree_entity.freezed.dart';

enum InsureeStatus {
  active,
  expiringSoon,
  expired,
  pendingPayment,
  removed,
  deceased,
}

@freezed
abstract class InsureeEntity with _$InsureeEntity {
  const factory InsureeEntity({
    required String id,
    required String policyNumber,
    required String fullName,
    required String email,
    String? phoneNumber,
    required DateTime dateOfBirth,
    required int age,
    required String gender,
    required String address,
    required InsureeStatus status,
    required DateTime addedOn,
    required DateTime subscriptionStartDate,
    required DateTime subscriptionEndDate,
    required bool isAutoRenew,
    required double monthlyFee,
    String? medicalHistory,
    String? notes,
    DateTime? lastPaymentDate,
    DateTime? nextPaymentDue,
    int? daysUntilExpiry,
  }) = _InsureeEntity;
}
